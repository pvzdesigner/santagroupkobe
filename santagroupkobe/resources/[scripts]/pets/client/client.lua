
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("pets")

local dog = nil

local cam
local pets = {}
loadingAttemps = false
local showInfo = true
local isOpen = false
local nearbyPed = nil
local bowlObj
local petMoving, stay, feeding, ballThrown, chasing, searching = false, false, false, false, false, false
local petSpeed = 8.0
local followThePlayer  = false
local ropeFollowThePlayer = false
local openBoughtMenu = false
local ballGame = false
local firstDisable = true
tempRope = nil
local follow = false
blip = nil
local alreadyHunting = {
    state = false
}
local shopId = 0
cacheData = {}
objects = {}

-- if PET.ManualMode then
    RegisterCommand("mypets", function()
        Wait(100)
        TriggerCallback('pets:server:myPets', function (mypets)
            if mypets then
                SendNUIMessage({
                    action = "MY_PETS",
                    petlist = mypets
                })
                -- TriggerServerEvent('pets:client:startingSpawner',GetEntityCoords(PlayerPedId()))

                SetNuiFocus(true, true)
            else
                TriggerEvent('pets:client:sendNotify', Locales.NoAnimal)
            end
        end)
    end)
-- end

RegisterNUICallback("spawnPet",function(data,cb)
    SetNuiFocus(false,false)
    TriggerServerEvent('pets:client:startingSpawner',GetEntityCoords(PlayerPedId()),data)
end)

throwingBall = false
Citizen.CreateThread(function()
    while true do
        if ballGame then
            if ballThrown then
                if pet == nil then
                    pet = NetworkGetEntityFromNetworkId(nearbyPed)
                end
                local speed = GetEntitySpeed(pet)
                local dst3 = #(GetEntityCoords(pet) - GetEntityCoords(ballObj))
                local petToPlayer = #(GetEntityCoords(pet) - GetEntityCoords(PlayerPedId())) 
                if speed <= 0 then
                    throwingBall = true
                    TaskGoToEntity(pet, ballObj, -1, 2.0, petSpeed, 1073741824.0, 0)
                    stay = false
                    feeding = false
                    if dst3 < 2 then 
                        DeleteEntity(ballObj)
                        ballThrown = false
                        petMoving = false
                        chasing = false
                        returnBall = true
                        TaskGoToEntity(pet, ballObj, -1, 2.0, petSpeed, 1073741824.0, 0)        
                    end
                end
            end

            -- andar
            local dst = #(GetEntityCoords(pet) - GetEntityCoords(PlayerPedId()))
            if throwingBall  and dst > 5 and not petMoving and not stay and not feeding and not chasing and not attacking and
                not searching then
                petMoving = true
                TaskGoToEntity(pet, PlayerPedId(), -1, 1.0, petSpeed, 1073741824.0, 0)
            elseif throwingBall  and dst < 5  then
                petMoving = false
                if returnBall then
                    TriggerServerEvent('pets:server:returnBall')
                    returnBall = false
                    ballGame = false
                    throwingBall = false
                end
            end
        end
        Wait(0)
    end
end)


close = function()
    headerShown = false
    sendData = nil
    SetNuiFocus(false)
    setCamera(false, nil)
    FreezeEntityPosition(PlayerPedId(), false)
    SetEntityVisible(PlayerPedId(), true)
    isOpen = false
    deletePed()
    if dog ~= nil then
        DeleteEntity(dog)
        DeletePed(dog)
        dog = nil
    end
end

GetCurrentEntityCoords = function (entity)
    local eID = NetworkGetEntityFromNetworkId(entity)
    local entityCoord = GetEntityCoords(eID)
    local min, max = GetModelDimensions(GetEntityModel(eID))
    local height = (max.y - min.y) / 2
    local onScreen, coordX, coordY = GetHudScreenPositionFromWorldPosition(entityCoord.x, entityCoord.y + height, entityCoord.z)
    return onScreen, coordX, coordY
end


loadAnimDict = function(dict)
	while (not HasAnimDictLoaded(dict)) do
		RequestAnimDict(dict)
		Citizen.Wait(5)
	end
end

SetAnim = function(animName, animID, targetPed)
    loadAnimDict(animName)
    TaskPlayAnim(targetPed, animName, animID, 3.0, 1.0, -1, 01, 0, 0, 0, 0 )
end


playSound = function(soundType)
    SendNUIMessage({
        action = "PLAYSOUND",
        type = soundType
    })
end

createBlip = function(data)
    local blip = nil
    if data.entity ~= nil then
        blip = AddBlipForEntity(data.entity)
    end
    if data.shortRange ~= nil and data.shortRange == true then
        SetBlipAsShortRange(blip, true)
    elseif data.shortRange == false then
        SetBlipAsShortRange(blip, false)
    end

    SetBlipSprite(blip, data.sprite)
    SetBlipColour(blip, data.colour)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(data.text)
    EndTextCommandSetBlipName(blip)
    return blip
end

-- **  NUI Callbacks
RegisterNUICallback('closeMenu', function()
    headerShown = false
    sendData = nil
    SetNuiFocus(false)
    setCamera(false, nil)
    FreezeEntityPosition(PlayerPedId(), false)
    isOpen = false
    deletePed()
    if dog ~= nil then
        DeleteEntity(dog)
        DeletePed(dog)
        dog = nil
    end
end)

RegisterNUICallback('nuiClose',function(data,cb)
    SetNuiFocus(false,false)
end)

RegisterNUICallback('close',function(data,cb)
    SetNuiFocus(false,false)
end)

RegisterNUICallback('takeInPet', function(data, cb)
    local mynetID in data
    local pool = GetGamePool('CPed')

    for k,v in pairs(pool) do
        if (Entity(v).state.pet and Entity(v).state.pet[3] == GetPlayerServerId(PlayerId())) and Entity(v).state.pet[8] == data.id then 
            TriggerServerEvent('pets:client:backPet', NetworkGetNetworkIdFromEntity(v))
            SetNuiFocus(false, false)
            return
        end
    end
end)


RegisterNetEvent('pets:client:backPet2', function(data)
    local Entity = data[1]
    TriggerServerEvent('pets:client:backPet', NetworkGetNetworkIdFromEntity(Entity))
end)

RegisterNetEvent('pets:client:changeName', function(data)
    local Entity = data[1]

    print(Entity)

    TriggerServerEvent('pets:changeName', NetworkGetNetworkIdFromEntity(Entity))
end)

RegisterNUICallback('disableControls',function (data,cb)
    firstDisable = not firstDisable
    if firstDisable then
        SetNuiFocus(true, true)
        LockKeyboard = true
    else
        SetNuiFocus(false, false)
        LockKeyboard = false
    end
end)

RegisterNetEvent('pets:client:setPet')
AddEventHandler('pets:client:setPet', function(NetId)
    local EntityID = NetworkGetEntityFromNetworkId(NetId)
    SetEntityInvincible(EntityID, true)
end)

RegisterNetEvent('pets:client:followOwner2', function(data)
    local Entity = data[1]
    local Ped = PlayerPedId()
    TriggerServerEvent("pet:setPetTask", NetworkGetNetworkIdFromEntity(Entity), Enums.Tasks.follow, NetworkGetNetworkIdFromEntity(Ped))
end)

RegisterNetEvent('pets:client:sit2', function(data)
    local Entity = data[1]
    TriggerServerEvent("pet:setPetTask", NetworkGetNetworkIdFromEntity(Entity), Enums.Tasks.sit, nil)
end)

RegisterNetEvent('pets:client:getup2', function(data)
    local Entity = data[1]
    TriggerServerEvent("pet:setPetTask", NetworkGetNetworkIdFromEntity(Entity), Enums.Tasks.getUp, nil)
end)

RegisterNetEvent('pets:client:sleep2', function(data)
    local Entity = data[1]
    
    print('SLEPDWAPNDWOPIADNWPIN')

    TriggerServerEvent("pet:setPetTask", NetworkGetNetworkIdFromEntity(Entity), Enums.Tasks.sleep, nil)
end)

RegisterNetEvent('pets:client:getIntoCar2', function(data)
    local Entity = data[1]
    local plyped = PlayerPedId()
    local player_coord = GetEntityCoords(plyped)
    local vehicle = GetClosestVehicle(player_coord.x, player_coord.y,player_coord.z, 5.000, 0, 70)
    TriggerServerEvent("pet:setPetTask", NetworkGetNetworkIdFromEntity(Entity), Enums.Tasks.enterCar, NetworkGetNetworkIdFromEntity(vehicle))
end)


RegisterNetEvent('pets:client:getOutCar2', function(data)
    local Entity = data[5]
    if not Entity then
        Entity = data[4]
    end
    local Ped = PlayerPedId()
    TriggerServerEvent("pet:setPetTask", NetworkGetNetworkIdFromEntity(Entity), Enums.Tasks.exitCar, NetworkGetNetworkIdFromEntity(Ped))
end)