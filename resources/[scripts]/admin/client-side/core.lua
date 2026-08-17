-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
Tunnel = module("vrp","lib/Tunnel")
Proxy = module("vrp","lib/Proxy")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("admin",Creative)
vSERVER = Tunnel.getInterface("admin")
vRP = Proxy.getInterface("vRP")
cityName = GetConvar("cityName", "")
-----------------------------------------------------------------------------------------------------------------------------------------
-- INVISIBLABLES
-----------------------------------------------------------------------------------------------------------------------------------------
LocalPlayer["state"]:set("Spectate",false,true)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RECORDINGROCKSTAR
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.recordingRockstar()
    if IsRecording() then
        StopRecordingAndSaveClip()
    else
        StartRecording(1)
    end
end

function Creative.GetModelDimensions(models)
    local response = {}
    for i = 1, #models do
        local model = models[i]
        local min, max = GetModelDimensions(model) 
        local size_vec = max - min
        size = size_vec.x + size_vec.y + size_vec.z
        response[model] = size
    end
    return response
end

function Creative.GetCoords()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    return coords
end

---@param heading string
---@param rows string[] | InputDialogRowProps[]
---@param options InputDialogOptionsProps[]?
---@return string[] | number[] | boolean[] | nil
function Creative.inputDialog(heading, rows, options)
    local input = lib.inputDialog(heading, rows, options)
    return input
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SUPERPOWER
-----------------------------------------------------------------------------------------------------------------------------------------
local jump = false
function Creative.superPower()
    if not jump then
        jump = true
        TriggerEvent("Notify2","#jumpIn")
        while jump do
            SetSuperJumpThisFrame(PlayerId(),1000)
            Wait(0)
        end
    else
        jump = false
        TriggerEvent("Notify2","#jumpOut")
        SetSuperJumpThisFrame(PlayerId(),0)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- APAGAO
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
    Wait(15000)
    if GlobalState["Blackout"] and GlobalState["Blackout"] == 1 then
        SetArtificialLightsState(true)
    else
        SetArtificialLightsState(false)
    end
end)

RegisterNetEvent("SetBlackout")
AddEventHandler("SetBlackout", function(cond)
    -- print(cond)
    local status = false
    if cond == 1 then
        status = true
    end
    SetArtificialLightsState(status)
end)

RegisterNetEvent("SetFreeze")
AddEventHandler("SetFreeze", function()
    local Ped = PlayerPedId()
    if IsEntityPositionFrozen(Ped) then
        FreezeEntityPosition(Ped,false)
    else
        FreezeEntityPosition(Ped,true)
    end
end)
RegisterNetEvent("RemFreeze")
AddEventHandler("RemFreeze", function()
    local Ped = PlayerPedId()
    FreezeEntityPosition(Ped,false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------
local FIND_GROUND_POS_NUM_STEPS = 10

---@param pos vector3
---@return boolean, vector3
local function StartFindFarAwayGroundPos( pos )

    local heightmapTopZ = GetHeightmapTopZForPosition( pos.x, pos.y )
    local heightmapBottomZ = GetHeightmapBottomZForPosition( pos.x, pos.y )

    print( ('StartFindFarAwayGroundPos -> pos.x=%0.2f, pos.y=%0.2f, heightmapTopZ=%0.2f heightmapBottomZ=%0.2f'):format( pos.x, pos.y, heightmapTopZ, heightmapBottomZ ) )

    ---@type number | nil
    local foundGroundZ = nil

    local startedAt = GetGameTimer()

    local heightmapZPerStep = ( heightmapTopZ + heightmapBottomZ ) / FIND_GROUND_POS_NUM_STEPS

    while true do

        Wait( 0 )

        if GetGameTimer() - startedAt > 3000 then

            print( ('StartFindFarAwayGroundPos -> Timeout!'):format() )

            break
        end

        -- Every new frame we'll go to the next step
        local heightmapZStep = GetFrameCount() % FIND_GROUND_POS_NUM_STEPS

        local heightmapZ = heightmapBottomZ + ( heightmapZPerStep * heightmapZStep )

        RequestCollisionAtCoord( pos.x, pos.y, heightmapZ )

        local hasGround, groundZ = GetGroundZFor_3dCoord( pos.x, pos.y, heightmapZ )

        print( ('StartFindFarAwayGroundPos -> heightmapZ=%s, hasGround=%s, groundZ=%s'):format( heightmapZ, hasGround, groundZ ) )

        if hasGround then

            foundGroundZ = groundZ

            break
        end
    end

    local resultFoundGround     = foundGroundZ ~= nil
    local resultFoundGroundPos  = vector3( pos.x, pos.y, foundGroundZ or heightmapMiddleZ )

    print( ('StartFindFarAwayGroundPos -> resultFoundGround=%s, resultFoundGroundPos=%s'):format( resultFoundGround, json.encode( resultFoundGroundPos ) ) )

    return resultFoundGround, resultFoundGroundPos
end

function Creative.teleportWay()

    local waypointBlip = GetFirstBlipInfoId(8)
    local x,y,z = table.unpack(GetBlipInfoIdCoord(waypointBlip,Citizen.ResultAsVector()))

    local waypointPos = vector3( x, y, z )

    local foundGround, groundPos = StartFindFarAwayGroundPos( waypointPos )

    TriggerEvent( 'admin:Teleport', groundPos )

    if not foundGround then

        -- Case a gente não ache o chão, vamos tentar novamente após sermos teleportados
        CreateThread(
            function()

                -- CreateThread vai aguardar um tick e a gente aguarda mais um pouco para dar chance do ground ser carregado
                Wait( 100 )

                local foundGround, groundPos = StartFindFarAwayGroundPos( waypointPos )

                if foundGround then

                    TriggerEvent( 'admin:Teleport', groundPos )
                end
            end
        )
    end

    return groundPos
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORTWAY
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.teleportLimbo()
    local Ped = PlayerPedId()
    local Coords = GetEntityCoords(Ped)
    local _,xCoords = GetNthClosestVehicleNode(Coords["x"],Coords["y"],Coords["z"],1,0,0,0)

    SetEntityCoordsNoOffset(Ped,xCoords["x"],xCoords["y"],xCoords["z"] + 1,false,false,false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- VEHICLETUNING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:vehicleTuning")
AddEventHandler("admin:vehicleTuning",function()
    local Ped = PlayerPedId()
    if IsPedInAnyVehicle(Ped) then
        local vehicle = GetVehiclePedIsUsing(Ped)

        SetVehicleModKit(vehicle,0)
        SetVehicleMod(vehicle,11,GetNumVehicleMods(vehicle,11) - 1,false)
        SetVehicleMod(vehicle,12,GetNumVehicleMods(vehicle,12) - 1,false)
        SetVehicleMod(vehicle,13,GetNumVehicleMods(vehicle,13) - 1,false)
        SetVehicleMod(vehicle,15,GetNumVehicleMods(vehicle,15) - 1,false)
        ToggleVehicleMod(vehicle,18,true)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONCOORDS
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- 	while true do
-- 		if IsControlJustPressed(1,38) then
-- 			vSERVER.buttonTxt()
-- 		end
-- 		Wait(1)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONMAKERACE
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- 	while true do
-- 		if IsControlJustPressed(1,38) then
-- 			local Ped = PlayerPedId()
-- 			local vehicle = GetVehiclePedIsUsing(Ped)
-- 			local vehCoords = GetEntityCoords(vehicle)
-- 			local leftCoords = GetOffsetFromEntityInWorldCoords(vehicle,5.0,0.0,0.0)
-- 			local rightCoords = GetOffsetFromEntityInWorldCoords(vehicle,-5.0,0.0,0.0)

-- 			vSERVER.raceCoords(vehCoords,leftCoords,rightCoords)
-- 		end

-- 		Wait(1)
-- 	end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:INITSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
function GetAimRotation(player)
    local entity = GetPlayerPed(player)
    local success, target = GetEntityPlayerIsFreeAimingAt(PlayerId())

    if success and target == entity then
        -- Get the target entity's rotation
        local rotation = GetEntityRotation(target)

        -- Calculate the yaw, pitch, and roll angles from the rotation
        local yaw = rotation.z
        local pitch = rotation.x
        local roll = rotation.y

        -- Return the rotation angles
        return yaw, pitch, roll
    end

    -- If the player is not aiming at the entity, return nil
    return nil
end


RegisterNetEvent("admin:initSpectate")
AddEventHandler("admin:initSpectate",function(source)
    if not NetworkIsInSpectatorMode() then
        local Pid = GetPlayerFromServerId(source)
        local Ped = GetPlayerPed(Pid)

        LocalPlayer["state"]:set("Spectate",true,true)
        NetworkSetInSpectatorMode(true,Ped)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADMIN:RESETSPECTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:resetSpectate")
AddEventHandler("admin:resetSpectate",function()
    if NetworkIsInSpectatorMode() then
        NetworkSetInSpectatorMode(false)
        LocalPlayer["state"]:set("Spectate",false,true)
    end
end)

local CustomAudio = {
    ["Kingdom"] = "https://youtu.be/wu6zv1Ykj-Y",
}

AddStateBagChangeHandler("Quake",nil,function(Name,Key,Value)
    ShakeGameplayCam("SKY_DIVING_SHAKE",0.0)
    TriggerEvent("promotion_button:OpenAudio",CustomAudio[cityName] or "https://www.youtube.com/watch?v=EEpkUaAL8c8")
end)

local enable = false
local aPed =  false
local FF = false
function openWeaponWheel()
    if enable then
        aPed = not aPed
    end
end
RegisterCommand("+useless",openWeaponWheel)
RegisterCommand("-useless",openWeaponWheel)
RegisterKeyMapping("+useless","Useless","MOUSE_BUTTONANY","MOUSE_EXTRABTN5")
local Friends = {}
function Creative.spawnPeds(Spawn,Boolean)
    FF = Boolean or false
    enable = not enable
    local FOV = 60
    if Spawn then
        FOV = Spawn
    end
    print(FOV)
    local Ped = PlayerPedId()
    local Player = PlayerId()
    while true do
        if enable then
            local Distance = 425
            local Peds = GetGamePool('CPed')
            local Coords = GetEntityCoords(Ped)
            local ped
            local resX,resY = GetActiveScreenResolution()

            for i = 1, #Peds do
                if Ped ~= Peds[i] and IsEntityVisible(Peds[i]) then
                    if IsPedAPlayer(Peds[i]) and HasEntityClearLosToEntity(Ped,Peds[i],17) then
                        local Source = GetPlayerServerId((NetworkGetPlayerIndexFromPed(Peds[i])))
                        if Friends[tostring(Source)] then
                            goto Next
                        end
                        if GetEntityHealth(Peds[i]) > 100 and IsEntityOnScreen(Peds[i]) then
                            local PedCoords = GetEntityCoords(Peds[i])
                            local PedDistance = #(Coords - PedCoords)
                            local MinDistance = PedDistance <= 425
                            if MinDistance and PedDistance < Distance then
                                local boneCDS = GetPedBoneCoords(Peds[i], 31086)
                                local _, x, y = GetScreenCoordFromWorldCoord(boneCDS["x"],boneCDS["y"],boneCDS["z"])
                                if inFOV(x,y,resX,resY,FOV) then
                                    Distance = PedDistance
                                    ped = Peds[i]
                                end
                            end
                        end
                    end
                end
                ::Next::
            end
            
            if IsAimCamActive() and aPed then
                local c = GetPedBoneCoords(ped, 31086)
                local _, _x, _y = GetScreenCoordFromWorldCoord(c["x"],c["y"],c["z"])
                local selfpos, rot = GetFinalRenderedCamCoord(), GetEntityRotation(Ped, 2)
                local angleX, angleY, angleZ = (c - selfpos).x, (c - selfpos).y, (c - selfpos).z
                local roll, pitch, yaw = -math.deg(math.atan2(angleX, angleY)) - rot.z, math.deg(math.atan2(angleZ+0.08, #vector3(angleX, angleY, 0.0))), 1.0
                roll = 0.0+(roll-0.0)*(1.0)
                if inFOV(_x,_y,resX,resY,FOV) then
                    SetGameplayCamRelativeRotation(roll, pitch, yaw)
                end
            end
        else
            break
        end
        Wait(1)
    end
end

function inFOV(_x,_y,resX,resY,FOV)
    if (_x > 0.5 - ((FOV / 2)/resX) and _x < 0.5 + ((FOV / 2)/resX) and _y > 0.5 - ((FOV / 2)/resY) and _y < 0.5 + ((FOV / 2)/resY)) then
        return true
    end
    return false
end


CreateThread(function()
    RegisterFontFile('Poppins')
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SYNCAREA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("syncarea")
AddEventHandler("syncarea",function(x,y,z,distance)
    ClearAreaOfVehicles(x,y,z,distance + 0.0,false,false,false,false,false)
    ClearAreaOfEverything(x,y,z,distance + 0.0,false,false,false,false)
end)



RegisterNetEvent("admin:AddFriends")
AddEventHandler("admin:AddFriends",function(Table)
    Friends = Table
end)

local banMode = "ADV"
RegisterNetEvent("admin:OpenBanMenu")
AddEventHandler("admin:OpenBanMenu",function(mode,Passport)
    banMode = mode
    SendNUIMessage({
        action = "setMode",
        data = {
            title = banConfig[mode]["Heading"],
            info = banConfig[mode]["Info"],
            button = banConfig[mode]["Button"],
            passport = Passport
        }
    })
    Wait(100)
    SendNUIMessage({
        action = "setVisible",
        data = true
    })
    SetNuiFocus(true,true)
end)


RegisterNUICallback("UserBan",function(data,cb)
    local time = parseInt(data["time"])
    if data["time"] == "" then
        time = 1
    end
    local text = banConfig[banMode]["Info"][time]["name"]
    SendNUIMessage({
        action = "setVisible",
        data = false
    })
    SetNuiFocus(false,false)
    vSERVER.applyBan(parseInt(data["id"]),data["reason"],banConfig[banMode]["Info"][time]["value"],banMode,text)
end)


RegisterNUICallback('hideFrame', function(_, cb)
    SendNUIMessage({
        action = "setVisible",
        data = false
    })
    SetNuiFocus(false,false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SANGUE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand(_t("blood"),function(source,args)
    local ped = PlayerPedId()
    ClearPedBloodDamage(ped)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PISCAR GOD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:Piscar")
AddEventHandler("admin:Piscar",function()
    LocalPlayer["state"]["Invisible"] = true
    SetEntityVisible(PlayerPedId(),false,false)

    SetTimeout(1000,function()
        SetEntityVisible(PlayerPedId(),true,false)
        LocalPlayer["state"]["Invisible"] = false
    end)
end)

RegisterNetEvent("admin:Mute")
AddEventHandler("admin:Mute",function(Mute)
    local Ped = PlayerPedId()
    if Mute then
        exports['pma-voice']:overrideProximityCheck(function(player)
            return false
        end)
        Entity(Ped)["state"]:set("Muted",true,true)
    else
        exports['pma-voice']:resetProximityCheck()
        Entity(Ped)["state"]:set("Muted",false,true)
    end
end)
------------------------------------------------------------------------------------------------------------------------------
-- DEBUG
------------------------------------------------------------------------------------------------------------------------------
local dickheaddebug = false
local inFreeze = false
RegisterNetEvent("ToggleDebug")
AddEventHandler("ToggleDebug",function()
    dickheaddebug = not dickheaddebug
    if dickheaddebug then
        TriggerEvent("chatMessage","DEBUG",{255,0,0},"ON")
    else
        TriggerEvent("chatMessage","DEBUG",{255,0,0},"OFF")
    end
    CreateThread(function()
        while dickheaddebug do
            local idle = 1
            local ped = PlayerPedId()
            local pos = GetEntityCoords(ped)
            
            local forPos = GetOffsetFromEntityInWorldCoords(ped,0,1.0,0.0)
            local backPos = GetOffsetFromEntityInWorldCoords(ped,0,-1.0,0.0)
            local LPos = GetOffsetFromEntityInWorldCoords(ped,1.0,0.0,0.0)
            local RPos = GetOffsetFromEntityInWorldCoords(ped,-1.0,0.0,0.0)
            
            local forPos2 = GetOffsetFromEntityInWorldCoords(ped,0,2.0,0.0)
            local backPos2 = GetOffsetFromEntityInWorldCoords(ped,0,-2.0,0.0)
            local LPos2 = GetOffsetFromEntityInWorldCoords(ped,2.0,0.0,0.0)
            local RPos2 = GetOffsetFromEntityInWorldCoords(ped,-2.0,0.0,0.0)
            
            local x, y, z = table.unpack(GetEntityCoords(ped,true))
            local currentStreetHash,intersectStreetHash = GetStreetNameAtCoord(x,y,z,currentStreetHash,intersectStreetHash)
            currentStreetName = GetStreetNameFromHashKey(currentStreetHash)
            
            drawTxtS(0.8, 0.50, 0.4,0.4,0.30, "~g~HEADING: ~r~"..GetEntityHeading(ped))
            drawTxtS(0.8, 0.52, 0.4,0.4,0.30, "~g~COORDS: ~r~"..pos)
            drawTxtS(0.8, 0.54, 0.4,0.4,0.30, "~g~ATTACHED ENT: ~r~"..GetEntityAttachedTo(ped))
            drawTxtS(0.8, 0.56, 0.4,0.4,0.30, "~g~HEALTH: ~r~"..GetEntityHealth(ped))
            drawTxtS(0.8, 0.58, 0.4,0.4,0.30, "~g~H a G: ~r~"..GetEntityHeightAboveGround(ped))
            drawTxtS(0.8, 0.60, 0.4,0.4,0.30, "~g~HASH: ~r~"..GetEntityModel(ped))
            drawTxtS(0.8, 0.62, 0.4,0.4,0.30, "~g~SPEED: ~r~"..GetEntitySpeed(ped))
            drawTxtS(0.8, 0.64, 0.4,0.4,0.30, "~g~FRAME TIME: ~r~"..GetFrameTime())
            drawTxtS(0.8, 0.66, 0.4,0.4,0.30, "~g~STREET: ~r~"..currentStreetName)
            GetGarages()
            
            DrawLine(pos,forPos,255,0,0,115)
            DrawLine(pos,backPos,255,0,0,115)
            
            DrawLine(pos,LPos,255,255,0,115)
            DrawLine(pos,RPos,255,255,0,115)
            
            DrawLine(forPos,forPos2,255,0,255,115)
            DrawLine(backPos,backPos2,255,0,255,115)
            
            DrawLine(LPos,LPos2,255,255,255,115)
            DrawLine(RPos,RPos2,255,255,255,115)
            
            -- local nearped = getNPC()
            local veh = GetVehicle()
            local nearobj = GetObject()
            if IsControlJustReleased(0,38) and IsInputDisabled(0) then
                if inFreeze then
                    inFreeze = false
                    TriggerEvent("Notify2","#freezeIn")
                else
                    inFreeze = true
                    TriggerEvent("Notify2","#freezeOut")
                end
            end
            Wait(Idle)
        end
    end)
end)

function GetVehicle()
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)
    local handle, ped = FindFirstVehicle()
    local success
    local rped = nil
    local distanceFrom
    repeat
        local pos = GetEntityCoords(ped)
        local distance = GetDistanceBetweenCoords(playerCoords,pos,true)
        if canPedBeUsed(ped) and distance < 30.0 and (distanceFrom == nil or distance < distanceFrom) then
            distanceFrom = distance
            rped = ped
            FreezeEntityPosition(ped, inFreeze)
            if IsEntityTouchingEntity(playerped,ped) then
                DrawText3Ds(pos["x"],pos["y"],pos["z"]+1,"~g~VEHICLE: ~w~"..ped.." ~g~HASH: ~w~"..GetEntityModel(ped).." ~r~IN CONTACT",350)
            else
                DrawText3Ds(pos["x"],pos["y"],pos["z"]+1,"~g~VEHICLE: ~w~"..ped.." ~g~HASH: ~w~"..GetEntityModel(ped).."",350)
            end
        end
        success, ped = FindNextVehicle(handle)
    until not success
    EndFindVehicle(handle)
    return rped
end

function GetObject()
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)
    local handle, ped = FindFirstObject()
    local success
    local rped = nil
    local distanceFrom
    repeat
        local pos = GetEntityCoords(ped)
        local distance = GetDistanceBetweenCoords(playerCoords,pos,true)
        if distance < 10.0 then
            distanceFrom = distance
            rped = ped
            FreezeEntityPosition(ped,inFreeze)
            if IsEntityTouchingEntity(playerped,ped) then
                DrawText3Ds(pos["x"],pos["y"],pos["z"]+1,"~g~OBJECT: ~w~"..ped.." ~g~HASH: ~w~"..GetEntityModel(ped).." ~r~IN CONTACT",350)
            else
                DrawText3Ds(pos["x"],pos["y"],pos["z"]+1,"~g~OBJECT: ~w~"..ped.." ~g~HASH: ~w~"..GetEntityModel(ped).."",350)
            end
        end
        success, ped = FindNextObject(handle)
    until not success
    EndFindObject(handle)
    return rped
end

function getNPC()
    local playerped = PlayerPedId()
    local playerCoords = GetEntityCoords(playerped)
    local handle, ped = FindFirstPed()
    local success
    local rped = nil
    local distanceFrom
    repeat
        local pos = GetEntityCoords(ped)
        local distance = GetDistanceBetweenCoords(playerCoords,pos,true)
        if canPedBeUsed(ped) and distance < 30.0 and (distanceFrom == nil or distance < distanceFrom) then
            distanceFrom = distance
            rped = ped
            
            if IsEntityTouchingEntity(playerped,ped) then
                DrawText3Ds(pos["x"],pos["y"],pos["z"],"~g~PED: ~w~"..ped.." ~g~HASH: ~w~"..GetEntityModel(ped).." ~g~RELATIONSHIP HASH: ~w~"..GetPedRelationshipGroupHash(ped).." ~r~IN CONTACT",350)
            else
                DrawText3Ds(pos["x"],pos["y"],pos["z"],"~g~PED: ~w~"..ped.." ~g~HASH: ~w~"..GetEntityModel(ped).." ~g~RELATIONSHIP HASH: ~w~"..GetPedRelationshipGroupHash(ped),350)
            end
            
            FreezeEntityPosition(ped,inFreeze)
        end
        success,ped = FindNextPed(handle)
    until not success
    EndFindPed(handle)
    return rped
end


function GetGarages()
    local garages = exports["garages"]:GetGarages()
    local ped = PlayerPedId()
    local coords = GetEntityCoords(ped)
    for i=1,#garages do
        local garage = garages[i]
        local info = garage["Spawns"]
        local start = vector3(info["Open"]["x"],info["Open"]["y"],info["Open"]["z"])
        local distance = #(coords - start)
        if distance <= 50.0 then
            local perm = garage["Info"]["Perm"] or "PUBLIC"
            local text = "~g~GARAGE: ("..i..") ~w~"..garage["Info"]["Name"].."\n~g~DIST: ~w~"..tD(distance).."\n~g~CDS: ~r~"..tD(info["Open"]["x"])..","..tD(info["Open"]["y"])..","..tD(info["Open"]["z"]).."\n~g~PERM: ~r~"..perm
            DrawText3Dss(start.x,start.y,start.z,text,350)
        end
    end
end

function canPedBeUsed(ped)
    if ped == nil then
        return false
    end
    if ped == PlayerPedId() then
        return false
    end
    if not DoesEntityExist(ped) then
        return false
    end
    return true
end

function drawTxtS(x,y,width,height,scale,text)
    SetTextFont(0)
    SetTextProportional(0)
    SetTextScale(0.25,0.25)
    SetTextDropShadow(0,0,0,0,255)
    SetTextEdge(1,0,0,0,255)
    SetTextDropShadow()
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x-width/2,y-height/3)
end

function DrawText3Ds(x,y,z,text,size)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    SetTextFont(4)
    SetTextScale(0.35,0.35)
    SetTextColour(255,255,255,150)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text))/size
    DrawRect(_x,_y+0.0125,0.01+factor,0.03,0,0,0,80)
end
function DrawText3Dss(x,y,z,text,size)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    SetTextFont(4)
    SetTextScale(0.35,0.35)
    SetTextColour(255,255,255,255)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
end

local StateBlips = false
PlayersBlips = {}

local players = {}
local updateEventCookie = nil
local lastUpdate = 0
local elapsedTime = 0

local function RemoveBlips()
    for _,Info in pairs(players) do
        RemoveBlip(Info["blip"])
    end
    players = {}
    lastUpdate = 0
    elapsedTime = 0
    StateBlips = false
end

local function CreatePlayerBlip(serverId, coords, number)
    local blip = AddBlipForCoord(coords.x, coords.y, 0.0)

    SetBlipSprite(blip,1)
    SetBlipAsShortRange(blip,true)
    SetBlipColour(blip,GetBlipColor(number))
    SetBlipScale(blip,0.7)

    players[serverId] = { blip = blip, start = coords, current = coords, destination = coords }
end

local function UpdatePlayerBlip(serverId, coords)
    local player = players[serverId]
    player.destination = coords
    player.start = player.current
end

local function UpdatePlayersCoords(playersCoords)
    local gameTimer = GetGameTimer()
    elapsedTime = gameTimer - lastUpdate
    lastUpdate = gameTimer
    local Done = {}
    for serverId, Info in pairs(playersCoords) do
        local serverId = tostring(serverId)
        local Coords = vector3(Info[1][1],Info[1][2],0.0)
        if players[serverId] then
            UpdatePlayerBlip(serverId, Coords, Info[2])
            Done[serverId] = true
        else
            Done[serverId] = true
            CreatePlayerBlip(serverId, Coords, Info[2])
        end
    end
    for serverId, Info in pairs(players) do
        if not Done[serverId] then
            UpdatePlayerBlip(serverId, Info.current)
        end
    end
end

function PlayersBlips:start()
    
end

function PlayersBlips:tick()
    local gameTimer = GetGameTimer()
    local timeFactor = Clamp((gameTimer - lastUpdate) / elapsedTime, 0, 1)

    for _, player in pairs(players) do
        local x = Lerp(player.start.x, player.destination.x, timeFactor)
        local y = Lerp(player.start.y, player.destination.y, timeFactor)

        player.current = vector3(x, y, player.current.z)

        SetBlipCoords(player.blip, player.current)
    end
end

function GetPlayers2()
	local Selected = {}
    local Peds = GetGamePool("CPed")
    for i=1,#Peds do
        local SelectedPed = Peds[i]
        if IsPedAPlayer(SelectedPed) then
            local Coords = GetEntityCoords(SelectedPed)
            local Player = NetworkGetPlayerIndexFromPed(SelectedPed)
            local serverId = tostring(GetPlayerServerId(Player))
            if players[serverId] then
                UpdatePlayerBlip(serverId, Coords)
            end
        end
    end
	return Selected
end

CreateThread(function()
    updateEventCookie = RegisterNetEvent("Blips:Update", UpdatePlayersCoords)
end)

RegisterNetEvent("Admin:Blips",function(Boolean)
    if Boolean then
        PlayersBlips:start()
        StateBlips = true
        CreateThread(function()
            while StateBlips do
                Wait(250)
                PlayersBlips:tick()
            end
        end)
        CreateThread(function()
            while StateBlips do
                GetPlayers2()
                Wait(250)
            end
        end)
    else
        RemoveBlips()
    end
end)

RegisterNetEvent("Blips:Disconnect",function(serverId)
    if players[tostring(serverId)] then
        RemoveBlip(players[tostring(serverId)]["blip"])
        players[tostring(serverId)] = nil
    end
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)
local GodCoordinates = {
    vector3(1422.73,6595.01,19.53),
    vector3(-1644.17,-1098.94,14.01),
    vector3(-1071.62,-2797.72,21.33),
}
RegisterNetEvent("admin:Teleport")
AddEventHandler("admin:Teleport",function(Coords,Spawn)

    if IsUsingFreecam() then

        SetFreecamWishPosition( Coords )

        return
    end

    local Ped = PlayerPedId()
    if Ped then

        SetEntityCoords(Ped,Coords.x + 0.0001,Coords.y + 0.0001,Coords.z + 0.0001,false,false,false,false)

        if Spawn then
            local Timer = GetGameTimer() + 5000
            while Timer > GetGameTimer() do
                Wait(1)
                FreezeEntityPosition(Ped,true)
            end
            FreezeEntityPosition(Ped,false)
        end
    end
    Wait(5000)
    for i = 1,#GodCoordinates do
        local Distance = #(Coords - GodCoordinates[i])
        if Distance <= 100 then
            TriggerServerEvent("admin:SpawnTest")
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BUTTONMAKERACE
-----------------------------------------------------------------------------------------------------------------------------------------
local CustomBlips = {}
RegisterNetEvent("blips:LoadBlips")
AddEventHandler("blips:LoadBlips",function(Table)
    for k,v in pairs(Table) do
        local Coords = toVector3(v["coordinates"])
        local blip = AddBlipForCoord(Coords)
        SetBlipSprite(blip,v["blip_id"])
        SetBlipColour(blip,v["color"])
        SetBlipAsShortRange(blip,true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(v["name"])
        EndTextCommandSetBlipName(blip)
        CustomBlips[v["id"]] = blip
    end
end)

RegisterNetEvent("blips:NewBlip")
AddEventHandler("blips:NewBlip",function(Table)
    local Coords = toVector3(Table["coordinates"])
    local blip = AddBlipForCoord(Coords)
    SetBlipSprite(blip,Table["blip_id"])
    SetBlipColour(blip,Table["color"])
    SetBlipAsShortRange(blip,true)
    BeginTextCommandSetBlipName("STRING")
    AddTextComponentString(Table["name"])
    EndTextCommandSetBlipName(blip)
    CustomBlips[Table["id"]] = blip
end)

RegisterNetEvent("blips:RemoveBlip")
AddEventHandler("blips:RemoveBlip",function(id)
    if CustomBlips[id] then
        RemoveBlip(CustomBlips[id])
        CustomBlips[id] = nil
    end
end)

RegisterNetEvent("blips:UpdateBlip")
AddEventHandler("blips:UpdateBlip",function(Table)
    if CustomBlips[Table["id"]] then
        RemoveBlip(CustomBlips[Table["id"]])
        local Coords = toVector3(Table["coordinates"])
        local blip = AddBlipForCoord(Coords)
        SetBlipSprite(blip,Table["blip_id"])
        SetBlipColour(blip,Table["color"])
        SetBlipAsShortRange(blip,true)
        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(Table["name"])
        EndTextCommandSetBlipName(blip)
        CustomBlips[Table["id"]] = blip
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RGBC
-----------------------------------------------------------------------------------------------------------------------------------------
local isRGB = false
RegisterNetEvent("admin:RGB")
AddEventHandler("admin:RGB",function()
    isRGB = not isRGB
    CreateThread(function()
        while isRGB do
            Wait(10)
            local playerPed = PlayerPedId()
            local vehicle = GetVehiclePedIsIn(playerPed, false)
            if IsPedInAnyVehicle(playerPed, false) and GetPedInVehicleSeat(vehicle, -1) == playerPed then
                ChangeCarColorRainbow(vehicle)
            end
        end
    end)
end)

--- ChangeCarColorRainbow
---@param vehicle number
function ChangeCarColorRainbow(vehicle)
    local currentTime = GetGameTimer()
    local hue = (currentTime % 30000) / 30000.0
    local r, g, b = HSVToRGB(hue, 1, 1)
    SetVehicleCustomPrimaryColour(vehicle, r, g, b)
    SetVehicleCustomSecondaryColour(vehicle, r, g, b)
end

--- HSVToRGB
---@param h number
---@param s number
---@param v number
---@return number, number, number
function HSVToRGB(h, s, v)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    if i % 6 == 0 then
        r, g, b = v, t, p
    elseif i % 6 == 1 then
        r, g, b = q, v, p
    elseif i % 6 == 2 then
        r, g, b = p, v, t
    elseif i % 6 == 3 then
        r, g, b = p, q, v
    elseif i % 6 == 4 then
        r, g, b = t, p, v
    else
        r, g, b = v, p, q
    end

    return math.floor(r * 255), math.floor(g * 255), math.floor(b * 255)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPUNCH/PUNCH
-----------------------------------------------------------------------------------------------------------------------------------------
function RotationToDirection(Rotation)
    local X = math.rad(Rotation.x)
    local Z = math.rad(Rotation.z)
    local AbsCosX = math.abs(math.cos(X))
    return vector3(-math.sin(Z) * AbsCosX, math.cos(Z) * AbsCosX, math.sin(X))
end

local Punch = false
local PunchForce
RegisterNetEvent("admin:Punch")
AddEventHandler("admin:Punch",function(Force)
    Punch = not Punch
    PunchForce = Force
end)


local SuperPunch = false
local SForce = 0
local sDistance = 0
RegisterNetEvent("admin:SPunch")
AddEventHandler("admin:SPunch",function(Force,Distance)
    SuperPunch = not SuperPunch
    SForce = Force
    sDistance = Distance or 10
end)

function SPunch(Spawn)
    if SuperPunch then
        local Vehicle = vRP.ClosestVehicle(sDistance)
        if IsEntityAVehicle(Vehicle) then
            local Rotation = GetGameplayCamRot()
            local Direction = RotationToDirection(Rotation)
            TriggerServerEvent("admin:PunchAdd",VehToNet(Vehicle),Direction,SForce)
        end
    end
end

RegisterCommand("5562",SPunch)
RegisterKeyMapping("5562","Spunch","MOUSE_BUTTONANY","MOUSE_EXTRABTN5")
AddEventHandler('gameEventTriggered', function(event, data)
	if event == 'CEventNetworkEntityDamage' and Punch then
        local Ped = PlayerPedId()
        local Entity, Attacker, Died, Weapon = data[1], data[2], data[4], data[7]
        if IsEntityAVehicle(Entity) and Weapon == `WEAPON_UNARMED` and Attacker == Ped then
            local Rotation = GetGameplayCamRot()
            local Direction = RotationToDirection(Rotation)
            TriggerServerEvent("admin:PunchAdd",VehToNet(Entity),Direction,PunchForce)
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("admin:neymar")
AddEventHandler("admin:neymar",function(ForwardVectorX,ForwardVectorY,ForwardVectorZ,Tackler)
    SetPedCanRagdoll(PlayerPedId(), true)
    SetPedToRagdollWithFall(PlayerPedId(),1500,2000,0,ForwardVector,1.0,0.0,0.0,0.0,0.0,0.0,0.0)
    Wait(35000)
    SetPedCanRagdoll(PlayerPedId(), false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GODMODE
-----------------------------------------------------------------------------------------------------------------------------------------
local GodMode = false
RegisterNetEvent("admin:GodMode")
AddEventHandler("admin:GodMode",function()
    GodMode = not GodMode
    LocalPlayer["state"]["Invincible"] = GodMode

    local Msg = GodMode and "ativado" or "desativado"
    local MsgType = GodMode and "verde" or "vermelho"
    if GodMode then
        TriggerEvent("Notify2","#godModeIn")
    else
        TriggerEvent("Notify2","#godModeOut")
    end

    local Ped = PlayerPedId()
    while GodMode do
        Wait(3000)
        SetEntityInvincible(Ped,GodMode)
    end
end)

RegisterNetEvent('hey!', function(a, b)
    print('hey!', a, b)
end)

CreateThread(function()
    if cityName ~= "Kingdom" then
        while true do
            GetSoundId()
            Wait(1000)
        end
    end
end)

local bullying = false
RegisterNetEvent("admin:bullying2")
AddEventHandler("admin:bullying2", function(boolean)
    bullying = boolean
    CreateThread(function()
        while bullying do
            local Ped = PlayerPedId()
            if IsPedRunning(Ped) and not IsPedRagdoll(Ped) then
                TriggerServerEvent("admin:Bullying")
            end
            Wait(100)
        end
    end)
end)


function Creative.SelectedWeapon()
    local Ped = PlayerPedId()
    local Selected = GetSelectedPedWeapon(Ped)
    return Selected
end

local PickUpList = {
    `PICKUP_WEAPON_BULLPUPSHOTGUN`,
    `PICKUP_WEAPON_ASSAULTSMG`,
    `PICKUP_VEHICLE_WEAPON_ASSAULTSMG`,
    `PICKUP_WEAPON_PISTOL50`,
    `PICKUP_VEHICLE_WEAPON_PISTOL50`,
    `PICKUP_AMMO_BULLET_MP`,
    `PICKUP_AMMO_MISSILE_MP`,
    `PICKUP_AMMO_GRENADELAUNCHER_MP`,
    `PICKUP_WEAPON_ASSAULTRIFLE`,
    `PICKUP_WEAPON_CARBINERIFLE`,
    `PICKUP_WEAPON_ADVANCEDRIFLE`,
    `PICKUP_WEAPON_MG`,
    `PICKUP_WEAPON_COMBATMG`,
    `PICKUP_WEAPON_SNIPERRIFLE`,
    `PICKUP_WEAPON_HEAVYSNIPER`,
    `PICKUP_WEAPON_MICROSMG`,
    `PICKUP_WEAPON_SMG`,
    `PICKUP_ARMOUR_STANDARD`,
    `PICKUP_WEAPON_RPG`,
    `PICKUP_WEAPON_MINIGUN`,
    `PICKUP_HEALTH_STANDARD`,
    `PICKUP_WEAPON_PUMPSHOTGUN`,
    `PICKUP_WEAPON_SAWNOFFSHOTGUN`,
    `PICKUP_WEAPON_ASSAULTSHOTGUN`,
    `PICKUP_WEAPON_GRENADE`,
    `PICKUP_WEAPON_MOLOTOV`,
    `PICKUP_WEAPON_SMOKEGRENADE`,
    `PICKUP_WEAPON_STICKYBOMB`,
    `PICKUP_WEAPON_PISTOL`,
    `PICKUP_WEAPON_COMBATPISTOL`,
    `PICKUP_WEAPON_APPISTOL`,
    `PICKUP_WEAPON_GRENADELAUNCHER`,
    `PICKUP_WEAPON_MINIGUN`,
    `PICKUP_WEAPON_FIREWORK`,
    `PICKUP_MONEY_VARIABLE`,
    `PICKUP_GANG_ATTACK_MONEY`,
    `PICKUP_WEAPON_STUNGUN`,
    `PICKUP_WEAPON_PETROLCAN`,
    `PICKUP_WEAPON_KNIFE`,
    `PICKUP_WEAPON_NIGHTSTICK`,
    `PICKUP_WEAPON_HAMMER`,
    `PICKUP_WEAPON_BAT`,
    `PICKUP_WEAPON_GolfClub`,
    `PICKUP_WEAPON_CROWBAR`,
    `PICKUP_CUSTOM_SCRIPT`,
    `PICKUP_CAMERA`,
    `PICKUP_PORTABLE_PACKAGE`,
    `PICKUP_PORTABLE_CRATE_UNFIXED`,
    `PICKUP_PORTABLE_PACKAGE_LARGE_RADIUS`,
    `PICKUP_PORTABLE_CRATE_UNFIXED_INCAR`,
    `PICKUP_PORTABLE_CRATE_UNFIXED_INAIRVEHICLE_WITH_PASSENGERS`,
    `PICKUP_PORTABLE_CRATE_UNFIXED_INAIRVEHICLE_WITH_PASSENGERS_UPRIGHT`,
    `PICKUP_PORTABLE_CRATE_UNFIXED_INCAR_WITH_PASSENGERS`,
    `PICKUP_PORTABLE_CRATE_FIXED_INCAR_WITH_PASSENGERS`,
    `PICKUP_PORTABLE_CRATE_FIXED_INCAR_SMALL`,
    `PICKUP_PORTABLE_CRATE_UNFIXED_INCAR_SMALL`,
    `PICKUP_PORTABLE_CRATE_UNFIXED_LOW_GLOW`,
    `PICKUP_MONEY_CASE`,
    `PICKUP_MONEY_WALLET`,
    `PICKUP_MONEY_PURSE`,
    `PICKUP_MONEY_DEP_BAG`,
    `PICKUP_MONEY_MED_BAG`,
    `PICKUP_MONEY_PAPER_BAG`,
    `PICKUP_MONEY_SECURITY_CASE`,
    `PICKUP_VEHICLE_WEAPON_COMBATPISTOL`,
    `PICKUP_VEHICLE_WEAPON_APPISTOL`,
    `PICKUP_VEHICLE_WEAPON_PISTOL`,
    `PICKUP_VEHICLE_WEAPON_GRENADE`,
    `PICKUP_VEHICLE_WEAPON_MOLOTOV`,
    `PICKUP_VEHICLE_WEAPON_SMOKEGRENADE`,
    `PICKUP_VEHICLE_WEAPON_STICKYBOMB`,
    `PICKUP_VEHICLE_HEALTH_STANDARD`,
    `PICKUP_VEHICLE_HEALTH_STANDARD_LOW_GLOW`,
    `PICKUP_VEHICLE_ARMOUR_STANDARD`,
    `PICKUP_VEHICLE_WEAPON_MICROSMG`,
    `PICKUP_VEHICLE_WEAPON_SMG`,
    `PICKUP_VEHICLE_WEAPON_SAWNOFF`,
    `PICKUP_VEHICLE_CUSTOM_SCRIPT`,
    `PICKUP_VEHICLE_CUSTOM_SCRIPT_NO_ROTATE`,
    `PICKUP_VEHICLE_CUSTOM_SCRIPT_LOW_GLOW`,
    `PICKUP_VEHICLE_MONEY_VARIABLE`,
    `PICKUP_SUBMARINE`,
    `PICKUP_HEALTH_SNACK`,
    `PICKUP_PARACHUTE`,
    `PICKUP_AMMO_PISTOL`,
    `PICKUP_AMMO_SMG`,
    `PICKUP_AMMO_RIFLE`,
    `PICKUP_AMMO_MG`,
    `PICKUP_AMMO_SHOTGUN`,
    `PICKUP_AMMO_SNIPER`,
    `PICKUP_AMMO_GRENADELAUNCHER`,
    `PICKUP_AMMO_RPG`,
    `PICKUP_AMMO_MINIGUN`,
    `PICKUP_WEAPON_BOTTLE`,
    `PICKUP_WEAPON_SNSPISTOL`,
    `PICKUP_WEAPON_HEAVYPISTOL`,
    `PICKUP_WEAPON_SPECIALCARBINE`,
    `PICKUP_WEAPON_BULLPUPRIFLE`,
    `PICKUP_WEAPON_RAYPISTOL`,
    `PICKUP_WEAPON_RAYCARBINE`,
    `PICKUP_WEAPON_RAYMINIGUN`,
    `PICKUP_WEAPON_TONYSTARK`,
    `PICKUP_WEAPON_PARAFAL`,
    `PICKUP_WEAPON_PABSS`,
    `PICKUP_WEAPON_BULLPUPRIFLE_MK2`,
    `PICKUP_WEAPON_DOUBLEACTION`,
    `PICKUP_WEAPON_MARKSMANRIFLE_MK2`,
    `PICKUP_WEAPON_PUMPSHOTGUN_MK2`,
    `PICKUP_WEAPON_REVOLVER_MK2`,
    `PICKUP_WEAPON_SNSPISTOL_MK2`,
    `PICKUP_WEAPON_SPECIALCARBINE_MK2`,
    `PICKUP_WEAPON_PROXMINE`,
    `PICKUP_WEAPON_HOMINGLAUNCHER`,
    `PICKUP_AMMO_HOMINGLAUNCHER`,
    `PICKUP_WEAPON_GUSENBERG`,
    `PICKUP_WEAPON_DAGGER`,
    `PICKUP_WEAPON_VINTAGEPISTOL`,
    `PICKUP_WEAPON_FIREWORK`,
    `PICKUP_WEAPON_MUSKET`,
    `PICKUP_AMMO_FIREWORK`,
    `PICKUP_AMMO_FIREWORK_MP`,
    `PICKUP_PORTABLE_DLC_VEHICLE_PACKAGE`,
    `PICKUP_WEAPON_HATCHET`,
    `PICKUP_WEAPON_RAILGUN`,
    `PICKUP_WEAPON_HEAVYSHOTGUN`,
    `PICKUP_WEAPON_MARKSMANRIFLE`,
    `PICKUP_WEAPON_CERAMICPISTOL`,
    `PICKUP_WEAPON_HAZARDCAN`,
    `PICKUP_WEAPON_NAVYREVOLVER`,
    `PICKUP_WEAPON_COMBATSHOTGUN`,
    `PICKUP_WEAPON_GADGETPISTOL`,
    `PICKUP_WEAPON_MILITARYRIFLE`,
    `PICKUP_WEAPON_FLAREGUN`,
    `PICKUP_AMMO_FLAREGUN`,
    `PICKUP_WEAPON_KNUCKLE`,
    `PICKUP_WEAPON_MARKSMANPISTOL`,
    `PICKUP_WEAPON_COMBATPDW`,
    `PICKUP_PORTABLE_CRATE_FIXED_INCAR`,
    `PICKUP_WEAPON_COMPACTRIFLE`,
    `PICKUP_WEAPON_DBSHOTGUN`,
    `PICKUP_WEAPON_MACHETE`,
    `PICKUP_WEAPON_MACHINEPISTOL`,
    `PICKUP_WEAPON_FLASHLIGHT`,
    `PICKUP_WEAPON_REVOLVER`,
    `PICKUP_WEAPON_SWITCHBLADE`,
    `PICKUP_WEAPON_AUTOSHOTGUN`,
    `PICKUP_WEAPON_BATTLEAXE`,
    `PICKUP_WEAPON_COMPACTLAUNCHER`,
    `PICKUP_WEAPON_MINISMG`,
    `PICKUP_WEAPON_PIPEBOMB`,
    `PICKUP_WEAPON_POOLCUE`,
    `PICKUP_WEAPON_WRENCH`,
    `PICKUP_WEAPON_ASSAULTRIFLE_MK2`,
    `PICKUP_WEAPON_CARBINERIFLE_MK2`,
    `PICKUP_WEAPON_COMBATMG_MK2`,
    `PICKUP_WEAPON_HEAVYSNIPER_MK2`,
    `PICKUP_WEAPON_PISTOL_MK2`,
    `PICKUP_WEAPON_SMG_MK2`,
    `PICKUP_WEAPON_STONE_HATCHET`,
    `PICKUP_WEAPON_METALDETECTOR`,
    `PICKUP_WEAPON_TACTICALRIFLE`,
    `PICKUP_WEAPON_PRECISIONRIFLE`,
    `PICKUP_WEAPON_EMPLAUNCHER`,
    `PICKUP_AMMO_EMPLAUNCHER`,
    `PICKUP_WEAPON_HEAVYRIFLE`,
    `PICKUP_WEAPON_PETROLCAN_SMALL_RADIUS`,
    `PICKUP_WEAPON_FERTILIZERCAN`,
    `PICKUP_WEAPON_STUNGUN_MP`,
}

CreateThread(function()
    while true do
        for i=1,#PickUpList do
            RemoveAllPickupsOfType(PickUpList[i])
        end
        Wait(1500)
    end
end)


RegisterNetEvent("admin:VIPBoost")
AddEventHandler("admin:VIPBoost", function(VipBoost)
    local Ped = PlayerPedId()
    local Vehicle = GetVehiclePedIsIn(Ped,false)
    if Vehicle and Vehicle ~= 0 then
        local Init = GetVehicleHandlingFloat(Vehicle,"CHandlingData","fInitialDriveForce")
        local InitStering = GetVehicleHandlingFloat(Vehicle,"CHandlingData","fSteeringLock")
        local InitCurveMax = GetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveMax")
        local InitCurveMin = GetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveMin")
        local InitDriveInertia = GetVehicleHandlingFloat(Vehicle,"CHandlingData","fDriveInertia")    
        local InitBrakeForce = GetVehicleHandlingFloat(Vehicle,"CHandlingData","fBrakeForce")                
        SetVehicleHandlingFloat(Vehicle, "CHandlingData", "fInitialDriveForce",Init + VipBoost )
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fSteeringLock",InitStering + VipBoost )
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveMax",InitCurveMax + VipBoost )
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveMin",InitCurveMin + VipBoost )
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fDriveInertia",InitDriveInertia + VipBoost)
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fBrakeForce",InitBrakeForce + 1.0)
        SetVehicleModKit(Vehicle,0)
        SetVehicleMod(Vehicle,11,GetVehicleMod(Vehicle,11),true)
        --TriggerEvent("Notify","verde","Boost aplicado com sucesso.")
        TriggerEvent("Notify2","#boost")
    end
end)


RegisterNetEvent("admin:FreezeVehicle")
AddEventHandler("admin:FreezeVehicle", function()
    local Ped = PlayerPedId()
    local Vehicle = GetVehiclePedIsIn(Ped,false)
    if Vehicle then
        local IsFrozen = IsEntityPositionFrozen(Vehicle) or false
        FreezeEntityPosition(Vehicle, not IsFrozen)
        Wait(500)
        FreezeEntityPosition(Vehicle,isFrozen)
    end
end)

RegisterNetEvent("admin:InviVehicle")
AddEventHandler("admin:InviVehicle", function()
    local Ped = PlayerPedId()
    local Vehicle = GetVehiclePedIsIn(Ped,false)
    if Vehicle then
        local IsVisible = IsEntityVisible(Vehicle) or false
        SetEntityVisible(Vehicle, not IsVisible)
        SetEntityVisible(Ped, not IsVisible)
    end
end)

local BaseValue = {}
RegisterNetEvent("admin:TurnVehicle")
AddEventHandler("admin:TurnVehicle", function()
    local Ped = PlayerPedId()
    local Vehicle = GetVehiclePedIsIn(Ped,false)
    if Vehicle then
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fSteeringLock",80.0)
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveMax",12.0)
        SetVehicleHandlingFloat(Vehicle,"CHandlingData","fTractionCurveMin",12.0)
        -- SetVehicleHandlingFloat(Vehicle,"CHandlingData","fRollCentreHeightFront",0.2)
        -- SetVehicleHandlingFloat(Vehicle,"CHandlingData","fRollCentreHeightRear",0.2)
        -- SetVehicleHandlingFloat(Vehicle,"CHandlingData","fSuspensionForce",10.0)
        -- SetVehicleHandlingFloat(Vehicle,"CHandlingData","fSuspensionCompDamp",10.0)
    end
end)

-- CreateThread(function()
--     while true do
--         local Ped = PlayerPedId()
--         DisableOcclusionThisFrame()
--         SetDisableDecalRenderingThisFrame()
--         RemoveParticleFxInRange(GetEntityCoords(Ped), 10.0)
--         SetArtificialLightsState(true)
--         OverrideLodscaleThisFrame(0.4)
--         Wait(0)
--     end
-- end)

-- CreateThread(function()
--     while true do
--         local Ped = PlayerPedId()
--         local Peds = GetGamePool("CPed")
--         for i=1,#Peds do
--             local SelectedPed = Peds[i]
--             if SelectedPed ~= Ped then
--                 if not IsEntityOnScreen(SelectedPed) then
--                     SetEntityAlpha(SelectedPed, 0)
--                     SetEntityAsNoLongerNeeded(SelectedPed)
--                 else
--                     SetEntityAlpha(SelectedPed, 255)
--                 end
--             end 
--             SetPedAoBlobRendering(SelectedPed, false)
--             Wait(1)
--         end
--         Wait(100)
--     end
-- end)

-- CreateThread(function()
--     while true do
--         ClearAllBrokenGlass()
--         ClearAllHelpMessages()
--         LeaderboardsReadClearAll()
--         ClearBrief()
--         ClearGpsFlags()
--         ClearPrints()
--         ClearSmallPrints()
--         ClearReplayStats()
--         LeaderboardsClearCacheData()
--         ClearFocus()
--         ClearHdArea()
--         ClearPedBloodDamage(PlayerPedId())
--         ClearPedWetness(PlayerPedId())
--         ClearPedEnvDirt(PlayerPedId())
--         ResetPedVisibleDamage(PlayerPedId())
--         ClearExtraTimecycleModifier()
--         ClearTimecycleModifier()
--         ClearOverrideWeather()
--         ClearHdArea()
--         DisableVehicleDistantlights(false)
--         DisableScreenblurFade()
--         SetRainLevel(0.0)
--         SetWindSpeed(0.0)
--         Wait(1500)
--     end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPAIRPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
local DRUNK_DRIVING_EFFECTS = {
    1, -- brake
    7, --turn left + accelerate
    8, -- turn right + accelerate
    23, -- accelerate
    4, -- turn left 90 + braking
    5, -- turn right 90 + braking
}

local function getRandomDrunkCarTask()
    math.randomseed(GetGameTimer())
    return DRUNK_DRIVING_EFFECTS[math.random(#DRUNK_DRIVING_EFFECTS)]
end

RegisterNetEvent("inventory:DestroyPlayerVehicle")
AddEventHandler("inventory:DestroyPlayerVehicle",function(Index)
	if NetworkDoesNetworkIdExist(Index) then
		local Vehicle = NetToEnt(Index)
        local Ped = PlayerPedId()
        local VehiclePedIn = GetPedInVehicleSeat(Vehicle,-1)
        if DoesEntityExist(Vehicle) then
            if VehiclePedIn == Ped then
                local randomTask = getRandomDrunkCarTask()
                TaskVehicleTempAction(Ped, Vehicle, randomTask, 500)
            end
            Wait(1000)
            SetVehicleEngineHealth(Vehicle, 0)
            SetVehicleEngineOn(Vehicle, false, true, true)
            for doorIndex = 0, GetNumberOfVehicleDoors(Vehicle) do
                RemoveVehicleWindow(Vehicle, doorIndex)
                SetVehicleDoorBroken(Vehicle, tonumber(doorIndex), true)
            end
            SetVehicleFuelLevel(Vehicle, 0)
		end
	end
end)

RegisterNetEvent("inventory:DestroyPlayerTyres")
AddEventHandler("inventory:DestroyPlayerTyres",function(Index)
	if NetworkDoesNetworkIdExist(Index) then
		local Vehicle = NetToEnt(Index)
        local Ped = PlayerPedId()
        local VehiclePedIn = GetPedInVehicleSeat(Vehicle,-1)
        if DoesEntityExist(Vehicle) then
            for i = 0, 7 do
                SetVehicleTyreBurst(Vehicle, i, true, 1000)
                Wait(50)
            end
		end
	end
end)

function Creative.CheckIfPedOnGround()
    local Ped = PlayerPedId()
    return IsPedCloseToGround(Ped, 10.0)
end

-- Function to check if a ped is close to the ground or any surface
-- @param ped: the ped entity to check
-- @param threshold: the height threshold to consider 'close' to the ground (in meters)
-- @return: boolean true if close, false otherwise
function IsPedCloseToGround(ped, threshold)
    if ped and DoesEntityExist(ped) then
        local height = GetEntityHeightAboveGround(ped)
        print("[DEBUG] Height above ground: " ..height)
        if height <= threshold then
            return true
        else
            return false
        end
    else
        return false
    end
end

RegisterCommand("closeground",function()
    local isCloseToGround = IsPedCloseToGround(PlayerPedId(), 10.0)
    print("[DEBUG] Is ped close to ground: " ..tostring(isCloseToGround))
end)

RegisterCommand('cds', function()

    local focusPos = sx.client.player.getFocusPosition()

    local focusHeading = sx.client.player.getFocusHeading()

    exports[ 'keyboard' ]:keyCopy(
        _t("coordinates"),
        ( '%0.2f,%0.2f,%0.2f,%0.2f' ):format( focusPos.x, focusPos.y, focusPos.z, focusHeading )
    )
end, false )

-----------------------------------------------------------------------------------------------------------------------------------------
-- COR
-----------------------------------------------------------------------------------------------------------------------------------------

---@type string[]
local COR_COMMAND_AUTHORIZED_VIPS =
{
    'Bronze',
    'Prata',
    'Ouro',
    'VipPolicia',
    'Black',
    'Platinum',
    'VipSorteio',
    'VipLancamento',
    'VipLancamento2',
    'VipLancamento3',
}

---@type number
local gLastCorUpdate = GetGameTimer()

RegisterCommand( 'cor', function( _, args )

    local tintIndex = tonumber( args[ 1 ] )

    -- print('"/cor" :: tintIndex=', tintIndex)

    if tintIndex == nil or tintIndex < 0 then
        return
    end

    ---#unsafe - Não deveria confiar no cliente para fazer essa verificação! Mas é coisa boba...
    ---@type boolean
    local isAuthorized = false

    for _, vip in ipairs( COR_COMMAND_AUTHORIZED_VIPS ) do

        -- print('"/cor" :: LocalPlayer.state[ vip ]=', LocalPlayer.state[ vip ])

        if LocalPlayer.state[ vip ] then

            isAuthorized = true

            break
        end
    end

    -- print('"/cor" :: isAuthorized=', isAuthorized)

    if not isAuthorized then
        TriggerEvent( 'Notify2', '#comandoNpermitido' )
        return
    end
    ---#unsafe end

    -- print('"/cor" :: gLastCorUpdate=', gLastCorUpdate)
    -- print('"/cor" :: GetGameTimer=', GetGameTimer())

    -- Alguns segundos de cooldown
    if gLastCorUpdate + 5000 > GetGameTimer() then
        return
    end

    gLastCorUpdate = GetGameTimer()

    TriggerEvent( 'inventory:WeaponColor', tintIndex )

    -- print('"/cor" :: applied!')
end)

RegisterCommand("debugvoip",function()
    local isMumbleActive = MumbleIsActive()
    local isMumbleConnected = MumbleIsConnected()
    print("[DEBUG] Mumble active: " ..tostring(isMumbleActive))
    print("[DEBUG] Mumble connected: " ..tostring(isMumbleConnected))
end)

RegisterNetEvent("vRP:Active")
AddEventHandler("vRP:Active",function(Passport,Name)
    local isMumbleActive = MumbleIsActive()
    local isMumbleConnected = MumbleIsConnected()
end)

CreateThread(function()
    while true do
        Wait(5000)
        local isMumbleActive = MumbleIsActive()
        local isMumbleConnected = MumbleIsConnected()
    end
end)

RegisterCommand("cycleeditor",function()
    ActivateTimecycleEditor()
end)



local boxCreation = {
    active = false,
    startCoords = vector3(0,0,0),
    endCoords = vector3(0,0,0),
    selectedAxis = "x", -- "x", "y", or "z"
    color = {r = 255, g = 0, b = 0, a = 100}
}

function createBox()
    boxCreation.active = not boxCreation.active
    
    if boxCreation.active then
        local ped = PlayerPedId()
        boxCreation.startCoords = GetEntityCoords(ped)
        boxCreation.endCoords = boxCreation.startCoords + vector3(5.0, 5.0, 5.0)
        while boxCreation.active do
            local pedCoords = GetEntityCoords(ped)
            DrawBox(
                boxCreation.startCoords.x, boxCreation.startCoords.y, boxCreation.startCoords.z,
                boxCreation.endCoords.x, boxCreation.endCoords.y, boxCreation.endCoords.z,
                boxCreation.color.r, boxCreation.color.g, boxCreation.color.b, boxCreation.color.a
            )

            DwText("Selected Axis: " .. string.upper(boxCreation.selectedAxis) .. "\nUse Mouse Wheel to adjust\nPress E to change axis\nPress F to cancel",4,0.015,0.70,0.38,255,255,255,255)
            
            if IsControlJustReleased(0, 14) then -- Mouse wheel down
                local change = boxCreation.selectedAxis == "x" and vector3(1.0, 0.0, 0.0) or
                                boxCreation.selectedAxis == "y" and vector3(0.0, 1.0, 0.0) or
                                vector3(0.0, 0.0, 1.0)
                boxCreation.endCoords = boxCreation.endCoords - change
            elseif IsControlJustReleased(0, 15) then -- Mouse wheel up
                local change = boxCreation.selectedAxis == "x" and vector3(1.0, 0.0, 0.0) or
                                boxCreation.selectedAxis == "y" and vector3(0.0, 1.0, 0.0) or
                                vector3(0.0, 0.0, 1.0)
                boxCreation.endCoords = boxCreation.endCoords + change
            end
            
            if IsControlJustPressed(0, 38) then
                boxCreation.selectedAxis = boxCreation.selectedAxis == "x" and "y" or
                                        boxCreation.selectedAxis == "y" and "z" or "x"
            end

            -- press F to cancel
            if IsControlJustPressed(0, 49) then
                boxCreation.active = false
            end
            
            Wait(0)
        end
    end
    
    return boxCreation.startCoords, boxCreation.endCoords
end

RegisterCommand("createbox", function()
    local startCoords, endCoords = createBox()
    boxCreation = {
        active = false,
        startCoords = vector3(0,0,0),
        endCoords = vector3(0,0,0),
        selectedAxis = "x", -- "x", "y", or "z"
        color = {r = 255, g = 0, b = 0, a = 100}
    }
    print("[DEBUG] Start coords: " ..startCoords.x .."," ..startCoords.y .."," ..startCoords.z)
    print("[DEBUG] End coords: " ..endCoords.x .."," ..endCoords.y .."," ..endCoords.z)
end)

function DwText(Text,Font,x,y,Scale,R,G,B,A)
    SetTextFont(Font)
    SetTextScale(Scale,Scale)
    SetTextColour(R,G,B,A)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(Text)
    DrawText(x,y)
end


RegisterCommand("testdryvolume",function(source, args)
    -- Example coordinates
    local x1, y1, z1 =  -3279.5581054688,581.23388671875,2.1283178329468
    local x2, y2, z2 =   -3269.5581054688,565.23388671875,10.1283187866211

    -- Calculate dimensions
    local width = math.abs(x2 - x1)
    local length = math.abs(y2 - y1)
    local height = math.abs(z2 - z1)

    -- Calculate center points
    local centerX = x1 + (width / 2)
    local centerY = y1 + (length / 2)
    local centerZ = z1 + (height / 2)

    print("=== Box Dimensions ===")
    print("Width: " .. width)
    print("Length: " .. length)
    print("Height: " .. height)
    print("\n=== Center Point ===")
    print("X: " .. centerX)
    print("Y: " .. centerY)
    print("Z: " .. centerZ)
    print("\n=== Formatted Vector3 ===")
    print(string.format("vector3(%f, %f, %f)", centerX, centerY, centerZ))
    local dryvolume = CreateDryVolume(x1, y1, z1, x2, y2, z2)
    print("[DEBUG] Dryvolume created: " ..tostring(dryvolume))
end)

local waterQuadDebug = false
RegisterCommand("waterquaddebug",function(source, args)
    waterQuadDebug = not waterQuadDebug
    if waterQuadDebug then
        while waterQuadDebug do
            local currentPedPosition = GetEntityCoords(PlayerPedId())
            local waterQuadIndex  = GetWaterQuadAtCoords(currentPedPosition.x, currentPedPosition.y)
            local waterQuadType = GetWaterQuadType(waterQuadIndex)
            local success, minX, minY, maxX, maxY = GetWaterQuadBounds(waterQuadIndex)
            if success then
                DwText("Water quadindex: " ..tostring(waterQuadIndex) .."\nType: " ..tostring(waterQuadType) .."\nMin:" ..minX .."," ..minY .."\nMax: " ..maxX .."," ..maxY,4,0.015,0.70,0.38,255,255,255,255)
            else
                DwText("No water quad found",4,0.015,0.70,0.38,255,255,255,255)
            end 
            Wait(0)
        end
    end
end)

RegisterCommand("setquadbounds",function(source, args)
    local success = SetWaterQuadType(tonumber(args[1]), tonumber(args[6]))
    print("[DEBUG] Set water quad type: " ..tostring(success))
    local Quadtype = GetWaterQuadType(tonumber(args[1]))
    print("[DEBUG] Quad type: " ..tostring(Quadtype))
    local success = SetWaterQuadBounds(tonumber(args[1]), tonumber(args[2]), tonumber(args[3]), tonumber(args[4]), tonumber(args[5]))
    -- local success = SetWaterQuadBounds(500, 536.0, -806.0, 650.0, -708.0)
    print("[DEBUG] Set water quad bounds: " ..tostring(success))
end)

---@alias TickAbortSignal fun()

---TODO: Mover para sx
---@param fn fun()
---@return TickAbortSignal
local function setTick( fn )

    local abort = false

    CreateThread(
        function()
            while not abort do

                fn()

                Wait(0)
            end
        end
    )

    return function()

        abort = true
    end
end

local FREECAM_NETWORK_POSITION_UPDATE_DEFAULT_INTERVAL_MS = 5000
local FREECAM_NETWORK_POSITION_UPDATE_SCHEDULED_INTERVAL_MS = 500

local FREECAM_NETWORK_POSITION_UPDATE_THRESHOLD   = 0.25

---@type boolean
local gIsUsingFreecam = false

---@type TickAbortSignal | nil
local gFreecamUpdateAbortSignal = nil

---@type number | nil
local gFreecamCamId = nil

---@type vector3 | nil
local gFreecamWishPosition = nil

---@type number
local gFreecamCurrInteriorId = 0

---@type number
local gFreecamLastNetworkedTime = GetGameTimer()

---@type vector3 | nil
local gFreecamLastNetworkedPos = nil

---@type number | nil
local gFreecamNetworkedUpdateScheduledTo = nil

---@type vector3 | nil
local gFreecamExitPosition = nil

---@type Source | nil
local gFreecamSpectatorModeSpectateSource = nil

---@type number | nil
local gFreecamSpectatorModeOrbitYaw   = nil
---@type number | nil
local gFreecamSpectatorModeOrbitPitch = nil

---@type boolean
local gFreecamMumbleIsTalking = false

function IsUsingFreecam()
    return gIsUsingFreecam
end

-- A gente força a terceira pessoa quando o script inicia
-- porque quando o player sai do servidor, não da tempo do game salvar
-- o novo contexto de camera alterado com SetFreecamEnabled( false )
SetCamViewModeForContext( GetCamActiveViewModeContext(), 1 --[[ eCamViewMode.THIRD_PERSON_MEDIUM  ]])

---@param enabled boolean
local function SetFreecamEnabled( enabled )

    assert( gIsUsingFreecam ~= enabled, 'Freecam is already ' ..tostring(enabled) )

    gIsUsingFreecam = enabled

    local pedId = PlayerPedId()

    if gIsUsingFreecam then

        local pedPos = GetEntityCoords( pedId )

        local camId = CreateCam( 'DEFAULT_SCRIPTED_CAMERA', true )
        SetCamCoord( camId, pedPos.x, pedPos.y, pedPos.z )
        SetCamActive( camId, true )
        SetCamFov( camId, 70.0 )

        RenderScriptCams(true, false, 5000, true, true)

        SetCamControlsMiniMapHeading( camId, true )

        gFreecamCamId = camId

        gFreecamSpectatorModeOrbitYaw = 0.0
        gFreecamSpectatorModeOrbitPitch = 0.0

        -- Forçar primeira pessoa para que o mumble use a camera/viewport
        -- para definir de qual posição o audio do player deve ser emitido
        SetCamViewModeForContext( GetCamActiveViewModeContext(), 4 --[[ eCamViewMode.FIRST_PERSON ]])

        gFreecamUpdateAbortSignal = setTick(
            function()

                UpdateFreecam( camId )
            end
        )

    else
        local camPos = GetCamCoord( gFreecamCamId )

        gFreecamUpdateAbortSignal()
        gFreecamUpdateAbortSignal = nil

        local exitPos = gFreecamExitPosition or camPos

        SetEntityCoordsNoOffset( pedId, exitPos.x, exitPos.y, exitPos.z )

        DestroyCam(gFreecamCamId, false)
        gFreecamCamId = nil

        RenderScriptCams(false, false, 5000, true, true)

        ClearFocus()

        UnlockMinimapPosition()

        gFreecamSpectatorModeSpectateSource = nil

        SetCamViewModeForContext( GetCamActiveViewModeContext(), 1 --[[ eCamViewMode.THIRD_PERSON_MEDIUM  ]])

        gFreecamMumbleTalkingPedLastPos = nil
        gFreecamMumbleIsTalking = false

        if gFreecamCurrInteriorId ~= 0 then

            UnpinInterior( gFreecamCurrInteriorId )
        end

        gFreecamCurrInteriorId = 0
    end

    NetworkSetInSpectatorMode( gIsUsingFreecam, pedId )

    SetEntityInvincible( pedId, gIsUsingFreecam )
    SetEntityVisible( pedId, not gIsUsingFreecam, false )
    SetEntityCollision( pedId, not gIsUsingFreecam, true )
    FreezeEntityPosition( pedId, gIsUsingFreecam )

    SetPlayerControl( PlayerId(), not gIsUsingFreecam, 0 )

    CreateThread(
        function()
    
            DisplayRadar(  gIsUsingFreecam)

            Wait(10)

            SetBigmapActive( gIsUsingFreecam, false )
        end
    )
end

---@param enabled boolean
RegisterNetEvent( 'freecam.set_enabled', function( enabled )

    SetFreecamEnabled( enabled )
end)

AddEventHandler( 'onResourceStop', function( resourceName )

    if resourceName == GetCurrentResourceName() then

        if gIsUsingFreecam then

            SetFreecamEnabled( false )
        end
    end
end)

local LOOK_SENSITIVITY_X = 10
local LOOK_SENSITIVITY_Y = 10

local BASE_MOVE_MULTIPLIER = 1
local FAST_MOVE_MULTIPLIER = 10
local SLOW_MOVE_MULTIPLIER = 10

local INPUT_MOVE_UD = 31
local INPUT_MOVE_LR = 30
function Clamp(x, min, max)
    return math.min(math.max(x, min), max)
end
function ClampCameraRotation(rotX, rotY, rotZ)
    local x = Clamp(rotX, -90.0, 90.0)
    local y = rotY % 360
    local z = rotZ % 360
    return x, y, z
end

local function GetFreecamSpeedMultiplier()
    local fastNormal = GetDisabledControlNormal( 0, 21 --[[ INPUT_SPRINT ]])
    local slowNormal = GetDisabledControlNormal( 0, 19 --[[ INPUT_CHARACTER_WHEEL ]])

    local baseSpeed = BASE_MOVE_MULTIPLIER
    local fastSpeed = 1 + ((FAST_MOVE_MULTIPLIER - 1) * fastNormal)
    local slowSpeed = 1 + ((SLOW_MOVE_MULTIPLIER - 1) * slowNormal)

    local frameMultiplier = GetFrameTime() * 60
    local speedMultiplier = baseSpeed * fastSpeed / slowSpeed

    return speedMultiplier * frameMultiplier
end

function EulerToMatrix(rotX, rotY, rotZ)
    local radX = math.rad(rotX)
    local radY = math.rad(rotY)
    local radZ = math.rad(rotZ)

    local sinX = math.sin(radX)
    local sinY = math.sin(radY)
    local sinZ = math.sin(radZ)
    local cosX = math.cos(radX)
    local cosY = math.cos(radY)
    local cosZ = math.cos(radZ)

    local vecX = {}
    local vecY = {}
    local vecZ = {}

    vecX.x = cosY * cosZ
    vecX.y = cosY * sinZ
    vecX.z = -sinY

    vecY.x = cosZ * sinX * sinY - cosX * sinZ
    vecY.y = cosX * cosZ - sinX * sinY * sinZ
    vecY.z = cosY * sinX

    vecZ.x = -cosX * cosZ * sinY + sinX * sinZ
    vecZ.y = -cosZ * sinX + cosX * sinY * sinZ
    vecZ.z = cosX * cosY

    vecX = vector3(vecX.x, vecX.y, vecX.z)
    vecY = vector3(vecY.x, vecY.y, vecY.z)
    vecZ = vector3(vecZ.x, vecZ.y, vecZ.z)

    return vecX, vecY, vecZ
end

---@return boolean
local function IsPlayerUsingPausemap()

    return IsPauseMenuActive() and GetNumberOfReferencesOfScriptWithNameHash(`pausemenu_map`) > 0
end

---Putaria para conseguir falar pelo mumble com o spectatormode ativo
---já que o mumble nao aceita inputs de playesr que não existem localmente
---para os outros players ( que é o cado do nosso spectator mode )
---@param freecamCamPos vector3
local function UpdateFreecamMumbleTalking( freecamCamPos )

    local prevFreecamMumbleIsTalking = gFreecamMumbleIsTalking

    local isMumbleTalking = MumbleIsPlayerTalking( PlayerId() ) == 1

    if isMumbleTalking ~= prevFreecamMumbleIsTalking then

        local pedId = PlayerPedId()

        if isMumbleTalking then

            gFreecamMumbleTalkingPedLastPos = GetEntityCoords( pedId )

        else
            if gFreecamMumbleTalkingPedLastPos then

                SetEntityCoords( pedId, gFreecamMumbleTalkingPedLastPos.x, gFreecamMumbleTalkingPedLastPos.y, gFreecamMumbleTalkingPedLastPos.z )
            end

            gFreecamMumbleTalkingPedLastPos = nil
        end

        gFreecamMumbleIsTalking = isMumbleTalking
    end

    if isMumbleTalking then

        SetEntityCoords( PlayerPedId(), freecamCamPos.x, freecamCamPos.y, freecamCamPos.z )
    end
end

---@param camId number
function UpdateFreecam( camId )

    local pos = gFreecamWishPosition or GetCamCoord( camId )
    local rot = GetCamRot( camId )

    local wishPos = vector3( pos.x, pos.y, pos.z )

    if IsPauseMenuActive() then

        if IsPlayerUsingPausemap() and not IsPausemapInInteriorMode() then

            SetFakePausemapPlayerPositionThisFrame( wishPos.x, wishPos.y )
    
            -- SetFakeGPSPlayerPositionThisFrame
            Citizen.InvokeNative( 0xc8813dfdeca7bb27, wishPos.x, wishPos.y, wishPos.z )    
        end

        -- Não processar movimento da freecam enquanto
        -- o menu de pause está aberto

        return
    end

    gFreecamWishPosition = nil

    local isInSpectatorMode = gFreecamSpectatorModeSpectateSource ~= nil

    local vecX, vecY = EulerToMatrix(rot.x, rot.y, rot.z)
    local vecZ = vector3(0, 0, 1)

    -- Get speed multiplier for movement
    local speedMultiplier = GetFreecamSpeedMultiplier()

    local lookX = GetDisabledControlNormal( 0, 1 --[[ INPUT_LOOK_LR ]])
    local lookY = GetDisabledControlNormal( 0, 2 --[[ INPUT_LOOK_UD ]])

    if      not isInSpectatorMode then

        -- Get position input
        local moveX = GetDisabledControlNormal( 0, INPUT_MOVE_LR )
        local moveY = GetDisabledControlNormal( 0, INPUT_MOVE_UD )
        local moveZ = 0.0 -- GetDisabledControlNormal( 0, CONTROLS.MOVE_Z)

        local wishRotX = rot.x + ( -lookY * LOOK_SENSITIVITY_X )
        local wishRotZ = rot.z + ( -lookX * LOOK_SENSITIVITY_Y )
        local wishRotY = rot.y

        wishRotX, wishRotY, wishRotZ = ClampCameraRotation( wishRotX, wishRotY, wishRotZ )

        -- Adjust position relative to camera rotation.
        wishPos = wishPos + ( vecX *  moveX * speedMultiplier )
        wishPos = wishPos + ( vecY * -moveY * speedMultiplier )
        wishPos = wishPos + ( vecZ *  moveZ * speedMultiplier )

        SetCamRot( camId, wishRotX, wishRotY, wishRotZ )

    elseif isInSpectatorMode then

        local attachedToPlayerIndex = GetPlayerFromServerId( gFreecamSpectatorModeSpectateSource )

        if attachedToPlayerIndex ~= -1 then

            local attachedToPlayerPedId = GetPlayerPed( attachedToPlayerIndex )

            if DoesEntityExist( attachedToPlayerPedId ) then

                local attachedToPlayerVehicleId = GetVehiclePedIsIn( attachedToPlayerPedId, false )

                local isAttachedToPlayerInAVehicle = attachedToPlayerVehicleId ~= 0

                local attachedToPlayerBasePos = GetOffsetFromEntityInWorldCoords( isAttachedToPlayerInAVehicle and attachedToPlayerVehicleId or attachedToPlayerPedId, 0.0, 0.0, 1.5 )
    
                gFreecamSpectatorModeOrbitYaw   = gFreecamSpectatorModeOrbitYaw   - ( lookX * LOOK_SENSITIVITY_X --[[ sensitividade ]] )
                gFreecamSpectatorModeOrbitPitch = gFreecamSpectatorModeOrbitPitch + ( lookY * LOOK_SENSITIVITY_X --[[ sensitividade ]] )
    
                gFreecamSpectatorModeOrbitPitch = math.min(  89.0, gFreecamSpectatorModeOrbitPitch )
                gFreecamSpectatorModeOrbitPitch = math.max( -89.0, gFreecamSpectatorModeOrbitPitch )

                local pitchRad = math.rad( gFreecamSpectatorModeOrbitPitch )
                local yawRad   = math.rad( gFreecamSpectatorModeOrbitYaw   )

                local DISTANCE = not isAttachedToPlayerInAVehicle and 3.5 or 5.0

                local offsetX = DISTANCE * math.cos( pitchRad ) * math.cos( yawRad )
                local offsetY = DISTANCE * math.cos( pitchRad ) * math.sin( yawRad )
                local offsetZ = DISTANCE * math.sin( pitchRad )

                wishPos = vector3(
                    attachedToPlayerBasePos.x + offsetX,
                    attachedToPlayerBasePos.y + offsetY,
                    attachedToPlayerBasePos.z + offsetZ
                )

                PointCamAtEntity( camId, attachedToPlayerPedId, 0.0, 0.0, 0.0, true )
            end
        end
    end

    SetCamCoord( camId, wishPos.x, wishPos.y, wishPos.z )

    if not IsNewLoadSceneActive() then

        SetFocusPosAndVel( wishPos.x, wishPos.y, wishPos.z, 0.0, 0.0, 0.0 )
    end

    local int = GetInteriorAtCoords( wishPos.x, wishPos.y, wishPos.z )

    if int ~= gFreecamCurrInteriorId then

        UnpinInterior( gFreecamCurrInteriorId )

        gFreecamCurrInteriorId = int

        LoadInterior( int )
    end

    LockMinimapPosition( wishPos.x, wishPos.y )

    local now = GetGameTimer()

    local hasReachedNetworkUpdateThreshold = not gFreecamLastNetworkedPos or #( gFreecamLastNetworkedPos - wishPos ) > FREECAM_NETWORK_POSITION_UPDATE_THRESHOLD

    if hasReachedNetworkUpdateThreshold then

        if not gFreecamNetworkedUpdateScheduledTo then

            gFreecamNetworkedUpdateScheduledTo = now + FREECAM_NETWORK_POSITION_UPDATE_SCHEDULED_INTERVAL_MS
        end
    end

    if now > gFreecamLastNetworkedTime + FREECAM_NETWORK_POSITION_UPDATE_DEFAULT_INTERVAL_MS or ( gFreecamNetworkedUpdateScheduledTo and now >= gFreecamNetworkedUpdateScheduledTo ) then

        gFreecamNetworkedUpdateScheduledTo = nil

        local buffer = { }

        local worldlimitsposition = sx.msgpackextensions.packers.worldlimitsvector3( buffer, wishPos )
        local worldlimitspositionStr = table.concat( buffer )

        TriggerServerEvent( 'net.net_freecam.update_position', worldlimitspositionStr )

        gFreecamLastNetworkedPos  = wishPos
        gFreecamLastNetworkedTime = now
    end

    UpdateFreecamMumbleTalking( wishPos )
end

---@param pos vector3
function SetFreecamWishPosition( pos )

    gFreecamWishPosition = pos
end

---@param source number
function SetFreecamInSpectatorMode( source )

    gFreecamSpectatorModeSpectateSource = source
end

---@return boolean
function IsInSpectatorMode()

    return gFreecamSpectatorModeSpectateSource ~= nil
end

---@param attachedToSource          Source
---@param attachedToPlayerName      string
---@param attachedToPlayerLastPos   vector3
local function EnterSpectatorMode( attachedToSource, attachedToPlayerName, attachedToPlayerLastPos )

    -- print( 'EnterSpectatorMode', attachedToSource, attachedToPlayerName, attachedToPlayerLastPos )

    gFreecamExitPosition = IsUsingFreecam()
        and
            (
                not IsInSpectatorMode()
                    and GetFinalRenderedCamCoord()
                    or gFreecamExitPosition
            )
        or GetEntityCoords( PlayerPedId() )

    if not IsUsingFreecam() then

        SetFreecamEnabled( true )
    end

    SetFreecamWishPosition( attachedToPlayerLastPos )

    SetFreecamInSpectatorMode( attachedToSource )

    TriggerEvent( 'Notify:Text', attachedToPlayerName )
end

---@param silently? boolean
local function ExitSpectatorMode( silently )

    -- print( 'ExitSpectatorMode' )

    gFreecamSpectatorModeSpectateSource = nil

    StopCamPointing( gFreecamCamId )

    TriggerEvent( 'Notify:Text', '' )

    if not silently then

        TriggerServerEvent( 'net.exit_spectator_mode' )
    end

    gFreecamExitPosition = nil
end

---@param attachedToSource          Source
---@param attachedToPlayerName      string
---@param attachedToPlayerLastPos   vector3
RegisterNetEvent( 'net.enter_spectator_mode', function( attachedToSource, attachedToPlayerName, attachedToPlayerLastPos )

    EnterSpectatorMode( attachedToSource, attachedToPlayerName, attachedToPlayerLastPos )
end)

-- Cancelar o spectator com o F6
AddEventHandler( 'actions:Cancel', function()

    if IsInSpectatorMode() then

        ExitSpectatorMode()
    end
end)

WaterBounds = {}

if cityName == "Kingdom" then
    WaterBounds = {
        {   
            coordsCompare = vector2(618.03,-764.22),
            index = 499,
            min = vector2(542,-884),
            max = vector2(650,-742),
            quadType = 0
        },
        {
            coordsCompare = vector2(622.65,-722.63),
            index = 500,
            min = vector2(536,-806),
            max = vector2(650,-708),
            quadType = 0
        }
    }
end

if cityName == "Kingdom" then
    WaterBounds = {
        "setquadbounds 499 542 -884 650 -742 0",
        "setquadbounds 500 536 -806 650 -708 0",
        "setquadbounds 49 -3268 500 -3092 588 0",
    }
end

function StartWaterQuadCity()
    if WaterBounds and #WaterBounds > 0 then    
        for _, bounds in ipairs(WaterBounds) do
            ExecuteCommand(bounds)
        end
    end
end

AddEventHandler("onResourceStart",function(resourceName)
    if resourceName == GetCurrentResourceName() then
        StartWaterQuadCity()
    end
end)

AddEventHandler('playerSpawned', function(resource)
    StartWaterQuadCity()
end)

RegisterNetEvent("vRP:Active")
AddEventHandler("vRP:Active",function(Passport,Name)
    StartWaterQuadCity()
end)

RegisterNetEvent("admin:setBald")
AddEventHandler("admin:setBald",function()
    local ped = PlayerPedId()
    local model = GetEntityModel(ped)
    local hairstyle = 0

    if model == GetHashKey("mp_m_freemode_01") then
        hairstyle = 0
    elseif model == GetHashKey("mp_f_freemode_01") then
        hairstyle = 0
    end
    SetPedComponentVariation(ped, 2, hairstyle, 0, 2)
end)

RegisterNetEvent("admin:Attach")
AddEventHandler("admin:Attach",function(entity)
    AttachEntityToEntity(PlayerPedId(),GetPlayerPed(GetPlayerFromServerId(entity)),11816,0.0,0.4,0.0,0.0,0.0,0.0,false,false,false,false,2,true)
end)

RegisterNetEvent("admin:RemAttach")
AddEventHandler("admin:RemAttach",function()
    DetachEntity(PlayerPedId(),false,false)
end)

exports("IsUsingFreecam",IsUsingFreecam)