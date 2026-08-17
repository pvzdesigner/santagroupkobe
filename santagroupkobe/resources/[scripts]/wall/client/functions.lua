---@type table
local Config = {
    Player = {
        menus = {
            {
                title = _t("editGroupsTitle"),
                options = {
                    { name = _t("removeOption"), key = 'RemGroup' },
                    { name = _t("addOption"), key = 'AddGroup' },
                    { name = _t("listOption"), key = 'ListGroups' },
                    { name = _t("banOption"), key = 'Ban' },
                    { name = _t("specOption"), key = 'Spec' },
                }
            },
            {
                title = _t("playerInteractionTitle"),
                options = {
                    { name = _t("godOption"), key = 'God' },
                    { name = _t("godSquareOption"), key = 'GodPraca' },
                    { name = _t("armorOption"), key = 'Armor' },
                    { name = _t("giveItemOption"), key = 'GiveItem' },
                    { name = _t("skinOption"), key = 'Skin' },
                    { name = _t("listLoginOption"), key = 'ListLogin' },
                    -- { name = _t("knockdownOption"), key = 'Knockdown' },
                }
            },
            {
                title = _t("playerInfoTitle"),
                options = {
                    { name = _t("copyIdOption"), key = 'GetPassport' },
                    { name = _t("discordIdOption"), key = 'GetDiscord' },
                    { name = _t("purchasedOption"), key = 'GetPurchased' },
                    { name = _t("whatsappOption"), key = 'GetWhatsApp' },
                    { name = _t("bansOption"), key = 'GetPlayerBans' },
                }
            },
            -- {
            --     title = '',
            --     options = {
            --         { name = _t("kickOption"), key = 'Kick' },
            --         { name = _t("banOption"), key = 'Ban' },
            --     }
            -- },
        }
    },

    Vehicle = {
        menus = {
            -- {
            --     title = '',
            --     options = {
            --         { name = _t("deleteOption"), key = 'Delete' },
            --         { name = _t("fixOption"), key = 'Fix' },
            --         { name = _t("tuningOption"), key = 'Tuning' },
            --         { name = _t("fuelOption"), key = 'Fuel' },
            --     }
            -- },
            -- {
            --     title = '',
            --     options = {
            --         { name = _t("changePlateOption"), key = 'ChangePlate' },
            --         { name = _t("toggleLockOption"), key = 'ToggleLock' },
            --     }
            -- },
            {
                title = _t("vehicleInfoTitle"),
                options = {
                    { name = _t("showOwnerOption"), key = 'ShowOwner' }
                }
            },
            -- {
            --     title = '',
            --     options = {
            --         { name = _t("driveOption"), key = 'Drive' },
            --         { name = _t("moveOption"), key = 'Move' },
            --         { name = _t("tpInOption"), key = 'TpIn' },
            --     }
            -- }
        }
    }
}

local FilterNewbie = false

---@type table
local WallConfig = {
    Source = false,
    Passport = true,
    Health = true,
    Vehicle = true,
}

local rgbTable = {
    "~r~",
    "~g~",
    "~b~",
    "~y~",
    "~p~",
    "~o~",
    "~w~",
}

---@type table
local PlayersInfos = {}
---@type string
local OpenedType = ''
---@type number
local OpenedEntity = 0
---@type boolean
local IsActive = false
---@type number
local ViewDistance = 300 -- by default, the view distance is the same as fivem onesync
---@type table
local VehicleOffsets = {
    [-1] = {-1.2, 1.2},
    [0] = {1.2, 1.2},
    [1] = {-1.2, 0.0},
    [2] = {1.2, 0.0},
    [3] = {-1.2, -1.2},
    [4] = {1.2, -1.2},
    [5] = {-1.2, -2.4},
    [6] = {1.2, -2.4},
}
---@type boolean
local Hitting = false
--- Draws the text in 3D.
---@param x number
---@param y number
---@param z number
---@param text string
---@return nil
local function DrawTopText3D(x, y, z, text)
    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    
    if onScreen then
        SetTextScale(0.35,0.35)
        SetTextFont(4)
        SetTextDropShadow(1, 0, 0, 0, 255)
        SetTextOutline()
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry('STRING')
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

local function DrawBottomText3D(x, y, z, text, Distance)
    local Newz = 0.22
    if Distance > 10 then
        Newz = 0.35
        Newz = Newz + (Distance / 100)
    end
    local onScreen, _x, _y = World3dToScreen2d(x, y, z - Newz)
    
    if onScreen then
        SetTextScale(0.35,0.35)
        SetTextFont(4)
        SetTextDropShadow(1, 0, 0, 0, 255)
        SetTextOutline()
        SetTextProportional(1)
        SetTextColour(255, 255, 255, 215)
        SetTextEntry('STRING')
        SetTextCentre(1)
        AddTextComponentString(text)
        DrawText(_x, _y)
    end
end

--- Updates the players infos.
---@param tbl table
---@return nil
function client.UpdatePlayersInfos(tbl)
    for Source, Info in pairs(tbl) do
        PlayersInfos[tostring(Source)] = {
            ["identity"] = {
                id = Info[1],
                name = Info[2],
                purchased = Info[3]
            },
            ["job"] = Info[4],
            ["staff"] = Info[5],
            ["wall"] = Info[6],
            ["banned"] = Info[7],
            ["teste"] = Info[8],
            ["tracking"] = Info[9],
            ["bannedIp"] = Info[10],
            ["removeWall"] = Info[11],
        }
    end
end

RegisterNetEvent("wall:UpdateSource")
AddEventHandler("wall:UpdateSource", function(source,tbl)
    if tbl and tbl[1] then
        PlayersInfos[tostring(source)] = {
            ["identity"] = {
                id = tbl[1],
                name = tbl[2],
                purchased = tbl[3]
            },
            ["job"] = tbl[4],
            ["staff"] = tbl[5],
            ["wall"] = tbl[6],
            ["banned"] = tbl[7],
            ["teste"] = tbl[8],
            ["tracking"] = tbl[9],
            ["bannedIp"] = tbl[10],
            ["removeWall"] = tbl[11],
        }
    end
end)

RegisterNetEvent( 'net.wall.remove_source', function( source )
    PlayersInfos[tostring(source)] = nil

    if HasNetFreecamBySource( source ) then

        RemoveNetFreecam( source )
    end
end)

--- Toggles the admin blips.
---@param status boolean
---@param playersInfos table
---@return nil
function client.ToggleAdminBlips(status, playersInfos)
    IsActive = status
    if IsActive then
        CreateBlipThread()
    else
        RemoveAllNetFreecams()
    end
    
    if playersInfos then
        for Source, Info in pairs(playersInfos) do
            PlayersInfos[tostring(Source)] = {
                ["identity"] = {
                    id = Info[1],
                    name = Info[2],
                    purchased = Info[3]
                },
                ["job"] = Info[4],
                ["staff"] = Info[5],
                ["wall"] = Info[6],
                ["banned"] = Info[7],
                ["teste"] = Info[8],
                ["tracking"] = Info[9],
                ["bannedIp"] = Info[10],
                ["removeWall"] = Info[11],
            }
        end
    end
end

--- Get rotation from vector.
---@param rotation table
---@return table
local function RotationToDirection(rotation)
    local adjustedRotation = {
        x = (math.pi / 180) * rotation['x'],
        y = (math.pi / 180) * rotation['y'],
        z = (math.pi / 180) * rotation['z']
    }
    
    local direction = {
        x = -math.sin(adjustedRotation['z']) * math.abs(math.cos(adjustedRotation['x'])),
        y = math.cos(adjustedRotation['z']) * math.abs(math.cos(adjustedRotation['x'])),
        z = math.sin(adjustedRotation['x'])
    }
    
    return direction
end

--- Raycast from the game play camera.
---@param distance number
---@return boolean
---@return table
---@return number

function GetCoordsFromCam(Distance,Coords)
	local Rotation = GetFinalRenderedCamRot()
	local Adjuste = vec3((math.pi / 180) * Rotation["x"],(math.pi / 180) * Rotation["y"],(math.pi / 180) * Rotation["z"])
	local direction = vec3(-math.sin(Adjuste[3]) * math.abs(math.cos(Adjuste[1])),math.cos(Adjuste[3]) * math.abs(math.cos(Adjuste[1])),math.sin(Adjuste[1]))

	return vec3(Coords[1] + direction[1] * Distance, Coords[2] + direction[2] * Distance, Coords[3] + direction[3] * Distance)
end

function RayCastGamePlayCamera()
	local Ped = PlayerPedId()
	local Cam = GetFinalRenderedCamCoord()
	local Cam2 = GetCoordsFromCam(200.0,Cam)
	local Handle = StartExpensiveSynchronousShapeTestLosProbe(Cam,Cam2,-1,Ped,4)
	local a,Hit,Coords,b,entity = GetShapeTestResult(Handle)

	return Hit,Coords,entity
end
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

---@param Miliseconds any
---@return string
function FormatTimerWallStreet(Miliseconds)
    local Seconds = math.floor(Miliseconds / 1000)
    local Minutes = math.floor(Seconds / 60)
    Seconds = Seconds % 60
    return string.format("%02d:%02d", Minutes, Seconds)
end

--- Format negative timer.
--- @param Miliseconds number
--- @return string
function FormatNegativeTimerWallStreet(Miliseconds)
    Miliseconds = Miliseconds * -1
    local Seconds = math.floor(Miliseconds / 1000)
    local Minutes = math.floor(Seconds / 60)
    Seconds = Seconds % 60
    return string.format("%02dmin atrás", Minutes)
end
--- Creates the blip thread.
---@return nil
function CreateBlipThread()
    local KVP = GetResourceKvpString("WallConfig")
    if KVP and KVP ~= "" then
        WallConfig = json.decode(KVP)
    end
    CreateThread(function()
        local playerPedId = PlayerPedId()
        while IsActive do

            local numIsTalking = 0

            local ThreadDelay = 1
            --local Players = GetActivePlayers()
            local PlayerCoords = GetFinalRenderedCamCoord()
            local Players = GetGamePool('CPed')

            for i = 1, #Players do
                local v = Players[i]
                local PlayersId = NetworkGetPlayerIndexFromPed(v)
                local PlayerServerId = GetPlayerServerId(PlayersId)
                local PlayerPed = v
                if PlayersId == PlayerId() then goto Skip end

                local isTalking = MumbleIsPlayerTalking( PlayersId )

                -- print( ('isTalking: %s v: %s typeof: %s selfIsTalking=%s'):format( isTalking, v, type(v), MumbleIsPlayerTalking( PlayerId() ) ) )

                if isTalking then

                    numIsTalking += 1

                    function DRAW(Text,Font,x,y,Scale,R,G,B,A)
                        SetTextScale(Scale,Scale)
                        SetTextEntry("STRING")
                        AddTextComponentString(Text)
                        DrawText(x,y)
                    end

                    local isTalkingDisplayText      = ('* "%s" (%s)'):format( GetPlayerName( PlayersId ), GetPlayerServerId( PlayersId ) )
                    local isTalkingDisplayTextOffset        = 0.1 + (numIsTalking * 0.05)

                    DRAW( isTalkingDisplayText, 0, 0.9, isTalkingDisplayTextOffset, 0.35, 255, 255, 255, 255 )
                end

                if not IsPedAPlayer(PlayerPed) then goto Skip end

                local PedCoords = GetEntityCoords(PlayerPed)


                local DistanceToPed = #(PedCoords - PlayerCoords)
                
                if not PlayerServerId or PlayerPed == 0 or not IsPedAPlayer(PlayerPed) or not DoesEntityExist(PlayerPed) then goto Skip end

                local PlayerInfo = PlayersInfos[tostring(PlayerServerId)]
                if not PedCoords then goto Skip end
                if not PlayerInfo then
                    local VehicleOffset, VehicleSeat = GetPedVehicleOffset(PlayerPed)
                    local x = (VehicleSeat and VehicleOffset.x or PedCoords.x)
                    local y = (VehicleSeat and VehicleOffset.y or PedCoords.y)
                    local z = PedCoords.z + 1.0
                    local SourceText = ('\n SOURCE: [~g~' .. PlayerServerId .. '~w~]') or ''
                    local topText = SourceText
                    DrawTopText3D(x, y, z, topText)
                    local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
                    local currentTime = GetGameTimer()
                    local hue = (currentTime % 30000) / 15000.0
                    local x, y, z = table.unpack(GetEntityCoords(PlayerPed))
                    local r, g, b = HSVToRGB(hue, 1, 1)
                    DrawLine(cx, cy, cz, x, y, z, r,g,b, 255)
                    goto Skip
                end
                if DistanceToPed > ViewDistance then goto Skip end
                local nameColor = '~w~'
                if FilterNewbie and PlayerInfo.tracking and type(PlayerInfo.tracking) == "number" then
                    if PlayerInfo.tracking <= 10 then
                        nameColor = rgbTable[math.random(1, #rgbTable)]
                        local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
                        local currentTime = GetGameTimer()
                        local hue = (currentTime % 30000) / 15000.0
                        local x, y, z = table.unpack(GetEntityCoords(PlayerPed))
                        local r, g, b = HSVToRGB(hue, 1, 1)
                        DrawLine(cx, cy, cz, x, y, z, r,g,b, 255)
                    end
                end
                local PlayerName = (IsEntityVisible(PlayerPed) and nameColor or '~r~')..''..PlayerInfo.identity.name..'~w~'
                local PlayerHealth = GetEntityHealth(PlayerPed)
                local Morto = '~r~MORTO~w~'
                if Entity(PlayerPed)["state"]["Killer"] then
                    local KillerId = Entity(PlayerPed)["state"]["Killer"][2 --[[ killerPassport --]] ]
                    if KillerId then
                        Morto = "~r~[MORTO p/ "..KillerId.."]~w~"
                    end
                end
                PlayerHealth = PlayerHealth > 100 and '~g~' .. PlayerHealth .. '~w~' or Morto
                local PlayerArmor = '~b~' .. GetPedArmour(PlayerPed) .. '~w~'
                
                local SideText = ''
                if PlayerInfo.job then
                    SideText = SideText .. '~y~' .. PlayerInfo.job .. '~w~'
                end
                local PurchasedText = ''

                if PlayerInfo.identity.purchased >= 100000 then
                    PurchasedText = '~g~$$$$$~y~ '
                elseif PlayerInfo.identity.purchased >= 50000 then
                    PurchasedText = '~g~$$$$~y~ '
                elseif PlayerInfo.identity.purchased >= 20000 then
                    PurchasedText = '~g~$$$~y~ '
                elseif PlayerInfo.identity.purchased >= 5000 then
                    PurchasedText = '~g~$$~y~ '
                elseif PlayerInfo.identity.purchased > 0 then
                    PurchasedText = '~g~$~y~ '
                end

                local BannedText = ''
                if PlayerInfo.banned then
                    BannedText = '\n~r~B~w~ '
                end

                local BannedIpText = ''
                if PlayerInfo.bannedIp then
                    BannedIpText = '\n~r~IP~w~'
                end

                local Wall = ''
                local removeWall = PlayerInfo.removeWall
                if PlayerInfo.wall and not removeWall then
                    Wall = '\n[~g~WALL~w~]'
                end
                
                local SourceText = (WallConfig["Source"] and '\n SOURCE: [~g~' .. PlayerServerId .. '~w~]') or ''
                local Staff = (PlayerInfo.staff and '[~r~'..PlayerInfo.staff..'~w~]') or ''
                local VehicleOffset, VehicleSeat = GetPedVehicleOffset(PlayerPed)
                local WallStreet = ""
                local WallStreetState = Player(PlayerServerId)["state"]["WallStreetTimer"]
                if removeWall and not IsEntityVisible(PlayerPed) then
                    goto Skip
                end
                if WallStreetState then
                    if type(WallStreetState["WallStreetTimer"]) == "number" and WallStreetState["WallStreetTimer"] then
                        
                        if not WallStreetState["WallStreetDate"] then
                            local WallStreetTimer = WallStreetState["WallStreetTimer"] - GetNetworkTimeAccurate()
                            if WallStreetTimer and WallStreetTimer > 0 then
                                WallStreet = "~r~["..WallStreetState["admin"].."]~w~ | ~g~("..FormatTimerWallStreet(WallStreetTimer)..")~w~\n"
                            else
                                -- 18min atrás
                                WallStreet = "~g~["..WallStreetState["admin"].."]~w~  | ~w~("..FormatNegativeTimerWallStreet(WallStreetTimer)..")~w~\n"
                            end
                        else
                            WallStreet = "~g~["..WallStreetState["admin"].."]~w~ | ~w~("..WallStreetState["WallStreetDate"]..")~w~\n"
                        end
                    end
                end
                local x = (VehicleSeat and VehicleOffset.x or PedCoords.x)
                local y = (VehicleSeat and VehicleOffset.y or PedCoords.y)
                local z = PedCoords.z + 1.0
                --local flag = PlayerInfo.country
                local topText = PurchasedText..BannedText..BannedIpText..(WallConfig["Passport"] and '[~o~' .. PlayerInfo.identity.id .. '~w~] ' or '') .. PlayerName .. ' (' .. SideText .. ') '..(PlayerInfo.staff and Staff or '')..''..(isTalking and '\n~g~'.._t('speaking')..'~w~' or '')
                local bottomText = WallStreet..""..(WallConfig["Health"] and PlayerHealth .. ' | ' .. PlayerArmor .. '' or '')..SourceText..''.. Wall .. (WallConfig["Vehicle"] and (VehicleSeat and '\n~y~P' .. (VehicleSeat + 2) .. '~w~' or '') or '')
                
                DrawTopText3D(x, y, z, topText)
                DrawBottomText3D(x, y, z-1.2, bottomText,DistanceToPed)
                
                ::Skip::
            end

            for _, netfreecam in ipairs( GetNetFreecams() ) do

                local distance = #( netfreecam.pos  - PlayerCoords )

                if distance <= ViewDistance then

                    local playerInfo = PlayersInfos[ tostring( netfreecam.source ) ]

                    local topText = ''
                    local bottomText = ('SOURCE: [~g~%s~w~]'):format( netfreecam.source )

                    if playerInfo then

                        topText = (WallConfig["Passport"] and '[~o~' .. playerInfo.identity.id .. '~w~] ' or '') .. playerInfo.identity.name .. ' (' .. playerInfo.job .. ') '..(playerInfo.staff and playerInfo.staff or '')

                        if playerInfo.wall then

                            bottomText = bottomText .. '\n[~g~WALL~w~]'
                        end
                    end

                    DrawTopText3D( netfreecam.pos.x, netfreecam.pos.y, netfreecam.pos.z, topText )
                    DrawBottomText3D( netfreecam.pos.x, netfreecam.pos.y, netfreecam.pos.z - 1.2 , bottomText, distance )
                end
            end

            Wait(ThreadDelay)
        end
    end)

    Citizen.CreateThread(function()
        while IsActive do
            Citizen.Wait(0)
            local screenX, screenY = 0.5, 0.5
            local endX, endY = 0.75, 0.5
            DrawRect(screenX, screenY, 0.0025, 0.005, 255, 0, 0, 150) -- Red dot.
            DrawLine(screenX, screenY, 0.0, endX, endY, 0.0, 255, 0, 0, 255) -- Red line.
        end
    end)

    CreateThread(function()
        while IsActive do
            local ThreadDelay = 250
            local Hit,EntCoords,Entity = RayCastGamePlayCamera(200.0)
            local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
            if Hit and Entity then
                Hitting = true
                DrawBoxAroundEntity(Entity, EntCoords)
                if Hit and Entity and DoesEntityExist(Entity) then
                    if IsEntityAPed(Entity) or IsEntityAVehicle(Entity) then
                        ThreadDelay = 1
                    end
                    if IsEntityAPed(Entity) and IsPedAPlayer(Entity) and IsDisabledControlJustReleased(0,38) then
                        local PlayerIndex = NetworkGetPlayerIndexFromPed(Entity)
                        if PlayerIndex and PlayerIndex ~= -1 then
                            local SourceId = GetPlayerServerId(PlayerIndex)
                            local PlayerInfo = PlayersInfos[tostring(SourceId)]
                            if PlayerInfo then
                                local MenuTitle = PlayerInfo.identity.id .. " | " .. PlayerInfo.identity.name
                                OpenAdminNUI('Player', SourceId, MenuTitle)
                            end
                        end
                    elseif IsEntityAVehicle(Entity) and IsDisabledControlJustReleased(0,38) then
                        local VehModel = GetEntityArchetypeName(Entity) or "N/E"
                        local MenuTitle = tostring(VehModel):upper() .. " | " .. GetVehicleNumberPlateText(Entity)
                        OpenAdminNUI('Vehicle', Entity, MenuTitle)
                    end
                end
            else
                Hitting = false
            end
            Wait(ThreadDelay)
        end
    end)
end

--- Get ped vehicle offset.
---@param Ped number
---@return table
---@return number | boolean
function GetPedVehicleOffset(Ped)
    local PedSeat = -2
    if not Ped or not DoesEntityExist(Ped) or not IsEntityAPed(Ped) or not IsPedAPlayer(Ped) then
        goto finish
    end
    
    if GetVehiclePedIsIn(Ped, false) ~= 0 then
        local Vehicle = GetVehiclePedIsIn(Ped, false)
        if not Vehicle or not DoesEntityExist(Vehicle) or not IsEntityAVehicle(Vehicle) then
            goto finish
        end
    end
    
    for i = -1, 6 do
        if GetPedInVehicleSeat(GetVehiclePedIsIn(Ped, false), i) == Ped then
            PedSeat = i
            break
        end
    end
    
    if PedSeat ~= -2 and VehicleOffsets[PedSeat] then
        return GetOffsetFromEntityInWorldCoords(GetVehiclePedIsIn(Ped, false), VehicleOffsets[PedSeat][1], VehicleOffsets[PedSeat][2], 0.0), PedSeat
    end
    
    ::finish::
    return {0.0,0.0}, false
end

--- Draws a box around the ped.
---@param Entity number
---@return nil
function DrawBoxAroundEntity(Entity, LookingAtCoords)
    local cx, cy, cz = table.unpack(GetEntityCoords(PlayerPedId()))
    
    if not Entity or not DoesEntityExist(Entity) or not (IsEntityAVehicle(Entity) or (IsEntityAPed(Entity) and IsPedAPlayer(Entity))) then
        return
    end
    
    local x, y, z = table.unpack(GetEntityCoords(Entity))
    DrawLine(cx, cy, cz, x, y, z, 255, 255, 255, 255)
    
    if IsEntityAPed(Entity) then
        local LineOneBegin = GetOffsetFromEntityInWorldCoords(Entity, -0.3, -0.3, -0.9)
        local LineOneEnd = GetOffsetFromEntityInWorldCoords(Entity, 0.3, -0.3, -0.9)
        local LineTwoBegin = GetOffsetFromEntityInWorldCoords(Entity, 0.3, -0.3, -0.9)
        local LineTwoEnd = GetOffsetFromEntityInWorldCoords(Entity, 0.3, 0.3, -0.9)
        local LineThreeBegin = GetOffsetFromEntityInWorldCoords(Entity, 0.3, 0.3, -0.9)
        local LineThreeEnd = GetOffsetFromEntityInWorldCoords(Entity, -0.3, 0.3, -0.9)
        local LineFourBegin = GetOffsetFromEntityInWorldCoords(Entity, -0.3, -0.3, -0.9)
        local TLineOneBegin = GetOffsetFromEntityInWorldCoords(Entity, -0.3, -0.3, 0.8)
        local TLineOneEnd = GetOffsetFromEntityInWorldCoords(Entity, 0.3, -0.3, 0.8)
        local TLineTwoBegin = GetOffsetFromEntityInWorldCoords(Entity, 0.3, -0.3, 0.8)
        local TLineTwoEnd = GetOffsetFromEntityInWorldCoords(Entity, 0.3, 0.3, 0.8)
        local TLineThreeBegin = GetOffsetFromEntityInWorldCoords(Entity, 0.3, 0.3, 0.8)
        local TLineThreeEnd = GetOffsetFromEntityInWorldCoords(Entity, -0.3, 0.3, 0.8)
        local TLineFourBegin = GetOffsetFromEntityInWorldCoords(Entity, -0.3, -0.3, 0.8)
        local ConnectorOneBegin = GetOffsetFromEntityInWorldCoords(Entity, -0.3, 0.3, 0.8)
        local ConnectorOneEnd = GetOffsetFromEntityInWorldCoords(Entity, -0.3, 0.3, -0.9)
        local ConnectorTwoBegin = GetOffsetFromEntityInWorldCoords(Entity, 0.3, 0.3, 0.8)
        local ConnectorTwoEnd = GetOffsetFromEntityInWorldCoords(Entity, 0.3, 0.3, -0.9)
        local ConnectorThreeBegin = GetOffsetFromEntityInWorldCoords(Entity, -0.3, -0.3, 0.8)
        local ConnectorThreeEnd = GetOffsetFromEntityInWorldCoords(Entity, -0.3, -0.3, -0.9)
        local ConnectorFourBegin = GetOffsetFromEntityInWorldCoords(Entity, 0.3, -0.3, 0.8)
        local ConnectorFourEnd = GetOffsetFromEntityInWorldCoords(Entity, 0.3, -0.3, -0.9)
        
        
        DrawLine(ConnectorOneBegin.x, ConnectorOneBegin.y, ConnectorOneBegin.z, ConnectorOneEnd.x, ConnectorOneEnd.y, ConnectorOneEnd.z, 255, 255, 255, 255)
        DrawLine(ConnectorTwoBegin.x, ConnectorTwoBegin.y, ConnectorTwoBegin.z, ConnectorTwoEnd.x, ConnectorTwoEnd.y, ConnectorTwoEnd.z, 255, 255, 255, 255)
        DrawLine(ConnectorThreeBegin.x, ConnectorThreeBegin.y, ConnectorThreeBegin.z, ConnectorThreeEnd.x, ConnectorThreeEnd.y, ConnectorThreeEnd.z, 255, 255, 255, 255)
        DrawLine(ConnectorFourBegin.x, ConnectorFourBegin.y, ConnectorFourBegin.z, ConnectorFourEnd.x, ConnectorFourEnd.y, ConnectorFourEnd.z, 255, 255, 255, 255)
        DrawLine(LineOneBegin.x, LineOneBegin.y, LineOneBegin.z, LineOneEnd.x, LineOneEnd.y, LineOneEnd.z, 255, 255, 255, 255)
        DrawLine(LineTwoBegin.x, LineTwoBegin.y, LineTwoBegin.z, LineTwoEnd.x, LineTwoEnd.y, LineTwoEnd.z, 255, 255, 255, 255)
        DrawLine(LineThreeBegin.x, LineThreeBegin.y, LineThreeBegin.z, LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, 255, 255, 255, 255)
        DrawLine(LineThreeEnd.x, LineThreeEnd.y, LineThreeEnd.z, LineFourBegin.x, LineFourBegin.y, LineFourBegin.z, 255, 255, 255, 255)
        DrawLine(TLineOneBegin.x, TLineOneBegin.y, TLineOneBegin.z, TLineOneEnd.x, TLineOneEnd.y, TLineOneEnd.z, 255, 255, 255, 255)
        DrawLine(TLineTwoBegin.x, TLineTwoBegin.y, TLineTwoBegin.z, TLineTwoEnd.x, TLineTwoEnd.y, TLineTwoEnd.z, 255, 255, 255, 255)
        DrawLine(TLineThreeBegin.x, TLineThreeBegin.y, TLineThreeBegin.z, TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, 255, 255, 255, 255)
        DrawLine(TLineThreeEnd.x, TLineThreeEnd.y, TLineThreeEnd.z, TLineFourBegin.x, TLineFourBegin.y, TLineFourBegin.z, 255, 255, 255, 255)
    elseif IsEntityAVehicle(Entity) then
        local minVec, maxVec = GetModelDimensions(GetEntityModel(Entity))
        local length = maxVec.y - minVec.y
        local width = maxVec.x - minVec.x
        local height = (maxVec.z - minVec.z) / 2
        
        local frontLeft = GetOffsetFromEntityInWorldCoords(Entity, -width / 2, length / 2, -height)
        local frontRight = GetOffsetFromEntityInWorldCoords(Entity, width / 2, length / 2, -height)
        local rearLeft = GetOffsetFromEntityInWorldCoords(Entity, -width / 2, -length / 2, -height)
        local rearRight = GetOffsetFromEntityInWorldCoords(Entity, width / 2, -length / 2, -height)
        
        local frontLeftTop = GetOffsetFromEntityInWorldCoords(Entity, -width / 2, length / 2, height)
        local frontRightTop = GetOffsetFromEntityInWorldCoords(Entity, width / 2, length / 2, height)
        local rearLeftTop = GetOffsetFromEntityInWorldCoords(Entity, -width / 2, -length / 2, height)
        local rearRightTop = GetOffsetFromEntityInWorldCoords(Entity, width / 2, -length / 2, height)
        
        DrawLine(frontLeft.x, frontLeft.y, frontLeft.z, frontRight.x, frontRight.y, frontRight.z, 255, 255, 255, 255)
        DrawLine(frontRight.x, frontRight.y, frontRight.z, rearRight.x, rearRight.y, rearRight.z, 255, 255, 255, 255)
        DrawLine(rearRight.x, rearRight.y, rearRight.z, rearLeft.x, rearLeft.y, rearLeft.z, 255, 255, 255, 255)
        DrawLine(rearLeft.x, rearLeft.y, rearLeft.z, frontLeft.x, frontLeft.y, frontLeft.z, 255, 255, 255, 255)
        
        DrawLine(frontLeftTop.x, frontLeftTop.y, frontLeftTop.z, frontRightTop.x, frontRightTop.y, frontRightTop.z, 255, 255, 255, 255)
        DrawLine(frontRightTop.x, frontRightTop.y, frontRightTop.z, rearRightTop.x, rearRightTop.y, rearRightTop.z, 255, 255, 255, 255)
        DrawLine(rearRightTop.x, rearRightTop.y, rearRightTop.z, rearLeftTop.x, rearLeftTop.y, rearLeftTop.z, 255, 255, 255, 255)
        DrawLine(rearLeftTop.x, rearLeftTop.y, rearLeftTop.z, frontLeftTop.x, frontLeftTop.y, frontLeftTop.z, 255, 255, 255, 255)
        
        DrawLine(frontLeft.x, frontLeft.y, frontLeft.z, frontLeftTop.x, frontLeftTop.y, frontLeftTop.z, 255, 255, 255, 255)
        DrawLine(frontRight.x, frontRight.y, frontRight.z, frontRightTop.x, frontRightTop.y, frontRightTop.z, 255, 255, 255, 255)
        DrawLine(rearRight.x, rearRight.y, rearRight.z, rearRightTop.x, rearRightTop.y, rearRightTop.z, 255, 255, 255, 255)
        DrawLine(rearLeft.x, rearLeft.y, rearLeft.z, rearLeftTop.x, rearLeftTop.y, rearLeftTop.z, 255, 255, 255, 255)
        
    end
end

--- Handles the NUI opening.
---@param EntityType string
---@param EntityId number
---@param MenuTitleName string | nil
---@return nil
function OpenAdminNUI(EntityType, EntityId, MenuTitleName)
    OpenedType = EntityType
    OpenedEntity = EntityId
    
    local ConfigToOpen = Config[OpenedType]
    ConfigToOpen.title = MenuTitleName or "Gerenciador de Entidades"
    SendNUIMessage({ name = 'updateData', payload = ConfigToOpen })
    SendNUIMessage({ name = 'visibility', payload = true })
    SetNuiFocus(true, true)
    SetCursorLocation(0.8, 0.4)
end

--- Closes the NUI.
---@return nil
function CloseNUI()
    SetNuiFocus(false, false)
    SendNUIMessage({ name = 'visibility', payload = false })
end

--- Adaptação simples para conseguir usar essas funções do wall
--- a partir de outros scripts
---@param handlerName 'GetPlayerBans'
---@param passport    Passport
AddEventHandler( 'wall.trigger_manage_player_handler', function( handlerName, passport )

    server._ManagePlayer( handlerName, passport )
end)

--- Handles the NUI option selection.
RegisterNUICallback('selectOption', function(Data, Cb)
    
    if OpenedType == "Player" then
        local PlayerInfo = PlayersInfos[tostring(OpenedEntity)]
        if not PlayerInfo or not PlayerInfo.identity or not PlayerInfo.identity.id then
            TriggerEvent('Notify', 'vermelho', 'Jogador não encontrado, reconecte no servidor.', 5000)
            return
        end
        server._ManagePlayer(PlayerInfo.identity.id, Data)
    elseif OpenedType == "Vehicle" then
        local VehNet = NetworkGetNetworkIdFromEntity(OpenedEntity)
        if not NetworkDoesNetworkIdExist(VehNet) then return end
        server._ManageVehicle(VehNet, OpenedEntity, Data)
    end
    
    CloseNUI()
    Cb(true)
end)

--- Handles the NUI closing.
RegisterNUICallback('closeUI', function(Data, Cb)
    CloseNUI()
    Cb(true)
end)

--- Command to set the blip distance.
RegisterCommand('blips-dist', function(_, args)
    if not args[1] then
        ViewDistance = 300
        TriggerEvent('Notify', 'verde', 'Distância resetada: 300m.', 3000)
    end
    
    local NewDistance = parseInt(args[1])
    if NewDistance > 474 then NewDistance = 474 end
    
    ViewDistance = NewDistance
    TriggerEvent('Notify', 'verde', 'Nova distância: '..NewDistance..'m.', 3000)
end)

RegisterCommand('wallconfig2', function(_, args)
    local Keyboard = lib.inputDialog("Wall Config",{
        {type = 'checkbox', label = _t("configSourcePrompt"), checked = WallConfig.Source or false},
        {type = 'checkbox', label = _t("configPassportPrompt"), checked = WallConfig.Passport or false},
        {type = 'checkbox', label = _t("configHealthPrompt"), checked = WallConfig.Health or false},
        {type = 'checkbox', label = _t("configVehiclePrompt"), checked = WallConfig.Vehicle or false},
    })
    if Keyboard then
        local Source = Keyboard[1]
        local Passport = Keyboard[2]
        local Health = Keyboard[3]
        local Vehicle = Keyboard[4]
        WallConfig = {
            Source = Source,
            Passport = Passport,
            Health = Health,
            Vehicle = Vehicle,
        }
        SetResourceKvp("WallConfig",json.encode(WallConfig))
    end
end)

RegisterCommand('filternewbie', function(_, args)
    FilterNewbie = not FilterNewbie
end)

---@class NetFreecam
---@field source number
---@field pos vector3

---@type NetFreecam[]
local gNetFreecams = { }

---@type table<Source, NetFreecam>
local gNetFreecamBySource = { }

---@return NetFreecam[]
function GetNetFreecams()
    return gNetFreecams
end

---@param netfreecam NetFreecam
---@param pos        vector3
function SetNetFreecamPosition( netfreecam, pos )

    netfreecam.pos = pos
end

function AddNetFreecam( source, pos )

    ---@type NetFreecam
    local netfreecam =
    {
        source = source,
        pos    = pos,
    }

    table.insert( gNetFreecams, netfreecam )

    gNetFreecamBySource[ source ] = netfreecam
end

function RemoveNetFreecam( source )

    local netfreecam = gNetFreecamBySource[ source ]

    assert( netfreecam, 'NetFreecam index not found for source ' .. source )

    for index, netfreecam in pairs( gNetFreecams ) do

        if netfreecam.source == source then

            table.remove( gNetFreecams, index )

            break
        end
    end

    gNetFreecamBySource[ source ] = nil
end

---@param source Source
---@return boolean
function HasNetFreecamBySource( source )

    return gNetFreecamBySource[ source ] ~= nil
end

function GetNetFreecamBySource( source )

    local netfreecam = gNetFreecamBySource[ source ]

    assert( netfreecam, 'NetFreecam index not found for source ' .. source )

    return netfreecam
end

function RemoveAllNetFreecams()

    table.wipe( gNetFreecams )
    table.wipe( gNetFreecamBySource )
end

---@class NetFreecamPositionUpdate
---@field [1] Source
---@field [2] vector3

RegisterNetEvent('net.net_freecam.remove', function(source)

    if HasNetFreecamBySource(source) then

        RemoveNetFreecam(source)
    end
end)

---@param positionUpdatesStr 
RegisterNetEvent( 'net.net_freecam.position_updates', function( positionUpdatesStr )

    local cursor = 1

    local localSource = ToSource( GetPlayerServerId( PlayerId() ) )

    while cursor < #positionUpdatesStr do

        local source = string.unpack( '>I2', positionUpdatesStr, cursor )

        cursor += 2 -- 1 uint16

        local worldlimitsposition = sx.msgpackextensions.unpackers.worldlimitsvector3( positionUpdatesStr, cursor )

        cursor += 6 -- 3 int16

        -- A source é -1 quando o update da NetFreecam é invalidado
        -- que ocorre quando um update já foi enviado porém o player saiu do freecam
        if source ~= 0 and source ~= localSource then

            if not HasNetFreecamBySource( source ) then

                AddNetFreecam( source, worldlimitsposition )

                -- print('AddNetFreecam', source, json.encode( worldlimitsposition, { indent = true }))
            else
                local netfreecam = GetNetFreecamBySource( source )

                -- print('GetNetFreecamBySource', source, json.encode( netfreecam, { indent = true }))

                SetNetFreecamPosition( netfreecam, worldlimitsposition )
            end
        end
    end
end)


RegisterNetEvent("wall:spec",function(source,nPassport)
    ExecuteCommand("spec " .. nPassport)
end)