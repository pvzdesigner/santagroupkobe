-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local FPS = {}
LocalPlayer["state"]["Name"] = ""
LocalPlayer["state"]["Active"] = false
cityName = GetConvar("cityName", "")
cityDiscord = GetConvar("cityDiscord", "")
PlayerData = {}
PlayerGroups = {
    passport = "",
    name = "",
    name2 = "",
    groups = {}
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETHEALTH
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.SetHealth(Health)
	local Ped = PlayerPedId()
	SetEntityHealth(Ped,Health)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATEHEALTH
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.updateHealth(Number)
	local Ped = PlayerPedId()
	local Health = GetEntityHealth(Ped)
	if Health > 100 then
		SetEntityHealth(Ped,Health + Number)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- DOWNHEALTH
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.downHealth(Number)
	local Ped = PlayerPedId()
	local Health = GetEntityHealth(Ped)

	SetEntityHealth(Ped,Health - Number)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- PLAYINGANIM
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.PlayingAnim(Dict,Name)
	return IsEntityPlayingAnim(PlayerPedId(),Dict,Name,3)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKIN
-----------------------------------------------------------------------------------------------------------------------------------------
function tvRP.Skin(Hash)
	if LoadModel(Hash) then
		local Pid = PlayerId()
		local Ped = PlayerPedId()

		SetPlayerModel(Pid,Hash)
		SetPedComponentVariation(Ped,5,0,0,1)
		SetModelAsNoLongerNeeded(Hash)

		ReloadCharacter(Pid,Ped)
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP:ACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
local CitysDiscord = {
    ["Santa"] = {
        ["Discord"] = "https://discord.gg/cidadesanta",
        ["Connect"] = "fivem://connect/santa.santagroup.gg",
        ["DiscordID"] = 836238388574027817,
    },
	["Grande"] = {
        ["Discord"] = "https://discord.gg/cgrp",
        ["Connect"] = "fivem://connect/cidadegrande.santagroup.gg",
        ["DiscordID"] = 836238825222963260,
    },
	["Galaxy"] = {
        ["Discord"] = "https://discord.gg/galaxy-rp",
        ["Connect"] = "fivem://connect/galaxy.santagroup.gg",
        ["DiscordID"] = 1027851881298530325,
    },
	["Universo"] = {
        ["Discord"] = "https://discord.gg/universorp",
        ["Connect"] = "fivem://connect/universo.santagroup.gg",
        ["DiscordID"] = 1208904165246640201,
    },
	["Gaules"] = {
        ["Discord"] = "https://discord.gg/",
        ["Connect"] = "fivem://connect/gaules.santagroup.gg",
        ["DiscordID"] = 1155907056931455066,
    },
	["Fronteira"] = {
        ["Discord"] = "https://discord.gg/fronteirarp",
        ["Connect"] = "fivem://connect/cidadefronteira.fronteirarp.com.br",
        ["DiscordID"] = 1172600186569240656,
    },
	["CidadeNobre"] = {
        ["Discord"] = "https://discord.gg/cidadenobre",
        ["Connect"] = "fivem://connect/jogar.cidadenobre.com",
        ["DiscordID"] = 836178926341980170,
    },
	["Caravelas"] = {
        ["Discord"] = "https://discord.gg/caravelas",
        ["Connect"] = "fivem://connect/jogarcaravelas.roleplayrp.com",
        ["DiscordID"] = 1346572347607482398,
    },
	["Kingdom"] = {
        ["Discord"] = "https://discord.gg/kngestate",
        ["Connect"] = "fivem://connect/play.kngestate.com",
        ["DiscordID"] = 1309202235527532605,
    },
	["Alexandria"] = {
        ["Discord"] = "https://discord.gg/alexandria-rp",
        ["Connect"] = "fivem://connect/alexandria.santagroup.gg",
        ["DiscordID"] = 836176882688589884,
    },
	["Maresia"] = {
        ["Discord"] = "https://discord.gg/cidademaresia",
        ["Connect"] = "fivem://connect/maresia.santagroup.gg",
        ["DiscordID"] = 836178795588616222,
    }
}
RegisterNetEvent("vRP:Active")
AddEventHandler("vRP:Active",function(Passport,Name)
    NetworkEndTutorialSession()
	TriggerEvent("hud:Passport",Passport)
	LocalPlayer["state"]["Name"] = Name
	LocalPlayer["state"]["Active"] = true
	LocalPlayer["state"]["Invincible"] = true
    LocalPlayer["state"]["Loading"] = false

	CreateThread(function()
		while true do
			local Count = GetFrameCount()
			Wait(1000)
			local fps = GetFrameCount() - Count
			setFPS(fps)
		end
	end)

    ClearAmbientZoneState("collision_ybmrar", false)
    SetAmbientZoneState("collision_ybmrar", false, false)

	SetDiscordAppId(CitysDiscord[cityName]["DiscordID"])
	SetDiscordRichPresenceAsset("santagroup")
	SetRichPresence("#"..Passport.." "..Name)
	SetDiscordRichPresenceAssetSmall("santagroup")
    SetDiscordRichPresenceAssetText(_t("City").." "..cityName)
    SetDiscordRichPresenceAssetSmallText(cityWarning)
    SetDiscordRichPresenceAction(0, _t("EnterDiscord"), CitysDiscord[cityName]["Discord"])
    SetDiscordRichPresenceAction(1, _t("ConnectCity"), CitysDiscord[cityName]["Connect"])

	local Pid = PlayerId()
	local Ped = PlayerPedId()

	ReloadCharacter(Pid,Ped)
	SetEntityInvincible(Ped,true)
	FreezeEntityPosition(Ped,false)
	NetworkSetFriendlyFireOption(true)
	SetCanAttackFriendly(Ped,true,false)
    local Player = PlayerId()
    SetRunSprintMultiplierForPlayer(Player,1.10)
    TriggerEvent("hud:Toggle", true)
	SetTimeout(10000,function()
		SetEntityInvincible(Ped,false)
		LocalPlayer["state"]["Invincible"] = false
	end)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- HEALTHRECHARGE
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local Pid = PlayerId()
		local Ped = PlayerPedId()
		if GetEntityMaxHealth(Ped) ~= 400 then
			SetEntityMaxHealth(Ped,400)
			SetPedMaxHealth(Ped,400)
		end

		if GetPlayerMaxArmour(Pid) ~= 200 then
			SetPlayerMaxArmour(Pid,200)
		end

		if GetPlayerMaxStamina(Pid) ~= 100.0 then
			SetPlayerMaxStamina(Pid,100.0)
		end
		Wait(1000)
	end
end)

CreateThread(function()
	while true do
		local Pid = PlayerId()
		local Ped = PlayerPedId()
		SetPlayerHealthRechargeMultiplier(Pid,0.0)
		SetPlayerHealthRechargeLimit(Pid,0.0)
		Wait(100)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RELOADCHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
function ReloadCharacter(Pid,Ped)
    print(cityDiscord)
    if cityDiscord and cityDiscord ~= "" then
        AddTextEntry("FE_THDR_GTAO",cityDiscord)
    end
	StopAudioScenes()
	SetMaxWantedLevel(0)
	SetRandomBoats(false)
	SetRandomTrains(false)
	SetGarbageTrucks(false)
	SetPedHelmet(Ped,false)
	SetDeepOceanScaler(0.0)
	SetPlayerTargetingMode(0)
	SetRandomEventFlag(false)
	SetPoliceRadarBlips(false)
	DistantCopCarSirens(false)
	SetWeaponsNoAutoswap(true)
	ClearPlayerWantedLevel(Pid)
	SetPoliceIgnorePlayer(Ped,true)
	SetArtificialLightsState(false)
	SetPlayerCanUseCover(Pid,false)
	SetPedSteersAroundPeds(Ped,true)
	DisableVehicleDistantlights(true)
	SetDispatchCopsForPlayer(Ped,false)
	SetAllVehicleGeneratorsActive(true)
	SetFlashLightKeepOnWhileMoving(true)
	SetPedDropsWeaponsWhenDead(Ped,false)
	SetPedCanLosePropsOnDamage(Ped,false,0)
	SetPedCanBeKnockedOffVehicle(Ped,false)
	SetPedCanRagdollFromPlayerImpact(Ped,false)

	SetPedConfigFlag(Ped,48,true)
	SetPedConfigFlag(Ped,33,false)
	SetPedConfigFlag(Ped,461,true)
	SetPedConfigFlag(Ped,438,true)
	SetPedConfigFlag(Ped,434,true)

	SetBlipAlpha(GetNorthRadarBlip(),0)

	local destHudColour = 116

	assert( destHudColour <= 234, 'Se esse valor for maior que 234, vai crashar os jogadores quando eles disconectarem!' )

    ReplaceHudColourWithRgba( destHudColour,THEME.rgb.r,THEME.rgb.g,THEME.rgb.b, 255)

	SetAudioFlag("DisableFlightMusic",true)
	SetAudioFlag("PoliceScannerDisabled",true)
	SetScenarioGroupEnabled("Heist_Island_Peds",true)
	SetScenarioTypeEnabled("WORLD_VEHICLE_EMPTY",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_SALTON",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_MECHANIC",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_DRIVE_SOLO",true)
	SetScenarioTypeEnabled("WORLD_VEHICLE_POLICE_CAR",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_STREETRACE",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_POLICE_BIKE",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_BUSINESSMEN",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_SALTON_DIRT_BIKE",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_BIKE_OFF_ROAD_RACE",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_POLICE_NEXT_TO_CAR",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_MILITARY_PLANES_BIG",false)
	SetScenarioTypeEnabled("WORLD_VEHICLE_MILITARY_PLANES_SMALL",false)
	SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_01_STAGE",false)
	SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_02_MAIN_ROOM",false)
	SetStaticEmitterEnabled("LOS_SANTOS_VANILLA_UNICORN_03_BACK_ROOM",false)
	SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Zones",false,true)
	SetAmbientZoneListStatePersistent("AZL_DLC_Hei4_Island_Disabled_Zones",false,true)

	SetWeaponDamageModifierThisFrame("WEAPON_BAT",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_KATANA",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_HAMMER",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_WRENCH",0.25)
	--SetWeaponDamageModifierThisFrame("WEAPON_UNARMED",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_HATCHET",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_CROWBAR",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_MACHETE",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_POOLCUE",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_KNUCKLE",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_KARAMBIT",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_GOLFCLUB",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_BATTLEAXE",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_FLASHLIGHT",0.25)
	SetWeaponDamageModifierThisFrame("WEAPON_NIGHTSTICK",0.35)
	SetWeaponDamageModifierThisFrame("WEAPON_SMOKEGRENADE",0.0)
	SetWeaponDamageModifierThisFrame("WEAPON_STONE_HATCHET",0.25)

	for Number = 0,121 do
		EnableDispatchService(Number,false)
	end
	SetPedCanRagdoll(PlayerPedId(), false)

    updateMapPosition()

	-- # OPTIMIZATION
	-- CPlayerGameStateDataNode envia 1bit ( boolean ) + 15bits ( bitset ) de informação
	-- caso o ped do player tenha alguma restrição de targetted por um time.
	--
	-- Então, a gente remover todas as restrições já que a gente não usa o subsistema de times do GTA.
	-- e economiza 15bits, yay
	for i = 0, 15 do

		SetPedCanBeTargettedByTeam( PlayerPedId(), i, false )
	end
	-- # OPTIMIZATION end
end

function getAverageFPS()
	local Total = 0
	for i=1,#FPS do
		Total = Total + FPS[i]
	end

	return math.floor(Total/#FPS)
end

function setFPS(fps)
	table.insert(FPS,fps)

	if #FPS > 60 then
		table.remove(FPS,1)
		-- LocalPlayer.state:set("FPS",getAverageFPS(), true) 
	end
end

function updateMapPosition()
    local defaultAspectRatio = 1920/1080
    local resolutionX, resolutionY = GetActiveScreenResolution()
    local aspectRatio = resolutionX/resolutionY
    local minimapXOffset,minimapYOffset = 0,0
    if aspectRatio > defaultAspectRatio then
        local aspectDifference = defaultAspectRatio-aspectRatio
        minimapXOffset = aspectDifference/3.6
    end
    minimapXOffset = minimapXOffset + 0.008
    minimapYOffset = minimapYOffset + 0.0
    DisplayRadar(false)
    
    RequestStreamedTextureDict("circleminimap",false)
   while not HasStreamedTextureDictLoaded("circleminimap") do
       Wait(100)
   end
    
    SetMinimapClipType(1)
    AddReplaceTexture("platform:/textures/graphics","radarmasksm","circleminimap","radarmasksm")
    SetMinimapComponentPosition("minimap", "L", "B", -0.0045+minimapXOffset, 0.002+minimapYOffset-0.025, 0.150, 0.188888)
    SetMinimapComponentPosition("minimap_mask", "L", "B", 0.020+minimapXOffset, 0.030+minimapYOffset-0.025, 0.111, 0.159)
    SetMinimapComponentPosition("minimap_blur", "L", "B", -0.03+minimapXOffset, 0.022+minimapYOffset-0.025, 0.266, 0.237)
    
    SetBigmapActive(true,false)
    Wait(50)
    SetBigmapActive(false,false)
end
exports("updateMapPosition",updateMapPosition)

---@type number
local gBucketId = 0

---@type number
RegisterNetEvent( 'net:routing_bucket_changed', function( bucketId )

	gBucketId = bucketId
end)

---@return number
function tvRP.GetCurrentRoutingBucket()

	return gBucketId
end

RegisterNetEvent("playerData",function(Data)
    local Info = FormatPlayerData(Data)
    PlayerData["passport"] = Info["passport"]
    PlayerData["name"] = Info["name"]
    PlayerData["name2"] = Info["name2"]
    PlayerData["phone"] = Info["phone"]
end)

--- Get Player Data
---@return table
function tvRP.GetPlayerData()
    local lbPhoneStatus = GetResourceState("lb-phone")
    local phoneNumber = PlayerData["phone"]
    if lbPhoneStatus ~= "missing" and lbPhoneStatus ~= "stopped" then
        phoneNumber = LocalPlayer["state"]["phoneNumber"]
        PlayerData["phone"] = phoneNumber
    end
    return PlayerData
end

RegisterNetEvent("playerGroups:Create",function(Data)
    if not PlayerData["groups"] then
        PlayerData["groups"] = {}
    end
    PlayerData["groups"] = Data or {}
end)

RegisterNetEvent("playerGroups:AddGroup",function(Group,Level)
    if not PlayerData["groups"] then
        PlayerData["groups"] = {}
    end
    PlayerData["groups"][Group] = Level
end)


RegisterNetEvent("playerGroups:RemoveGroup",function(Group)
    if not PlayerData["groups"] then
        PlayerData["groups"] = {}
    end
    PlayerData["groups"][Group] = nil
end)

--- Get Player Groups
---@return table
function tvRP.GetPlayerGroups()
    return PlayerData["groups"]
end

--- Get Player Job
---@return string | false, number | false, string | false, string
function tvRP.GetPlayerJob()
    if not PlayerData["groups"] then
        return false,false,false,false
    end
    local Results = false
    local Rank = false
    local Group = false
    local Hyerarchy = "Novato"
    for Permission,Level in pairs(PlayerData["groups"]) do
        if Groups[Permission]["Type"] and Groups[Permission]["Type"] == "Job" then
            Results = Permission
            Rank = Level
            Group = Permission..""..Level
            if Groups[Permission]["Hierarchy"] and Groups[Permission]["Hierarchy"][Level] then
                Hyerarchy = Groups[Permission]["Hierarchy"][Level]
            end
            
            break
        end
    end
    return Results,Rank,Group,Hyerarchy
end