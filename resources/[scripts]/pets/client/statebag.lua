Enums = {
    Tasks = {
        sit = 1,
        follow = 2,
        enterCar = 3,
        exitCar = 4,
        putAway = 5,
        getUp = 6,
        sleep = 7
    }
}

local function setAnimBasedOnModel(animName, animID, entity, isSmallDog)
    if isSmallDog then
        SetAnim("amb@lo_res_idles@", "creatures_world_pug_sitting_lo_res_base", entity)
    else
        SetAnim(animName, animID, entity)
    end
end

AddStateBagChangeHandler("pets_task", nil, function(bagName, key, value, reserved, replicated)
    if replicated or value == nil then 
        return
    end

    while not DoesEntityExist(GetEntityFromStateBagName(bagName)) do 
        Wait(1)
    end

    local entity = GetEntityFromStateBagName(bagName)


    local Data = value
    local Owner = parseInt(NetworkGetEntityOwner(entity))
    local playerId = parseInt(PlayerId())

    SetEntityCanBeDamaged(entity, false)
    SetPedCanBeTargetted(entity, false)
    SetPedCanBeDraggedOut(entity, false)
    SetPedCanBeTargettedByPlayer(entity, PlayerId(), false)
    SetPedCanRagdollFromPlayerImpact(entity, false)
    SetPedStayInVehicleWhenJacked(entity, true)

    if Owner ~= playerId then 
        return 
    end
    local PlayerPed = PlayerPedId()
    SetEntityInvincible(entity, true)
    SetEntityHealth(entity, 400)
    AddRelationshipGroup("PETS")
    SetPedRelationshipGroupHash(PlayerPed, `PLAYER`)
    SetPedRelationshipGroupHash(entity, `PETS`)
    SetRelationshipBetweenGroups(0,`PETS`,`PLAYER`)
    SetEntityCanBeDamagedByRelationshipGroup(PlayerPed,false,`PETS`)
    TaskSetBlockingOfNonTemporaryEvents(entity, true)

    local Task, SelectedEntity = Data[1], Data[2]

    local Model = GetEntityModel(entity)
    local isSmallDog = (Model == `a_c_westy_2` or Model == `a_c_poodle_2` or Model == `a_c_pug`)

    if SelectedEntity then
        SelectedEntity = NetworkGetEntityFromNetworkId(SelectedEntity)
    end

    local function setAnimBasedOnModel(animName, animID)
        if isSmallDog then
            SetAnim("amb@lo_res_idles@", "creatures_world_pug_sitting_lo_res_base", entity)
        else
            SetAnim(animName, animID, entity)
        end
    end

    if Task == Enums.Tasks.sit then
        ClearPedTasksImmediately(entity)
        setAnimBasedOnModel(PET.OrderAnim["Dogs"]["sit"].animName, PET.OrderAnim["Dogs"]["sit"].animID)
    elseif Task == Enums.Tasks.follow then
        ClearPedTasksImmediately(entity)
        local petState = Entity(entity).state.pet
        if not petState[6] then
            TriggerServerEvent("pets:setPetFollow", NetworkGetNetworkIdFromEntity(entity), true)
            Wait(100)
            TaskFollowToOffsetOfEntity(entity, SelectedEntity, 1.0, 1.0, 0.0, 8.0, -1, 1.0, true)
        else
            TriggerServerEvent("pets:setPetFollow", NetworkGetNetworkIdFromEntity(entity), false)
        end
    elseif Task == Enums.Tasks.enterCar then
        for i = 2, 5 do
            if IsVehicleSeatFree(SelectedEntity, i - 2) then
                SetPedIntoVehicle(entity, SelectedEntity, i - 2)
                setAnimBasedOnModel(PET.OrderAnim["Dogs"]["sit"].animName, PET.OrderAnim["Dogs"]["sit"].animID)
                break
            end
        end
    elseif Task == Enums.Tasks.exitCar then
        local Coords = GetEntityCoords(SelectedEntity)
        SetEntityCoords(entity, Coords.x, Coords.y, Coords.z - 1.0)
    elseif Task == Enums.Tasks.getUp then
        ClearPedTasksImmediately(entity)
        setAnimBasedOnModel(PET.OrderAnim["Dogs"]["getup"].animName, PET.OrderAnim["Dogs"]["getup"].animID)
        Wait(1200)
        ClearPedTasks(entity)
        ClearPedTasksImmediately(entity)
    elseif Task == Enums.Tasks.sleep then
        ClearPedTasksImmediately(entity)

        if (PET.overWriteAnimationsByModel[GetEntityArchetypeName(entity)] and PET.overWriteAnimationsByModel[GetEntityArchetypeName(entity)].sleep) then 
            local animName, animID in PET.overWriteAnimationsByModel[GetEntityArchetypeName(entity)].sleep

            SetAnim(animName, animID, entity)
            return
        end

        if isSmallDog then
            TriggerEvent('pets:client:sendNotify', Locales.notSuported)
            return
        end

        SetAnim(PET.OrderAnim["Dogs"]["sleep"].animName, PET.OrderAnim["Dogs"]["sleep"].animID, entity)
    end
end)

AddStateBagChangeHandler("pet", nil, function(bagName, key, value, reserved, replicated)
    if replicated or value == nil then 
        return
    end


    while not DoesEntityExist(GetEntityFromStateBagName(bagName)) do 
        Wait(1)
    end

    local entity = GetEntityFromStateBagName(bagName)

    local Data = value
    local Owner = parseInt(NetworkGetEntityOwner(entity))
    local playerId = parseInt(PlayerId())
    local playerSource = GetPlayerServerId(playerId)

    if parseInt(playerSource) ~= parseInt(Data[3]) then
        return
    end
        --                             table.insert(Menu, { event = "pets:client:getup2", label = _t("getup"), tunnel = "client" })
        --                             table.insert(Menu, { event = "pets:client:sit2", label = _t("sit"), tunnel = "client" })
        --                             table.insert(Menu, { event = "pets:client:sleep2", label = _t("sleep"), tunnel = "client" })
        --                             table.insert(Menu, { event = "pets:client:getIntoCar2", label = _t("enterCar"), tunnel = "client" })
        --                             table.insert(Menu, { event = "pets:client:followOwner2", label = _t("follow"), tunnel = "client" })
        --                             table.insert(Menu, { event = "pets:client:backPet2", label = _t("guard"), tunnel = "client" })
        --                             table.insert(Menu, { event = "pets:client:changeName", label = _t("changeName"), tunnel = "client" })
    local NetworkedEntityId = NetworkGetNetworkIdFromEntity(entity)
    interact.addEntity({
        id = "pet:"..NetworkedEntityId,
        netId = NetworkedEntityId,  -- Example network ID
        options = {
            {
                label = _t("getup"),
                icon = "paw",  -- Example simple FA icon name
                onSelect = function(data)
                    local petState = Entity(entity)["state"]["pet"]
                    if petState then
                        TriggerEvent("pets:client:getup2", { entity, petState[1] })
                    end
                end,
                canInteract = function(entity, distance, coords, id)
                    return true
                end
            },
            {
                label = _t("sit"),
                icon = "paw",  -- Example simple FA icon name
                onSelect = function(data)

                    local petState = Entity(entity)["state"]["pet"]
                    if petState then
                        TriggerEvent("pets:client:sit2", { entity, petState[1] })
                    end
                end,
                canInteract = function(entity, distance, coords, id)
                    return true
                end
            },
            {
                label = _t("sleep"),
                icon = "paw",  -- Example simple FA icon name
                onSelect = function(data)
                    local petState = Entity(entity)["state"]["pet"]
                    if petState then
                        TriggerEvent("pets:client:sleep2", { entity, petState[1] })
                    end
                end,
                canInteract = function(entity, distance, coords, id)
                    return true
                end
            },
            {
                label = _t("follow"),
                icon = "paw",  -- Example simple FA icon name
                onSelect = function(data)
                    TriggerEvent("pets:client:followOwner2", { entity })
                end,
                canInteract = function(entity, distance, coords, id)
                    return true
                end
            },
            {
                label = _t("guard"),
                icon = "paw",  -- Example simple FA icon name
                onSelect = function(data)
                    TriggerEvent("pets:client:backPet2", { entity })
                end,
                canInteract = function(entity, distance, coords, id)
                    return true
                end
            },
            {
                label = _t("changeName"),
                icon = "paw",  -- Example simple FA icon name
                onSelect = function(data)
                    TriggerEvent("pets:client:changeName", { entity })
                end,
                canInteract = function(entity, distance, coords, id)
                    return true
                end
            }
        },
        renderDistance = 10.0,
        activeDistance = 2.0,
        cooldown = 1500
    })
end)



-- table.insert(Menu, { event = "pets:client:getup2", label = _t("getup"), tunnel = "client" })
-- table.insert(Menu, { event = "pets:client:sit2", label = _t("sit"), tunnel = "client" })
-- table.insert(Menu, { event = "pets:client:sleep2", label = _t("sleep"), tunnel = "client" })
-- table.insert(Menu, { event = "pets:client:getIntoCar2", label = _t("enterCar"), tunnel = "client" })
-- table.insert(Menu, { event = "pets:client:followOwner2", label = _t("follow"), tunnel = "client" })
-- table.insert(Menu, { event = "pets:client:backPet2", label = _t("guard"), tunnel = "client" })
-- table.insert(Menu, { event = "pets:client:changeName", label = _t("changeName"), tunnel = "client" })