
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBAL
-----------------------------------------------------------------------------------------------------------------------------------------
Display = false
local DisableSounds = false
local ActiveMic = true
Player = GetPlayerServerId(PlayerId())
inMap = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Road = "Alta-Street"
local Crossing = "Hawick Avenue"
-----------------------------------------------------------------------------------------------------------------------------------------
-- PRINCIPAL
-----------------------------------------------------------------------------------------------------------------------------------------
local Health = 999
local Armour = 999
local Stamine = 999
local Hood = false
local Hours = 0
local Minutes = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- THIRST
-----------------------------------------------------------------------------------------------------------------------------------------
local Thirst = nil
local ThirstTimer = nil
if GlobalState["Hunger"] then
    Thirst = 999
    ThirstTimer = GetGameTimer()
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
local Wanted = 0
local WantedTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
local Reposed = 0
local ReposedTimer = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- RADIO
-----------------------------------------------------------------------------------------------------------------------------------------
local PlayerTalking = {}
local PlayerName = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUNGER
-----------------------------------------------------------------------------------------------------------------------------------------
local Hunger = 999
local HungerTimer = GetGameTimer()
local TableRoad,TableCross = {},{}
local RoadsTxt,CrossTxt = "",""
cityName = GetConvar("cityName", "")
local Logos = {
    ["Dev-Season3"] = "./assets/images/logo.webp",
    ["Santa"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/santa.png",
    ["Grande"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/grande.png",
    ["Alexandria"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/alexandria2.png",
    ["Maresia"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/maresia.png",
    ["Galaxy"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/galaxy.png",
    ["Universo"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/universo.png",
    ["Gaules"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/santa.png",
    ["Fronteira"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/santa.png",
    ["CidadeNobre"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/nobre.png",
    ["Caravelas"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/caravelas2.png",	
    ["Kingdom"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/kng.png",
}
--[[
local Day = 1
local Month = 1
local MonthsText = {
    [1] = "JAN",
    [2] = "FEV",
    [3] = "MAR",
    [4] = "ABR",
    [5] = "MAI",
    [6] = "JUN",
    [7] = "JUL",
    [8] = "AGO",
    [9] = "SET",
    [10] = "OUT",
    [11] = "NOV",
    [12] = "DEZ",
}
--]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADTIMER
-----------------------------------------------------------------------------------------------------------------------------------------
local WORLD_CLOCK_TIME_SCALE = 48.0

function GetRealWorldMillisecondsUntilGameHours(timeNow, minutesNow, timeEnd)
    local nowInMinutes = (timeNow * 60) + minutesNow
    local endInMinutes = timeEnd * 60 + 59

    local diffMinutes = endInMinutes - nowInMinutes

    if diffMinutes < 0 then
        diffMinutes = diffMinutes + (24 * 60)
    end

    local realSecondsPerGameMinute = 60 / WORLD_CLOCK_TIME_SCALE -- 1.25

    local realMilliseconds = diffMinutes * realSecondsPerGameMinute * 1000

    return realMilliseconds
end

local function IsTimeInRange(currentHour, startHour, endHour)
    if startHour <= endHour then
        return (currentHour >= startHour and currentHour <= endHour)
    else
        return (currentHour >= startHour or currentHour <= endHour)
    end
end

local isDisplayingZone = false
local function ShowZone(zoneName, hours, minutes, endHour)
    if isDisplayingZone and isDisplayingZone == zoneName then
        return
    end
    local timeBetween = GetRealWorldMillisecondsUntilGameHours(hours, minutes, endHour)
    SendNUIMessage({ 
      action = "Zone", 
      data = { Area = zoneName, time = timeBetween } 
    })
    isDisplayingZone = zoneName
end

local robberyTime = {}

function RobberyTime(forceUpdate)
    if GlobalState["DisableRobberyTime"] then
        SendNUIMessage({ action = "Zone", data = { Area = "none" } })
        isDisplayingZone = false
        return
    end

    local robberyTime = GlobalState["RobberyTime"]
    if not robberyTime or not robberyTime["North"] or not robberyTime["South"] then
        SendNUIMessage({ action = "Zone", data = { Area = "none" } })
        isDisplayingZone = false
        return 
    end
    
    local north = robberyTime["North"]
    local south = robberyTime["South"]

    local inZone = false

    if north.Start and north.End then
        if IsTimeInRange(Hours, north.Start, north.End) then
            ShowZone("norte", Hours, Minutes, north.End, forceUpdate)
            inZone = true
            return
        end
    end
    
    if south.Start and south.End then
        if IsTimeInRange(Hours, south.Start, south.End) then
            ShowZone("sul", Hours, Minutes, south.End, forceUpdate)
            inZone = true
            return
        end
    end
    
    if not inZone then
        SendNUIMessage({ action = "Zone", data = { Area = "none" } })
        isDisplayingZone = false
    end
end

---@param event WorldClockUpdatedEvent
AddEventHandler( 'worldstate:clock_updated', function( event )

    Hours   = event.hours
    Minutes = event.minutes
    Day     = event.day
    Month   = event.monthLabel
end)

HudStyle = {
    ["Maresia"] = "santa",
    ["Alexandria"] = "santa",
    ["Universo"] = "santa",
    ["Santa"] = "santa",
    ["CidadeNobre"] = "santa",
    ["Caravelas"] = "santa",
    ["Kingdom"] = "santa",
}

SpeedometerUnit = {
    ["Maresia"] = "KM/H",
    ["Alexandria"] = "KM/H",
    ["Universo"] = "KM/H",
    ["Santa"] = "KM/H",
    ["CidadeNobre"] = "KM/H",
    ["Caravelas"] = "KM/H",
    ["Kingdom"] = "MP/H",
}

RegisterNUICallback("nuiIsReady",function(Data,Callback)
    SendNUIMessage({ action = "SetHudType", data = { City = HudStyle[cityName] or "santa" } })
    SendNUIMessage({ action = "UpdateSpeedometerUnit", data = { Unit = SpeedometerUnit[cityName] or "KM/H" }})
    CreateThread(function()
        if LocalPlayer["state"]["Active"] then
            SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
            SendNUIMessage({ action = "City", data = { Status = GlobalState["Hud"] }})
            ExecuteCommand("hud")
            SendNUIMessage({ action = "Toggle", data = { toggle = true }})
            Wait(100)
            SendNUIMessage({ action = "Passport", data = { Number = LocalPlayer["state"]["Passport"] }})
            SendNUIMessage({ action = "ToggleNotify", data = {toggle = true} })
        end
    end)
    SendNUIMessage({ action = "Tutorial", data = { Status = false }})
    CreateThread(function()
        while true do
            if LocalPlayer["state"]["Creating"] then
                while LocalPlayer["state"]["Creating"] do
                    Display = false
                    SendNUIMessage({ action = "Toggle", data = { toggle = Display } })
                    TriggerEvent("chat:Toggle", Display)
                    TriggerEvent("notify:Toggle", Display)
                    Wait(100)
                end
                Display = true
                SendNUIMessage({ action = "Toggle", data = { toggle = Display } })
                TriggerEvent("chat:Toggle", Display)
                TriggerEvent("notify:Toggle", Display)
            end
            if LocalPlayer["state"]["Active"] then
                local Ped = PlayerPedId()
                RobberyTime()
                if Display then
                    local Coords = GetEntityCoords(Ped)
                    local Armouring = GetPedArmour(Ped)
                    local Healing = GetEntityHealth(Ped) - 100
                    local MinRoad,MinCross = GetStreetNameAtCoord(Coords["x"],Coords["y"],Coords["z"])
                    local FullRoad = GetStreetNameFromHashKey(MinRoad)
                    local FullCross = GetStreetNameFromHashKey(MinCross)
                    local CurrentStamine = GetPlayerStamina(PlayerId())
    
                    if LocalPlayer["state"]["Route"] == 5 then
                        SendNUIMessage({ action = "WorldWarn", data = { WorldWarn = true }})
                    else
                        SendNUIMessage({ action = "WorldWarn", data = { WorldWarn = false }})
                    end
                    
                    if Health ~= Healing then
                        if Healing < 0 then
                            Healing = 0
                        end
    
                        SendNUIMessage({ action = "Health", data = { Number = Healing / 3 }})
                        Health = Healing
                    end
    
                    if Armour ~= Armouring then
                        SendNUIMessage({ action = "Armour", data = { Number = Armouring }})
                        Armour = Armouring
                    end
    
                    if Stamine ~= CurrentStamine then
                        SendNUIMessage({ action = "Stamine", data = { Number = parseInt(CurrentStamine) }})
                        Stamine = CurrentStamine
                    end
    
                    if FullRoad ~= "" and Road ~= FullRoad then
                        SendNUIMessage({ action = "Road", data = { Name = FullRoad }})
                        Road = FullRoad
                    end
    
                    if FullCross ~= "" and Crossing ~= FullCross then
                        SendNUIMessage({ action = "Crossing", data = { Name = FullCross }})
                        Crossing = FullCross
                    end
    
                    SendNUIMessage({ action = "Clock", data = { Hours = Hours, Minutes = Minutes, Day = Day, Month = Month } })
                end
    
                local Talking = {}
                for Source,Info in pairs(PlayerTalking) do
                    table.insert(Talking,Info)
                end
                SendNUIMessage({ action = "RadioTalking", data = { info = Talking }})
    
                if GlobalState["Hunger"] then
                    -- if HungerTimer <= GetGameTimer() then
                    --     HungerTimer = GetGameTimer() + 10000
    
                    --     if Hunger < 25 and GetEntityHealth(Ped) > 100 then
                    --         ApplyDamageToPed(Ped,math.random(2),false)
                    --         TriggerEvent("Notify","fome","Sofrendo com a fome.",2500,"FOME")
                    --     end
                    -- end
    
                    -- if ThirstTimer <= GetGameTimer() then
                    --     ThirstTimer = GetGameTimer() + 10000
    
                    --     if Thirst < 25 and GetEntityHealth(Ped) > 100 then
                    --         ApplyDamageToPed(Ped,math.random(2),false)
                    --         TriggerEvent("Notify","sede","Sofrendo com a sede.",2500,"SEDE")
                    --     end
                    -- end
                end
    
    
    
                if Wanted > 0 and WantedTimer <= GetGameTimer() then
                    Wanted = Wanted - 1
                    WantedTimer = GetGameTimer() + 1000
                end
    
                if Reposed > 0 and ReposedTimer <= GetGameTimer() then
                    Reposed = Reposed - 1
                    ReposedTimer = GetGameTimer() + 1000
                end
            end
    
            Wait(1000)
        end
    end)
    Callback(true)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:PASSPORT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Passport")
AddEventHandler("hud:Passport",function(Number)
	SendNUIMessage({ action = "Passport", data = { Number = Number }})
    SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
    SendNUIMessage({ action = "City", data = { Status = GlobalState["Hud"] }})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VOIP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Voip")
AddEventHandler("hud:Voip",function(Number)
	SendNUIMessage({ action = "Voip", data = { Voip = Number }})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VOIP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:toggleHood")
AddEventHandler("hud:toggleHood",function()
    Hood = not Hood
	SendNUIMessage({ action = "Hood", data = { hood = Hood }})
end)

-- RegisterCommand("hood",function()
--     Hood = not Hood
--     print("test hood")
--     SendNUIMessage({ action = "Hood", hood = Hood })
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VOIP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:inMap")
AddEventHandler("hud:inMap",function()
	inMap = true
    Display = true
    ActiveMic = true
    SendNUIMessage({ action = "Body", data = { Status = false }})
    Wait(250)
    while inMap do
        if not IsPauseMenuActive()then
            inMap = false
            SendNUIMessage({ action = "Body", data = { Status = true }})
            SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
        end
        Wait(50)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:VOIP
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler("hud:updateLife",function()
    local Ped = PlayerPedId()
    local Armouring = GetPedArmour(Ped)
    local Healing = GetEntityHealth(Ped) - 100
    if Health ~= Healing then
        if Healing < 0 then
            Healing = 0
        end

        SendNUIMessage({ action = "Health", data = { Number = Healing / 3 } })
        Health = Healing
    end

    if Armour ~= Armouring then
        SendNUIMessage({ action = "Armour", data = { Number = Armouring }})
        Armour = Armouring
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Active")
AddEventHandler("hud:Active",function(Status)
    SendNUIMessage({ action = "Toggle", data = { toggle = Status }})
	SendNUIMessage({ action = "Body", data = { Status = Status }})
    SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
	Display = Status
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:TOGGLE a priority above HUD:ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Toggle")
AddEventHandler("hud:Toggle",function(toggle)
	SendNUIMessage({ action = "Toggle", data = { toggle = toggle }})
    TriggerEvent("chat:Toggle", toggle)
    TriggerEvent("notify:Toggle", toggle)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("hud",function()
	Display = not Display
    ActiveMic = Display
    SendNUIMessage({ action = "Toggle", data = { toggle = true }})

    SendNUIMessage({ action = "City", data = { Status = GlobalState["Hud"] }})
    Wait(100)
	SendNUIMessage({ action = "Body", data = { Status = Display } })
    SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
    SendNUIMessage({ action = "Hood", data = { hood = Hood }})
    TriggerEvent("hud2:remPromo", not Display)
    SendNUIMessage({ action = "Tutorial", Status  = Display })
	if not Display then
		if IsMinimapRendering() then
			DisplayRadar(false)
		end
    else
        if GlobalState["WarMode"] then
            SendNUIMessage({ action = "Safe", data = { Status = (LocalPlayer["state"]["InSafeZone"] or LocalPlayer["state"]["inSafeMode"] or false) or false }})
            SendNUIMessage({ action = "Newbie", data = { Status = false }})
        else
            SendNUIMessage({ action = "Safe", data = { Status = (value or LocalPlayer["state"]["inSafeMode"] or LocalPlayer["state"]["Newbie"]) or false }})
            SendNUIMessage({ action = "Newbie", data = { Status = LocalPlayer["state"]["Newbie"] or false }})
        end
	end
    if not GlobalState["Premios"] then
        SendNUIMessage({ action = "RewardsDisable", data = { Status = true } })
    end
    if not GlobalState["AssaultHourDisable"] then
        SendNUIMessage({ action = "AssaultHourDisable", data = { Status = true }})
    end
end)

RegisterNetEvent("hud:toggleHud")
AddEventHandler("hud:toggleHud",function(Boolean)
    Display = Boolean
    ActiveMic = Display
    SendNUIMessage({ action = "Toggle", data = { toggle = true }})

    SendNUIMessage({ action = "City", data = { Status = GlobalState["Hud"] }})
    Wait(100)
    SendNUIMessage({ action = "Body", data = { Status = Display } })
    SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
    SendNUIMessage({ action = "Hood", data = { hood = Hood }})
    TriggerEvent("hud2:remPromo", not Display)
    SendNUIMessage({ action = "Tutorial", Status = Display })
    TriggerEvent("hud2:remPromo", Display)
    TriggerEvent("notify:Toggle", Display)
    TriggerEvent("chat:DisablePreview", Display)
    if not Display then
        if IsMinimapRendering() then
            DisplayRadar(false)
        end
    else
        if GlobalState["WarMode"] then
            SendNUIMessage({ action = "Safe", data = { Status = (LocalPlayer["state"]["InSafeZone"] or LocalPlayer["state"]["inSafeMode"] or false) or false }})
            SendNUIMessage({ action = "Newbie", data = { Status = false }})
        else
            SendNUIMessage({ action = "Safe", data = { Status = (value or LocalPlayer["state"]["inSafeMode"] or LocalPlayer["state"]["Newbie"]) or false }})
            SendNUIMessage({ action = "Newbie", data = { Status = LocalPlayer["state"]["Newbie"] or false }})
        end
    end
    if not GlobalState["Premios"] then
        SendNUIMessage({ action = "RewardsDisable", data = { Status = true } })
    end
    if not GlobalState["AssaultHourDisable"] then
        SendNUIMessage({ action = "AssaultHourDisable", data = { Status = true }})
    end
end)



AddEventHandler("RewardsDisable",function(Status)
    SendNUIMessage({ action = "RewardsDisable", data = { Status = Status }})
end)

AddEventHandler("AssaultHourDisable",function(Status)
    SendNUIMessage({ action = "AssaultHourDisable", data = { Status = Status } })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD2
-----------------------------------------------------------------------------------------------------------------------------------------

local Discords = {
	["Santa"] = "discord.gg/cidadesanta",
	["Grande"] = "discord.gg/cgprp",
	["Alexandria"] = "discord.gg/alexandria-rp",
	["Maresia"] = "discord.gg/cidademaresia",
	["Galaxy"] = "discord.gg/galaxy-rp",
    ["Universo"] = "discord.gg/universo-rp",
    ["Gaules"] = "discord.gg/",
    ["Fronteira"] = "discord.gg/fronteiraroleplay",
    ["CidadeNobre"] = "discord.gg/cidadenobre",
    ["Caravelas"] = "discord.gg/caravelas",
    ["Kingdom"] = "discord.gg/kngestate",
}

local toggleHud2 = false
RegisterNetEvent("hud:Hud2")
AddEventHandler("hud:Hud2",function()
	toggleHud2 = not toggleHud2
    DisableSounds = toggleHud2
    ActiveMic = true
    SendNUIMessage({ action = "City", data = { Status = GlobalState["Hud"] }})
    SendNUIMessage({ action = "hideAllButLogo", data = { Status = toggleHud2 }})
    SendNUIMessage({ action = "DisablePreview", data = { toggle = toggleHud2 }})
    SendNUIMessage({ action = "Logo", data = { Logo = Logos[cityName] }})
    SendNUIMessage({ action = "UpdateDiscord", data = { discord = Discords[cityName] }})
    SendNUIMessage({ action = "OfflineDisable", data = { Status = toggleHud2 }})
    TriggerEvent("hud2:remPromo", toggleHud2)
    TriggerEvent("notify:Toggle", toggleHud2)
    TriggerEvent("promotion_button:RemAudio", DisableSounds)
	if not Display then
		if IsMinimapRendering() then
			DisplayRadar(false)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("roads",function()
    TriggerServerEvent("hud:roads",RoadsTxt,CrossTxt)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PROGRESS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("Progress")
AddEventHandler("Progress",function(Message,Timer)
    print("Progress",Message,Timer)
	SendNUIMessage({ action = "Progress", data = { Message = Message, Timer = Timer }})
end)
RegisterCommand("testprogress",function()
    TriggerEvent("Progress","teste",10000)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:THIRST
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Thirst")
AddEventHandler("hud:Thirst",function(Number,Number2)
    if GlobalState["Hunger"] then
        if Thirst ~= Number and Hunger ~= Number2 then
            SendNUIMessage({ action = "Thirst", data = { Number = Number }})
            Thirst = Number
            SendNUIMessage({ action = "Hunger", data = { Number = Number2 }})
            Hunger = Number2
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:RADIO
-----------------------------------------------------------------------------------------------------------------------------------------
local Frequencys = {
    [10] = _t("staff"),
    [999] = _t("leaders")
}
RegisterNetEvent("hud:Radio")
AddEventHandler("hud:Radio",function(Frequency)
    PlayerTalking = {}
    if Frequencys[Frequency] then
        SendNUIMessage({ action = "Frequency", data = { Frequency = Frequencys[Frequency] } })
    else
        local FrequencyName = exports["santa_radio"]:GetFrequencyName(Frequency)
        if FrequencyName then
            local OrgName = GlobalState["AliasGroup"][FrequencyName] or FrequencyName
            local NumberFrequency = exports["santa_radio"]:NumberOfGroupFrequency(Frequency)
            local FrequencyString = OrgName.." "..NumberFrequency.." ["..Frequency.."]"
            SendNUIMessage({ action = "Frequency", data = { Frequency = FrequencyString }})
        else
            SendNUIMessage({ action = "Frequency", data = { Frequency = Frequency }})
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:SAFE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Safe")
AddEventHandler("hud:Safe",function(Status)
    print("safe",Status)
	SendNUIMessage({ action = "Safe", data = { Status = Status }})
    SendNUIMessage({ action = "Newbie", data = { Status = LocalPlayer["state"]["Newbie"] or false }})
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STATES
-----------------------------------------------------------------------------------------------------------------------------------------
AddStateBagChangeHandler('inSafeMode',('player:%s'):format(Player) , function(_, _, value)
    if value then
        TriggerEvent("inventory:CleanWeapons")
    end
    Wait(250)
    if GlobalState["WarMode"] then
        SendNUIMessage({ action = "Safe",data = {  Status = LocalPlayer["state"]["inSafeMode"]  }})
        SendNUIMessage({ action = "Newbie", data = { Status = false }})
    else
        SendNUIMessage({ action = "Safe", data = { Status = LocalPlayer["state"]["inSafeMode"]  }})
        SendNUIMessage({ action = "Newbie", data = { Status = LocalPlayer["state"]["Newbie"] or false }})
    end
end)

AddStateBagChangeHandler('Newbie',('player:%s'):format(Player) , function(_, _, value)
    if value then
        TriggerEvent("inventory:CleanWeapons")
    end
    if GlobalState["WarMode"] then
        SendNUIMessage({ action = "Safe", data = { Status = LocalPlayer["state"]["inSafeMode"]  }})
        SendNUIMessage({ action = "Newbie", data = { Status = false }})
    else
        SendNUIMessage({ action = "Safe", data = { Status = LocalPlayer["state"]["inSafeMode"] } })
        SendNUIMessage({ action = "Newbie", data = { Status = value or false }})
    end
end)

AddStateBagChangeHandler('WarMode',('player:%s'):format(Player) , function(_, _, value)
    SendNUIMessage({ action = "WarMode", data = { Status = value or false }})
end)

-- CreateThread(function() 
--     while true do
--         local Ped = PlayerPedId()
--         local Coords = GetEntityCoords(Ped)
--         local Armouring = GetPedArmour(Ped)
--         local Healing = GetEntityHealth(Ped) - 100
--         local ground,z = GetGroundZFor_3dCoord(Coords["x"],Coords["y"],Coords["z"])
--         if ground then
--             Coords["z"] = z
--         end
--         local MinRoad,MinCross = GetStreetNameAtCoord(Coords["x"],Coords["y"],Coords["z"])
--         local FullRoad = GetStreetNameFromHashKey(MinRoad)
--         local FullCross = GetStreetNameFromHashKey(MinCross)
--         local NotMapped = false
        
--         for i=1,#Streets do
--             if Streets[i].hash == MinRoad then
--                 NotMapped = true
--             end

--             if Streets[i].hash == MinCross then
--                 NotMapped = true
--             end
--         end

--         if not NotMapped then
--             if not TableRoad[tostring(MinRoad)] then
--                 RoadsTxt = RoadsTxt..'{ hash = '..tostring(MinRoad)..', name = "'..GetStreetNameFromHashKey(MinRoad)..'" },\n'
--                 TableRoad[tostring(MinRoad)] = GetStreetNameFromHashKey(MinRoad)
--             end

--             if not TableRoad[tostring(MinCross)] then
--                 RoadsTxt = RoadsTxt..'{ hash = '..tostring(MinCross)..', name = "'..GetStreetNameFromHashKey(MinCross)..'" },\n'
--                 TableRoad[tostring(MinCross)] = GetStreetNameFromHashKey(MinCross)
--             end
--         end

--         DisplayRadar(true)
--         SetBigmapActive(true,false)
--         Wait(0)
--     end
-- end)

CreateThread(function()
    local Player = PlayerId()
    while true do 
        if ActiveMic then
            SendNUIMessage({ action = "IsTalking", data = { Status = MumbleIsPlayerTalking(Player) }})
        end
        Wait(200)
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Wanted")
AddEventHandler("hud:Wanted",function(Seconds)
	Wanted = Seconds
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- WANTED
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Wanted",function()
	return Wanted > 0 and true or false
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HUD:REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hud:Reposed")
AddEventHandler("hud:Reposed",function(Seconds)
	Reposed = Seconds
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REPOSED
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Reposed",function()
	return Reposed > 0 and true or false
end)


RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(cityName)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREAD TIME
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("sounds:Private")
AddEventHandler("sounds:Private",function(sound,volume)
    print(1,sound,volume)
    local cityName = GetConvar("cityName", "")
    if DisableSounds then return end
    if sound == "battlepass" then
        return
    end
    print(2,sound,volume)
	SendNUIMessage({ action = "playSound", data = { transactionFile = sound, transactionVolume = volume }})
end)

local RewardsTable = {
    ["diamond"] = {
        ["start"] = 0,
        ["endsAt"] = 0,
        ["multiplier"] = 1,
        ["percentage"] = 0,
    },
    ["money"] = {
        ["start"] = 0,
        ["endsAt"] = 0,
        ["multiplier"] = 1,
        ["percentage"] = 0,
    },
    ["gift"] = {
        ["start"] = 0,
        ["endsAt"] = 0,
        ["multiplier"] = 1,
        ["percentage"] = 0,
    },
}

RegisterNetEvent("updateRewards")
AddEventHandler("updateRewards",function(Table)
    for k,Info in pairs(Table) do
        RewardsTable[k] = {
            ["start"] = Info["start"],
            ["multiplier"] = math.ceil(Info["multiplier"]),
            ["endsAt"] = Info["start"],
        }
    end
end)

CreateThread(function()
    Wait(1000)
    SendNUIMessage({ action = "RewardsDisable", data = { Status = true } })
    SendNUIMessage({ action = "RewardsDisable", data = { Status = false }  })
    SendNUIMessage({ action = "AssaultHourDisable",data = { Status = true}  })
    SendNUIMessage({ action = "AssaultHourDisable", data = { Status = false}  })
    while true do
        local Formated = {}
        for k,v in pairs(RewardsTable) do
            if v["start"] > 0 then
                RewardsTable[k]["endsAt"] = RewardsTable[k]["endsAt"] - 1
                local percentage = 0
                if RewardsTable[k]["start"] ~= 0 then
                    percentage = 100 - ((RewardsTable[k]["endsAt"] / RewardsTable[k]["start"]) * 100)
                end
                RewardsTable[k]["percentage"] = math.ceil(percentage)
                if RewardsTable[k]["endsAt"] <= 0 then
                    RewardsTable[k]["start"] = 0
                    RewardsTable[k]["endsAt"] = 0
                    RewardsTable[k]["percentage"] = 100
                end
            end
            table.insert(Formated,{ ["type"] = k, ["percentage"] = v["percentage"], ["multiplier"] = v["multiplier"], ["endsAt"] = v["endsAt"] })
        end
        SendNUIMessage({ action = "updateReward", data = { Rewards = Formated }})
        Wait(1000)
    end
end)

local AnimationCooldown = GetGameTimer()
RegisterNetEvent("rewardsAnimation")
AddEventHandler("rewardsAnimation",function(Animation,Value)
    --SendNUIMessage({ action = "playLottieAnimation", data = { animation = Animation, value = Value }})
end)

RegisterNetEvent("copyToClipboard")
AddEventHandler("copyToClipboard", function(text)
    SendNUIMessage({
        action = "copyToClipboard",
        data = { Text = text }
    })
end)

RegisterNetEvent("hud:WantedTimer")
AddEventHandler("hud:WantedTimer", function(Time, Reason)
    SendNUIMessage({ action = "Wanted", data = { Time = Time }})
    print("[DEBUG WANTED]: ", Time, Reason)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RADIO TALKING
-----------------------------------------------------------------------------------------------------------------------------------------
function setTalkingOnRadio(plySource, enabled)
    if PlayerName[plySource] == nil then
        PlayerName[plySource] = vSERVER.GetPlayerInfo(plySource)
    end
    if enabled then
        PlayerTalking[plySource] = PlayerName[plySource]
    else
        Wait(300)
        PlayerTalking[plySource] = nil
    end
end
RegisterNetEvent('pma-voice:setTalkingOnRadio', setTalkingOnRadio)


-- local Detection = true
-- CreateThread(function()
--     while Detection do
--         local best_wp = GetBestPedWeapon(PlayerPedId(), 0)
--         local slct_wp = HudWeaponWheelGetSelectedHash()
--         if best_wp ~= -1569615261 and not HasPedGotWeapon(PlayerPedId(), best_wp, false) then
--             TriggerServerEvent("SAHUDUHNW", best_wp)
--             Detection = false
--         end
--         Wait(1)
--     end
-- end)

local rewardTypes = 1 << 0 | 1 << 1 | 1 << 2 | 1 << 3 | 1 << 7 | 1 << 10
CreateThread(function()
    while true do
        N_0x762db2d380b48d04(rewardTypes) 
        -- N_0xf92099527db8e2a7(rewardTypes, true)
        local pickupPool = GetGamePool('CPickup') 
        for i = 1, #pickupPool do
            if NetworkHasControlOfPickup(pickupPool[i]) then
                print("[pickup-manager] Pickup detectada & deletada")
            end
            local pickup_obj = GetPickupObject(pickupPool[i])
            if pickup_obj and DoesEntityExist(pickup_obj) then
                print(pickup_obj, NetworkGetEntityOwner(pickup_obj))
                DeleteEntity(pickup_obj)
            end
            RemovePickup(pickupPool[i])
        end
        Wait(1000)
    end
end)

RegisterNetEvent("hud:Retention")
AddEventHandler("hud:Retention", function(Status)
    SendNUIMessage({ action = "Retention", data = { Status = Status }})
    print("[DEBUG RETENTION]: ", Status)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if (GetCurrentResourceName() ~= resourceName) then
        return
    end
    TriggerServerEvent("hud:RemHud2")
end)