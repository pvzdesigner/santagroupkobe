-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("spawn")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Peds = nil
local Camera = nil
local Characters = {}
local selected = nil
local isFirstLogin = true
local Active = false
local NewPlayer = false
local Default = true
local model =  `mp_m_freemode_01`
local SelectedModel = `mp_m_freemode_01`
local TestTimer = GetGameTimer()
local CustomSpawn = nil
local LastStatus = ""
local LastTime = GetGameTimer()
local TotalSpawnTime = 0
local DEBUG_SPAWN = true
cityName = GetConvar("cityName", "")
local CreatingCharacter = false
local Selecting = false
local SelectionCoord = {
    Player = vector4(-1848.29,-1229.48,13.01,141.74),
    Peds = vector4(-1850.18,-1232.01,12.01,325.99),
    Camera = 140.0
}
local Anims = {
    { ["Dict"] = "dancing_wave_part_two@anim", ["Name"] = "footwork_01" }
}
local Locate = {}

if cityName == "Maresia" then
    SelectionCoord = {
        Player = vector4(-2556.23,-2269.46,3.49,351.5),
        Peds = vector4(-2557.43,-2271.80,2.49,335.5),
        Camera = 160.0
    }
    Locate = {
        { ["Coords"] = vec3(165.66,-999.42,29.34), ["name"] = "SPAWNAR NA PRAÇA" },
        { ["Coords"] = vec3(2489.42,-382.61,93.74), ["name"] = "SPAWNAR NA DP" },
        { ["Coords"] = vec3(1152.08,-1527.17,34.83), ["name"] = "SPAWNAR NO HP" },
        { ["Coords"] = vec3(-1607.6,-1054.1,13.02), ["name"] = "SPAWNAR NO PÍER" },
    }
    Anims = {
        { ["Dict"] = "dancing_wave_part_two@anim", ["Name"] = "footwork_01" }
    }
elseif cityName == "Kingdom" then
    SelectionCoord = {
        Player = vector4(837.79,-1026.78,37.94,263.63),
        Peds = vector4(836.29,-1026.60,36.58,268.63),
        Camera = 75.0
    }
    Locate = {
        { ["Coords"] = vec3(154.66,-981.46,30.58), ["name"] = "SQUARE SPAWN" }
    }
    Anims = {
        { ["Dict"] = "dancing_wave_part_two@anim", ["Name"] = "footwork_01" }
    }
elseif cityName == "Santa" then
    SelectionCoord = {
        Player = vector4(-1071.62,-2797.91,21.33,158.75),
        Peds = vector4(-1072.5,-2799.74,20.33,328.82),
        Camera = 150.0
    }
    Locate = {
        { ["Coords"] = vec3(165.66,-999.42,29.34), ["name"] = "SPAWNAR NA PRAÇA" },
        { ["Coords"] = vec3(2506.03,-383.76,94.12), ["name"] = "SPAWNAR NA DP" },
        { ["Coords"] = vec3(1152.08,-1527.17,34.83), ["name"] = "SPAWNAR NO HP" },
    }
    Anims = {
        { ["Dict"] = "dancing_wave_part_two@anim", ["Name"] = "footwork_01" }
    }
elseif cityName == "Universo" then
    SelectionCoord = {
        Player = vector4(-5858.0,-2295.36,933.54,269.3),
        Peds = vector4(-5861.0,-2295.36,932.3,269.3),
        Camera = 90.0
    }
    Locate = {
        { ["Coords"] = vec3(165.66,-999.42,29.34), ["name"] = "SPAWNAR NA PRAÇA" },
        { ["Coords"] = vec3(2506.03,-383.76,94.12), ["name"] = "SPAWNAR NA DP" },
        { ["Coords"] = vec3(1152.08,-1527.17,34.83), ["name"] = "SPAWNAR NO HP" },
    }
    Anims = {
        { ["Dict"] = "dancing_wave_part_two@anim", ["Name"] = "footwork_01" }
    }
elseif cityName == "Caravelas" then
    SelectionCoord = {
        Player = vector4(160.88,-952.11,31.86,170.70),
        Peds = vector4(156.66,-955.35,30.86,330.53),
        Camera = -10.0
    }
    Locate = {
        { ["Coords"] = vec3(165.66,-999.42,29.34), ["name"] = "SPAWNAR NA PRAÇA" },
        { ["Coords"] = vec3(2506.03,-383.76,94.12), ["name"] = "SPAWNAR NA DP" },
        { ["Coords"] = vec3(1152.08,-1527.17,34.83), ["name"] = "SPAWNAR NO HP" },
    }
    Anims = {
        { ["Dict"] = "dancing_wave_part_two@anim", ["Name"] = "footwork_01" }
    }
end
local SpawnCoords = SelectionCoord["Player"]
local LastLoc = false
local Debug = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTION DEBUG
-----------------------------------------------------------------------------------------------------------------------------------------
function DebugPrint(SpawnStatus)
    if DEBUG_SPAWN and LastStatus ~= SpawnStatus then
        local Time = GetGameTimer()
        local DiffTIme = Time - LastTime
        TotalSpawnTime = TotalSpawnTime + DiffTIme
        LastStatus = SpawnStatus
        LastTime = Time
        print("[DEBUG] [SPAWN] [TIME DIFF]: ("..DiffTIme.." ms) "..SpawnStatus)
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCATE
-----------------------------------------------------------------------------------------------------------------------------------------
exports('GetLocate', function()
    return SelectionCoord
end)

if cityName == "Santa" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(161.94,-1004.96,29.39), ["name"] = "SPAWNAR NA PRAÇA" },
        { ["Coords"] = vec3(-912.09,-2041.58,9.4), ["name"] = "SPAWNAR NA DP SUL" },
        { ["Coords"] = vec3(966.48,-936.93,42.43), ["name"] = "SPAWNAR NA MECANICA" },
        { ["Coords"] = vec3(1152.99,-1519.16,34.85), ["name"] = "SPAWNAR NO HP" }
    }
    
elseif cityName == "Grande" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(-1647.74,-1102.27,13.02), ["name"] = "SPAWNAR NO PIER" },
        { ["Coords"] = vec3(1418.21,6686.97,14.47), ["name"] = "SPAWNAR NO PIER DO NORTE" },
        { ["Coords"] = vec3(2539.65,-304.86,92.99), ["name"] = "SPAWNAR NA DP SUL" },
        { ["Coords"] = vec3(-2326.41,3252.76,32.82), ["name"] = "SPAWNAR NO ZANCUDO" },
        { ["Coords"] = vec3(1152.68,-1528.03,34.83), ["name"] = "SPAWNAR NO HP" }
    }
    
elseif cityName == "Galaxy" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(-1647.74,-1102.27,13.02), ["name"] = "SPAWNAR NO PIER" },
        { ["Coords"] = vec3(1418.21,6686.97,14.47), ["name"] = "SPAWNAR NO PIER DO NORTE" },
        { ["Coords"] = vec3(2539.65,-304.86,92.99), ["name"] = "SPAWNAR NA DP SUL" },
        { ["Coords"] = vec3(-2326.41,3252.76,32.82), ["name"] = "SPAWNAR NO ZANCUDO" },
        { ["Coords"] = vec3(1152.68,-1528.03,34.83), ["name"] = "SPAWNAR NO HP" }
    }

elseif cityName == "CidadeNobre" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(1422.73,6595.01,18.53), ["name"] = "SPAWNAR" }
    }

elseif cityName == "Caravelas" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(1422.73,6595.01,18.53), ["name"] = "SPAWNAR" }
    }

elseif cityName == "Kingdom" then
    SelectionCoord["Player"] = vector4(837.79,-1026.78,37.94,263.63)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(154.66,-981.46,30.58), ["name"] = "SQUARE SPAWN" }
    }

elseif cityName == "Universo" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(1422.73,6595.01,18.53), ["name"] = "SPAWNAR" }
    }

elseif cityName == "Alexandria" then
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(-1647.74,-1102.27,13.02), ["name"] = "SPAWNAR NO PIER" },
        { ["Coords"] = vec3(1418.21,6686.97,14.47), ["name"] = "SPAWNAR NO PIER DO NORTE" },
        { ["Coords"] = vec3(2539.65,-304.86,92.99), ["name"] = "SPAWNAR NA DP SUL" },
        { ["Coords"] = vec3(-2326.41,3252.76,32.82), ["name"] = "SPAWNAR NO ZANCUDO" },
        { ["Coords"] = vec3(1152.68,-1528.03,34.83), ["name"] = "SPAWNAR NO HP" }
    }
    

elseif cityName == "Gaules" then  
    --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
    --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
    Locate = {
        { ["Coords"] = vec3(-1647.74,-1102.27,13.02), ["name"] = "SPAWNAR NO PIER" },
        { ["Coords"] = vec3(1418.21,6686.97,14.47), ["name"] = "SPAWNAR NO PIER DO NORTE" },
        { ["Coords"] = vec3(2539.65,-304.86,92.99), ["name"] = "SPAWNAR NA DP SUL" },
        { ["Coords"] = vec3(-2326.41,3252.76,32.82), ["name"] = "SPAWNAR NO ZANCUDO" },
        { ["Coords"] = vec3(1152.68,-1528.03,34.83), ["name"] = "SPAWNAR NO HP" }
    } 
-- elseif cityName == "Maresia" then
--     --SelectionCoord["Player"] = vector4(560.01,-436.53,-69.66,337.33)
--     --SelectionCoord["Peds"] = vector4(559.06,-438.6,-70.66,331.66)
--     Locate = {
--         { ["Coords"] = vec3(-1647.74,-1102.27,13.02), ["name"] = "SPAWNAR NO PIER" },
--         { ["Coords"] = vec3(1418.21,6686.97,14.47), ["name"] = "SPAWNAR NO PIER DO NORTE" },
--         { ["Coords"] = vec3(2539.65,-304.86,92.99), ["name"] = "SPAWNAR NA DP SUL" },
--         { ["Coords"] = vec3(-2326.41,3252.76,32.82), ["name"] = "SPAWNAR NO ZANCUDO" },
--         { ["Coords"] = vec3(1152.68,-1528.03,34.83), ["name"] = "SPAWNAR NO HP" }
--     }
end

local defaultClothing = json.decode('{"watch":{"texture":0,"item":-1},"torso":{"texture":0,"item":0},"hat":{"texture":0,"item":-1},"accessory":{"texture":0,"item":0},"tshirt":{"texture":0,"item":1},"backpack":{"texture":0,"item":0},"glass":{"texture":0,"item":0},"arms":{"texture":0,"item":0},"vest":{"texture":0,"item":0},"bracelet":{"texture":0,"item":-1},"pants":{"texture":0,"item":0},"mask":{"texture":0,"item":0},"ear":{"texture":0,"item":-1},"shoes":{"texture":0,"item":0},"decals":{"texture":0,"item":0}}')
-----------------------------------------------------------------------------------------------------------------------------------------
-- ANIMS
-----------------------------------------------------------------------------------------------------------------------------------------

local FirstZone = PolyZone:Create({
    vector2(-1639.77, -1015.15),
    vector2(-1571.21, -1065.91),
    vector2(-1639.77, -1150.00),
    vector2(-1719.32, -1097.73)
},{
    name="FirstZone",
})
-----------------------------------------------------------------------------------------------------------------------------------------
-- ONCLIENTRESOURCESTART
-----------------------------------------------------------------------------------------------------------------------------------------
function SendReactMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

local Characters,Slots,isFirstLogin
function executePlayerLogin()
    DoScreenFadeOut(0)
    --ShutdownLoadingScreenNui()
    ShutdownLoadingScreen()
    --TriggerEvent("timeSet","Day")
    TriggerServerEvent("finishLoadingScreen")
    local Count = 0
    ::WaitModel::
    Selecting = true
    DebugPrint("Loading Model")
    while not HasModelLoaded(model) do
        Count += 1
        if Count == 1000 then
            if GetIsLoadingScreenActive() then
                TriggerEvent("CloseLoadingScreen")
                Wait(0)
                DoScreenFadeIn(500)
            end
            --TriggerEvent("Notify","vermelho","Econtramos problemas ao tentar carregar seu personagem aguarde mais 15</> Segundos.",15000,"SPAWN")
            TriggerEvent("Notify2","#fLoadCharacter")
            break
        end
        Wait(100)
    end
    
    exports['pma-voice']:overrideProximityCheck(function(player)
        return false
    end)

    TriggerEvent("chat:DisablePreview",true)
    if not HasModelLoaded(model)  then
        goto WaitModel
    end
    DebugPrint("Set First Model")
    SetPlayerModel(PlayerId(),model)
    print("First Set")
    print(GetGameTimer()-TestTimer)
    local Ped = PlayerPedId()
    FreezeEntityPosition(Ped,true)
    LocalPlayer["state"]["Invincible"] = true
    SetEntityInvincible(Ped,true)
    LocalPlayer["state"]["Invisible"] = true
    SetEntityVisible(Ped,false,false)
    SetPlayerControl(Ped,false,false)
    ClearPedTasksImmediately(Ped)
    Characters,Slots,isFirstLogin, CustomSpawn = vSERVER.Characters()
    DebugPrint("Get Characters")
    -- TriggerServerEvent("testPed")
    Ped = PlayerPedId()
    SetEntityCoordsNoOffset(Ped,-312.68,194.50,144.37, false, false, false, true)
    SetEntityHeading(Ped,0.0)
    DisplayRadar(false)
    SetEntityCoords(Ped,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"],false,false,false,false)
    DebugPrint("Set Coords")
    Wait(100)
    FreezeEntityPosition(Ped,true)
    LocalPlayer["state"]["Invisible"] = true
    SetEntityVisible(Ped,false,false)
    LocalPlayer["state"]["Invincible"] = true
    SetEntityInvincible(Ped,true)
    SetEntityHealth(Ped,100)
    SetPedArmour(Ped,0)
    print("Second Set")
    TriggerEvent("CloseLoadingScreen")
    DebugPrint("Close Loading Screen")
    while GetIsLoadingScreenActive() do
        TriggerEvent("CloseLoadingScreen")
        Wait(1)
    end
    DoScreenFadeIn(500)
    exports['pma-voice']:overrideProximityCheck(function(player)
        return false
    end)
    TriggerEvent("playerSpawned")
    TriggerEvent("notify:TutorialStatus",false)
    -- vSERVER.TestingAccounts()
    DebugPrint("Set Tutorial Status")
    if cityName == "Kingdom" then
        CreateThread(function()
            while Selecting do
                NetworkOverrideClockTime(21, 0, 0)
                Wait(0)
            end
        end)
    end
    if parseInt(#Characters) > 0 then
        Selecting = true
        Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
        SetEntityCoords(Ped,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"],false,false,false,false)
        DebugPrint("Has Characters 1")
        CreateThread(function()
            while Selecting do
                if cityName == "Kingdom" then
                    NetworkOverrideClockTime(21,00,00)
                else
                    NetworkOverrideClockTime(12,00,00)
                end
                FreezeEntityPosition(Ped,true)
                SetEntityVisible(Ped,false,false)
                Wait(1)
            end
        end)
        Wait(500)
        DebugPrint("Has Characters 2 (Request Collision)")
        RequestCollisionAtCoord(SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"])
        while not HasCollisionLoadedAroundEntity(Ped) do
            Wait(1)
        end
        Wait(500)
        DebugPrint("Has Characters 2 (Create Cam)")
        SetCamCoord(Camera,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"])
        DebugPrint("Has Characters 3 (Create Ped)")
        PedCreated(Characters[1])
        DebugPrint("Has Characters 4 (Render Cam)")
        RenderScriptCams(true,true,1,true,true)
        SetCamRot(Camera,0.0,0.0,SelectionCoord["Camera"],2)
        SetCamActive(Camera,true)
        DebugPrint("Has Characters 5 (Set Cam Active)")
        Wait(100)
        DoScreenFadeIn(500)
        TriggerEvent("timeSet","Night")

        SetNuiFocus(true,true)
        SendReactMessage("setVisible", "")
        DebugPrint("Has Characters 6 (Open NUI)")
    else
        DebugPrint("Doesn't has Characters 1 (Set Coords)")
        SetEntityCoords(Ped,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"],false,false,false,false)
        FreezeEntityPosition(Ped,true)
        RequestCollisionAtCoord(SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"])
        DebugPrint("Doesn't has Characters 2 (Load Collision)")
        while not HasCollisionLoadedAroundEntity(Ped) do
            Wait(1)
        end
        SetEntityHeading(Ped,297.62)
        SetEntityVisible(Ped,false,false)
        DebugPrint("Doesn't has Characters 3 (Set Visible)")
        Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
        SetCamCoord(Camera,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"])
        RenderScriptCams(true,true,1,true,true)
        SetCamRot(Camera,0.0,0.0,SelectionCoord["Camera"],2)
        CreatingCharacter = true
        DebugPrint("Doesn't has Characters 4 (Set Cam)")
        CreateThread(function()
            while CreatingCharacter do
                SetEntityVisible(Ped,false,false)
                Wait(1)
            end
            SetEntityVisible(Ped,true,false)
        end)
        TriggerServerEvent("register:CheckRegister")
        DebugPrint("Doesn't has Characters 6 (Check Register)")
    end
	SetPedCanRagdoll(PlayerPedId(), false)
end

RegisterNetEvent("spawn:FirsLogin")
AddEventHandler("spawn:FirsLogin",function()
    local Ped = PlayerPedId()
    NewPlayer = true
    Wait(100)
    exports["barbershop"]:Apply({},Ped)
    exports["skinshop"]:Apply(defaultClothing,Peds)
    Wait(250)
    DoScreenFadeIn(500)
    SetNuiFocus(true,true)
    SendReactMessage("setVisible", "newPlayer")
    TriggerEvent("timeSet","Night")
end)

RegisterNetEvent("onClientResourceStart")
AddEventHandler("onClientResourceStart",function(Resource)
    if not Debug then
        if LocalPlayer["state"]["Active"] then
            return
        end
    end
    if (GetCurrentResourceName() ~= Resource) then
        return
    end

    DebugPrint("Resource Start 1")
    DebugPrint("load First Model")
    RequestModel(`mp_m_freemode_01`)
    while not HasModelLoaded(`mp_m_freemode_01`) do
        Wait(0)
    end
    DebugPrint("Set First Model")
    SetPlayerModel(PlayerId(), `mp_m_freemode_01`)
    DebugPrint("Ressurrect")
end)
local n = 0/0
RegisterNUICallback('GetCharacters', function(data, cb)
    local Spawns = {}
    if isFirstLogin then
        for i=1,#Locate do
            Spawns[#Spawns+1] = { title = Locate[i]["name"] }
        end
    end
    if not (Characters) then
        Characters, Slots, isFirstLogin, CustomSpawn = vSERVER.Characters()
    end
    if CustomSpawn then
        Spawns[#Spawns+1] = { title = "PERSONALIZADO" }
    end
    local Info = {
        Characters = Characters,
        Slots = Slots,
        Spawns = Spawns
    }
    for k,v in pairs(Characters) do
        if v["LastLoc"] and v["LastLoc"].x and v["LastLoc"].y and v["LastLoc"].z then
            if tostring(v["LastLoc"].x) == "nan" or tostring(v["LastLoc"].y) == "nan" or tostring(v["LastLoc"].z) == "nan" then
                v["LastLoc"] = { x = 1422.76, y = 6595.01, z = 18.5 }
            end
        else
            v["LastLoc"] = { x = 1422.76, y = 6595.01, z = 18.5 }
        end
    end
    SendNUIMessage({
        action = "SetCharacters",
        data = { Characters = Characters, Slots = Slots, Spawns = Spawns }
    })
    cb(Info)
end)

RegisterNUICallback('Init', function(data, cb)
    DebugPrint("Init Nui")
    if not Debug then
        if LocalPlayer["state"]["Active"] then
            return
        end
    end
    if Debug then
        Wait(100)
        ExecuteCommand("god")
    end
    exports['pma-voice']:overrideProximityCheck(function(player)
        return false
    end)
    DebugPrint("Execute Player Login")
    DebugPrint("Queue Connect")
    executePlayerLogin()
    LocalPlayer["state"]["Loading"] = true
    DebugPrint("Finish Player Connect")
    Wait(1)
    print("[DEBUG] [SPAWN] [TOTAL SPAWN TIME]: ("..TotalSpawnTime.." ms)")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERCHOSEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback('ChoseCharacter', function(data, cb)
    if Characters[1] and data["Character"] and Characters[parseInt(data["Character"])] then
        selected = parseInt(data["Character"])
        if DoesEntityExist(Peds) then
            DeleteEntity(Peds)
        end
        for k,v in pairs(Characters) do
            if k == selected then
                LastLoc = v["LastLoc"]
                PedCreated(v)
                break
            end
        end
    end
end)

local cam = 0
function doCamera(Coords)
    local x,y,z = table.unpack(Coords)
	DoScreenFadeOut(1)
	if(not DoesCamExist(cam)) then
		cam = CreateCam('DEFAULT_SCRIPTED_CAMERA', true)
	end

	i = 3200
	SetFocusArea(x, y, z, 0.0, 0.0, 0.0)
	SetCamActive(cam,  true)
	RenderScriptCams(true,  false,  0,  true,  true)
	DoScreenFadeIn(1500)
	local camAngle = -90.0
	while i > 1 do
		local factor = i / 50
		if i < 1 then i = 1 end
		i = i - factor
		SetCamCoord(cam, x,y,z+i)
		if i < 1200 then
			DoScreenFadeIn(600)
		end
		if i < 90.0 then
			camAngle = i - i - i
		end
		SetCamRot(cam, camAngle, 0.0, 0.0)
		Citizen.Wait(2/i)
	end
end

RegisterNUICallback('ClickPreview', function(data, cb)
    if not selected then
        if Characters[1] then
            selected = 1
        else
            return
        end
    end
    if Characters[selected]["LastLoc"] then
        local LastCoords = Characters[selected]["LastLoc"] or {}
        LastLoc = vector3(LastCoords["x"],LastCoords["y"],LastCoords["z"]) or {}
    else
        vector3(SelectionCoord["Player"].x,SelectionCoord["Player"].y,SelectionCoord["Player"].z)
    end
    local Ped = PlayerPedId()
    local Index = data["location"]
    local Coords = nil
    if isFirstLogin and type(Index) == "number" then
        if Locate[Index] then
            Coords = vector3(Locate[Index]["Coords"]["x"],Locate[Index]["Coords"]["y"],Locate[Index]["Coords"]["z"])
        end
    end
    if (data["spawn"] == "Última localização") then
        Coords = LastLoc
    end
    
    if (data["spawn"] == "PERSONALIZADO") and LocalPlayer["state"]["CustomSpawn"] then
        Coords = LocalPlayer["state"]["CustomSpawn"]
    end
    if (data["spawn"] == "org") then
        Coords = GROUP_COORDS[data["group"]]
    end
    doCamera(Coords)
end)

RegisterNUICallback('ClickSpawn', function(data, cb)
    Selecting = false
    DoScreenFadeOut(0)
    SendReactMessage("setVisible", false)
    SetNuiFocus(false,false)
    if not selected then
        if Characters[1] then
            selected = 1
        else
            return
        end
    end
    local Ped = PlayerPedId()
    local Index = data["location"]
    local Coords = nil
    if isFirstLogin and type(Index) == "number" then
        if Locate[Index] then
            Coords = vector3(Locate[Index]["Coords"]["x"],Locate[Index]["Coords"]["y"],Locate[Index]["Coords"]["z"])
        end
    end
    
    if (data["spawn"] == "PERSONALIZADO") and LocalPlayer["state"]["CustomSpawn"] then
        Coords = LocalPlayer["state"]["CustomSpawn"]
    end
    if (data["spawn"] == "org") then
        Coords = GROUP_COORDS[data["group"]]
    end
    if DoesEntityExist(Peds) then
        DeleteEntity(Peds)
    end
    SetCamRot(Camera,0.0,0.0,0.0,2)
    RenderScriptCams(false,false,0,true,true)
    SetCamActive(Camera,false)
    DestroyCam(Camera,true)
    Camera = nil
    SetCamRot(cam,0.0,0.0,0.0,2)
    RenderScriptCams(false,false,0,true,true)
    SetCamActive(cam,false)
    DestroyCam(cam,true)
    cam = nil
    ClearFocus()
	DestroyAllCams(true)
	RenderScriptCams(false, true, 1, true, true)
    vSERVER.ChoseCharacter(selected,Coords)
    SetEntityVisible(Ped,true,false)
    SelectedModel = GetHashKey(Characters[selected]["Skin"])
    LocalPlayer["state"]["Invisible"] = false
    Active = true
    TriggerServerEvent("vRP:justObjects")
    Wait(1000)
    DoScreenFadeIn(1000)
    TriggerEvent("hud:Active",true)
    exports['pma-voice']:resetProximityCheck()
    TriggerEvent("sounds:Private","stop",0.0)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEWCHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("CreateCharacter",function(Data,Callback)
    local sexo = "mp_f_freemode_01"
    local Ped = PlayerPedId()
    SetEntityHeading(Ped,297.62)
    if Data["sexo"] == "m" then
        sexo = "mp_m_freemode_01"
    end
    local model = GetHashKey(sexo)
    RequestModel(model)
    while not HasModelLoaded(model) do
        Wait(0)
    end
    SendNUIMessage({
        action = "DeleteModal",
        data = { nones = "none" }
    })
    SetCamRot(Camera,0.0,0.0,0.0,2)
    RenderScriptCams(false,false,0,true,true)
    SetCamActive(Camera,false)
    DestroyCam(Camera,true)
    DestroyAllCams(true)
    Camera = nil
    vSERVER.NewCharacter(Data["nome"],Data["nome2"],sexo,Data["idade"],SpawnCoords)
    Selecting = false
    Active = true
    DoScreenFadeOut(1000)
    Wait(1000)
    SetEntityVisible(Ped,false)
    SetNuiFocus(false,false)
    if DoesEntityExist(Peds) then
        DeleteEntity(Peds)
    end
    Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SWITCHCHARACTER
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("ChangeCharacter",function(Data,Callback)
    if DoesEntityExist(Peds) then
        DeleteEntity(Peds)
    end

    if Camera then
        SetCamRot(Camera,0.0,0.0,0.0,2)
        RenderScriptCams(false,false,0,true,true)
        SetCamActive(Camera,false)
        DestroyCam(Camera,true)
        Camera = nil
        SetEntityCoords(Ped,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"],false,false,false,false)
    end
    
    if cam then
        SetCamRot(cam,0.0,0.0,0.0,2)
        RenderScriptCams(false,false,0,true,true)
        SetCamActive(cam,false)
        DestroyCam(cam,true)
        cam = nil
    end

    ClearFocus()
    DestroyAllCams(true)
    RenderScriptCams(false, true, 1, true, true)
    
    Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
    SetCamCoord(Camera,SelectionCoord["Player"]["x"],SelectionCoord["Player"]["y"],SelectionCoord["Player"]["z"])
    RenderScriptCams(true,true,1,true,true)
    SetCamRot(Camera,0.0,0.0,SelectionCoord["Camera"],2)
    
    for _,v in pairs(Characters) do
        if v["id"] == Data["id"] then
            PedCreated(v)
            break
        end
    end
    
    Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SPAWN:FINISH
-----------------------------------------------------------------------------------------------------------------------------------------

local function AttemptVoipHack()

    Citizen.SetTimeout( 1000, function ()

        exports['pma-voice']:overrideProximityCheck( function ()
            return false
        end)

        Citizen.SetTimeout( 1000, function ()

            exports['pma-voice']:resetProximityCheck()
        end)
    end)
end

RegisterNetEvent("spawn:Finish")
AddEventHandler("spawn:Finish",function()
    local Ped = PlayerPedId()
    if not NewPlayer then
        SetEntityVisible(Ped,true,false)
    end
    LocalPlayer["state"]["Invisible"] = false
    TriggerEvent("hud:Active",true)
    SendReactMessage("setVisible", false)
    SetNuiFocus(false,false)
    
    RenderScriptCams(false,false,0,true,true)
    SetCamActive(Camera,false)
    DestroyCam(Camera,true)
    Camera = nil
    Active = true
    exports['pma-voice']:resetProximityCheck()

    AttemptVoipHack()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- PEDCREATED
-----------------------------------------------------------------------------------------------------------------------------------------
function PedCreated(Table)
    if Table["Skin"] then
        DebugPrint("Create Custom Ped 1 (Skin)")
        local Hash = GetHashKey(Table["Skin"])
        DebugPrint("Create Custom Ped 2 (Request Model) "..Table["Skin"].."  "..Hash)
        RequestModel(Hash)
        local SKIN_LOAD_AWAIT_CREATION_TIMEOUT_SECS = 10
        local createdAt = GetGameTimer()
        local timeoutAt = (createdAt + (SKIN_LOAD_AWAIT_CREATION_TIMEOUT_SECS * 1000))
        while (not HasModelLoaded(Hash)) and ( GetGameTimer() < timeoutAt )  do
            Wait(1)
        end

        if not HasModelLoaded(Hash) then
            DebugPrint("Create Custom Ped 2.1 (Model Not Loaded)")
            Table["Skin"] = "mp_m_freemode_01"
            Hash = GetHashKey(Table["Skin"])
            return
        end
    
        DebugPrint("Create Custom Ped 3 (Model Loaded)")
        Peds = CreatePed(4,Table["Skin"],SelectionCoord["Peds"]["x"],SelectionCoord["Peds"]["y"],SelectionCoord["Peds"]["z"],SelectionCoord["Peds"]["w"],false,false)
        SetEntityInvincible(Peds,true)
        FreezeEntityPosition(Peds,true)
        SetBlockingOfNonTemporaryEvents(Peds,true)
        SetModelAsNoLongerNeeded(Table["Skin"])
        DebugPrint("Create Custom Ped 4 (Ped Created)")
        
         local Random = math.random(#Anims)
        -- if LoadAnim(Anims[Random]["Dict"]) then
        --     TaskPlayAnim(Peds,Anims[Random]["Dict"],Anims[Random]["Name"],8.0,8.0,-1,1,0,0,0,0)
        --     RemoveAnimDict(Anims[Random]["Dict"])
        -- end
        
        DebugPrint("Create Custom Ped 5 (Load Anim)")
        exports["skinshop"]:Apply(Table["Clothes"],Peds)
        exports["barbershop"]:Apply(Table["Barber"],Peds)
        exports["tattooshop"]:Apply(Table["Tattoos"],Peds)
        DebugPrint("Create Custom Ped 5 (Apply Barbershop)")
    end
end

RegisterNetEvent("spawn:SetNewPlayer")
AddEventHandler("spawn:SetNewPlayer",function()
    -- if not LocalPlayer["state"]["DefaultSpawn"] then
    --     CreateThread(function()
    --         while NewPlayer do 
    --             local Ped = PlayerPedId()
    --             local Coords = GetEntityCoords(Ped)
    --             if not FirstZone:isPointInside(Coords) then
    --                 TriggerServerEvent("vRP:BucketClient","Exit")
    --                 NewPlayer = false
    --             end
    --             Wait(10)
    --         end
    --     end)
    -- else
    --     TriggerServerEvent("vRP:BucketClient","Exit")
    -- end
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)

local DataNameInfo = {
    ["nome"] = "",
    ["nome2"] = "",
    ["sexo"] = "",
    ["idade"] = nil,
}

RegisterNetEvent('spawn:NameInfo')
AddEventHandler('spawn:NameInfo', function(Data)
    DataNameInfo = Data
end)
RegisterNUICallback("getUserValues",function(Data,Callback)
    if DataNameInfo["nome"] then
        Callback(DataNameInfo)
    end
end)


local Positions = {
    vector3(-1037.7,-2737.5,13.78),
    vector3(-1646.41,-1102.18,13.01)
}
if cityName == "Santa" then
    Positions = {
        vector3(-1647.74,-1102.27,13.02),
    }
elseif cityName == "CidadeNobre" then
    Positions = {
        vector3(-1647.74,-1102.27,13.02),
    }
elseif cityName == "Caravelas" then
    Positions = {
        vector3(-1646.59,-1103.76,13.01),
    }
elseif cityName == "Kingdom" then
    Positions = {
        vector3(-1646.83,-1102.9,13.01),
    }
elseif cityName == "Universo" then
    Positions = {
        --vector3(162.39,-975.54,29.76),
        vector3(-1646.98,-1102.9,13.01),
    }
end

local camZPlus1 = 1500
local camZPlus2 = 50
local pointCamCoords = 75
local pointCamCoords2 = 0
local cam1Time = 500
local cam2Time = 1000
local cam = nil
local cam2 = nil

local GodCoordinates = {
    vector3(1422.73,6595.01,18.53),
    vector3(-1644.17,-1098.94,13.01),
}

RegisterNetEvent('spawn:TeleportNewbie')
AddEventHandler('spawn:TeleportNewbie', function(Quantity)
    local Ped = PlayerPedId()
    Random = math.random(#Positions)
    if not Quantity then
        Random = 1
    end
    local StartCoords = Positions[Random]
    if cityName == "Maresia" then
        StartCoords = vector3(-1648.33,-1104.14,13.01)
    end
    -- if cityName == "Santa" then
    --     StartCoords = vector3(-1644.67,-1099.37,13.02)
    -- end
    -- if cityName == "Universo" then
    --     StartCoords = vector3(-1646.63,-1102.49,13.01)
    -- end
    if cityName == "Alexandria" then
        StartCoords = vector3(-1646.1,-1100.05,13.02)
    end
    if not IsScreenFadedOut() then 
        DoScreenFadeOut(2500)
    end
    while not IsScreenFadedOut() do 
        Wait(0) 
    end
    RequestCollisionAtCoord(StartCoords["x"],StartCoords["y"],StartCoords["z"])
    while not HasCollisionLoadedAroundEntity(Ped) do
        Wait(0)
    end
    SetEntityCoordsNoOffset(Ped,StartCoords["x"],StartCoords["y"],StartCoords["z"], false, false, false, true)
    FreezeEntityPosition(Ped,true)
    SetCam(StartCoords)
    Wait(500)
    for i = 1,#GodCoordinates do
        local Distance = #(StartCoords - GodCoordinates[i])
        if Distance <= 100 then
            vSERVER.SpawnGod()
        end
    end
end)