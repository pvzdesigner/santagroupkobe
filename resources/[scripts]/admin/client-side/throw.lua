function GetClosestVehicleToPlayer()
    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)
    local vehicles = GetGamePool('CVehicle')
    local closestDistance = -1

    for _, vehicle in ipairs(vehicles) do
        local vehiclePos = GetEntityCoords(vehicle)
        local distance = #(playerPos - vehiclePos)

        if closestDistance == -1 or distance < closestDistance then
            closestVehicle = vehicle
            closestDistance = distance
        end
    end

    return closestVehicle, closestDistance
end

function getClosestNPCToPlayer()
    local playerPed = PlayerPedId()
    local playerPos = GetEntityCoords(playerPed)
    local peds = GetGamePool('CPed')
    local closestDistance = -1

    for _, ped in ipairs(peds) do
        if ped ~= playerPed and not IsPedAPlayer(ped) then
            local pedPos = GetEntityCoords(ped)
            local distance = #(playerPos - pedPos)

            if closestDistance == -1 or distance < closestDistance then
                closestPed = ped
                closestDistance = distance
            end
        end
    end

    return closestPed, closestDistance
end

function Draw3DText(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local camCoords = GetGameplayCamCoords()
    local dist = #(camCoords - vector3(x, y, z))

    local scale = (1 / dist) * 2
    local fov = (1 / GetGameplayCamFov()) * 100
    scale = scale * fov

    if onScreen then
        SetTextScale(0.0 * scale, 0.55 * scale)
        SetTextFont(0)
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextDropshadow(0, 0, 0, 0, 255)
        SetTextEdge(2, 0, 0, 0, 150)
        SetTextDropShadow()
        SetTextOutline()
        SetTextEntry("STRING")
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

function RotToDirection(rotation)
    local radZ = math.rad(rotation.z)
    local radX = math.rad(rotation.x)
    local cosX = math.cos(radX)
    local cosZ = math.cos(radZ)
    local sinZ = math.sin(radZ)
    local sinX = math.sin(radX)

    local direction = vector3(
        -sinZ * cosX,
        cosZ * cosX,
        sinX
    )

    return direction
end
-----------------------------------------------------------------------------------
---
-----------------------------------------------------------------------------------
Config = {
    throwForce = 400000 -- default = 500000
}
local sleep = 1000
local handsUp = false
local vehicleAttached = false
local closestVehicle = nil
local npcAttached = false
local closestPed = nil

local activated = false
RegisterNetEvent("admin:Superman")
AddEventHandler("admin:Superman",function()
    local playerPed = PlayerPedId()
    activated = not activated
    print(activated)
    if activated then
        CreateThread(function()
            while activated do
                Wait(sleep)
                local playerPed = PlayerPedId()
                closestVehicle, vehicleDistance = GetClosestVehicleToPlayer()
                closestPed, pedDistance = getClosestNPCToPlayer()
        
        
                if closestVehicle and vehicleDistance < 5.0 then
                    if not vehicleAttached then
                        sleep = 1
                        -- Get the position of the vehicle and draw text on it
                        local vehiclePos = GetEntityCoords(closestVehicle)
                        Draw3DText(vehiclePos.x, vehiclePos.y, vehiclePos.z + 1.0, "[E] SEGURAR")
                    elseif vehicleAttached then
                        sleep = 1
                        -- Get the position of the vehicle and draw text on it
                        local vehiclePos = GetEntityCoords(closestVehicle)
                        Draw3DText(vehiclePos.x, vehiclePos.y, vehiclePos.z + 1.0, "[E] JOGAR CARRO")
                    else
                        sleep = 1000
                    end
                end

                if LocalPlayer["state"]["Special2"] and LocalPlayer["state"]["Route"] ~= 50 then
                    activated = false
                    break
                end
        
                -- Check if the player presses the "E" key
                if IsControlJustReleased(0, 38) then -- 38 is the control code for "E"
                    if not vehicleAttached and closestVehicle and vehicleDistance < 5.0 then
                        -- Attach the vehicle to the player's hands
                        local playerCoords = GetEntityCoords(playerPed)
                        local offset = vector3(1.2, 0.0, 0.0) -- Adjust this to change the vehicle's position relative to the player's hands
                        TriggerServerEvent("admin:requestControl", VehToNet(closestVehicle))
                        NetworkRequestControlOfEntity(closestVehicle)
                        SetEntityAsMissionEntity(closestVehicle, true, true)
                        -- Attach the vehicle to the player's hand
                        NetworkAllowRemoteAttachmentModification(playerPed, true)
                        NetworkAllowRemoteAttachmentModification(closestVehicle, true)
                        -- Attach the vehicle to the player's hand
                        AttachEntityToEntity(
                            closestVehicle,
                            playerPed,
                            GetPedBoneIndex(playerPed, 57005), -- 57005 is the bone index for the right hand
                            offset.x, offset.y, offset.z,
                            0.0, 0.0, 0.0,
                            false, false, false, false, 2, true
                        )
        
                        -- Raise the player's hand (animation)
                        if not HasAnimDictLoaded('missminuteman_1ig_2') then
                            RequestAnimDict('missminuteman_1ig_2')
                            while not HasAnimDictLoaded('missminuteman_1ig_2') do
                                Wait(10)
                            end
                        end
                        
                        TaskPlayAnim(playerPed, 'missminuteman_1ig_2', 'handsup_base', 8.0, 8.0, -1, 50, 0, false, false, false)
        
                        vehicleAttached = true
                    elseif vehicleAttached then
                        -- Detach the vehicle and throw it in the direction the player's camera is facing
                        local playerPed = PlayerPedId()
                        local playerCoords = GetEntityCoords(playerPed)
                        local camRot = GetGameplayCamRot(2)
                        local forwardVector = RotToDirection(camRot)
        
                        SetEntityNoCollisionEntity(closestVehicle, playerPed, false)
        
                        -- Detach the vehicle
                        DetachEntity(closestVehicle, true, true)
        
                        -- Apply force to the vehicle
                        local forceVector = forwardVector * Config.throwForce
                        ApplyForceToEntity(
                            closestVehicle,
                            1, -- Force type (1 is high force)
                            forceVector.x,
                            forceVector.y,
                            forceVector.z
                        )
        
                        vehicleAttached = false
                        ClearPedTasks(playerPed)
                    elseif not npcAttached and closestPed and pedDistance < 5.0 and not IsPedInAnyVehicle(closestPed, false)then
                        -- Attach the vehicle to the player's hands
                        local playerCoords = GetEntityCoords(playerPed)
                        local offset = vector3(0.5, 0.0, 0.0) -- Adjust this to change the vehicle's position relative to the player's hands
        
                        -- Attach the vehicle to the player's hand
                        AttachEntityToEntity(
                            closestPed,
                            playerPed,
                            GetPedBoneIndex(playerPed, 57005), -- 57005 is the bone index for the right hand
                            offset.x, offset.y, offset.z,
                            0.0, 0.0, 0.0,
                            false, false, false, false, 2, true
                        )
        
                        -- Raise the player's hand (animation)
                        if not HasAnimDictLoaded('missminuteman_1ig_2') then
                            RequestAnimDict('missminuteman_1ig_2')
                            while not HasAnimDictLoaded('missminuteman_1ig_2') do
                                Wait(10)
                            end
                        end
                        
                        TaskPlayAnim(playerPed, 'missminuteman_1ig_2', 'handsup_base', 8.0, 8.0, -1, 50, 0, false, false, false)
        
                        npcAttached = true
                    elseif npcAttached then
                        -- Detach the vehicle and throw it in the direction the player's camera is facing
                        local playerPed = PlayerPedId()
                        local playerCoords = GetEntityCoords(playerPed)
                        local camRot = GetGameplayCamRot(2)
                        local forwardVector = RotToDirection(camRot)
        
                        SetEntityNoCollisionEntity(closestPed, playerPed, false)
        
                        -- Detach the vehicle
                        DetachEntity(closestPed, true, true)
                        -- Apply force to the vehicle
                        local forceVector = forwardVector * Config.throwForce
                        ApplyForceToEntity(
                            closestPed,
                            1, -- Force type (1 is high force)
                            forceVector.x,
                            forceVector.y,
                            forceVector.z
                        )
                        npcAttached = false
                        ClearPedTasks(playerPed)
                        Wait(10)
                        SetPedToRagdoll(closestPed, 1000, 1000, 0, true, false, false)
                    end
                end
            end
        end)
    end
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    if closestVehicle then
        DetachEntity(closestVehicle, true, true)
    end
end)