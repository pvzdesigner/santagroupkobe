-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("barbershop",Creative)
vSERVER = Tunnel.getInterface("barbershop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Barber = {}
local Camera = nil
local onPresets = false
local FirstLogin = false
cityName = GetConvar("cityName", "")
local MantainPreset = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCALPLAYER
-----------------------------------------------------------------------------------------------------------------------------------------
LocalPlayer["state"]["Barbershop"] = {}

Cam = {
	Active = nil,
	IsNaked = false,

	Sets = {
		-- [1] = offset, [2] = pointAt 
		["default"] = {
			vector3(0.0, 2.2, 0.3),
			vector3(0.0, 0, -0.05),
		},
		["inheritance"] = {
			vec3(0, 0.8, 0.65),
			vec3(0, 0, 0.6),
		},
		["face"] = {
			vec3(0, 0.6, 0.65),
			vec3(0, 0, 0.6),
		},
		["head"] = {
			vec3(0, 0.8, 0.65),
			vec3(0, 0, 0.6),
		},
		["upper"] = {
			vector3(0, 1.6, 0.2),
			vector3(0, 0, 0.2),
		},
		["lower"] = {
			vector3(0, 1.38, -0.3),
			vector3(0, 0, -0.5),
		},
		["accessories"] = {
			vector3(0, 1.2, 0.55),
			vector3(0, 0, 0.5),
		},
        ["faceright"] = {
			vec3(-0.30, 0.6, 0.65),
			vec3(-0.30, 0, 0.6),
		},
	},
}

Cam.Destroy = function()
	if Cam.Active then
		RenderScriptCams(false, false, 0, true, true)
		DestroyCam(Cam.Active, false)
		Cam.Active = nil
	end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- FINISH
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Finish",function(Data,Callback)
	exports["barbershop"]:Apply(Data)
	SetNuiFocus(false,false)
    FreezeEntityPosition(PlayerPedId(),false)
    if LocalPlayer["state"]["Creating"] then
        DoScreenFadeOut(500)
        while not IsScreenFadedOut() do 
            Wait(5) 
        end
    end
	vSERVER.Update(Data,FirstLogin)
	TriggerEvent("vrp:removeObjects")
	if FirstLogin then
		FirstLogin = false
		FreezeEntityPosition(PlayerPedId(),false)
	end
    Cam.Destroy()
    LocalPlayer["state"]["Character"] = Data
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CANCEL
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Cancel",function(Data,Callback)
    Cam.Destroy()
    vSERVER.Cancel()
	exports["barbershop"]:Apply(LocalPlayer["state"]["Barbershop"])
	LocalPlayer["state"]["Barbershop"] = {}
	SetNuiFocus(false,false)
    FreezeEntityPosition(PlayerPedId(),false)
	TriggerEvent("vrp:removeObjects")
    FreezeEntityPosition(PlayerPedId(),false)
    print("CANCEL")
	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
local Presets = {
    ["mp_f_freemode_01"] = json.decode("[0,0,1,26,10,0,-1,-1,-1,74,0,19,64,0.99,0,5,0.99,55,12,0.99,0,0,0,0,1,0.13,0,-0.17,-0.06,0.58,0.49,-0.1,0,-0.1,-0.3,-0.43,0.18,-0.2,-0.19,0.14,0,-1,-1,0,-0.25,-0.6,1,0,0,0]"),
}
RegisterNUICallback("Update",function(Data,Callback)
	local Ped = PlayerPedId()
	if GetEntityModel(Ped) == GetHashKey("mp_f_freemode_01") and Data[47] == 0 then
		vSERVER.ChangeSkin("mp_m_freemode_01")
		exports["skinshop"]:Apply()
	elseif GetEntityModel(Ped) == GetHashKey("mp_m_freemode_01") and Data[47] == 1 then
		vSERVER.ChangeSkin("mp_f_freemode_01")
		exports["skinshop"]:Apply()
        if FirstLogin then
            if Presets["mp_f_freemode_01"] then
                exports["barbershop"]:Apply(Presets["mp_f_freemode_01"])
            end
        end
	end

	for Index,v in pairs(Data) do
		Barber[Index] = v
	end

	exports["barbershop"]:Apply()

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Rotate",function(Data,Callback)
	local Ped = PlayerPedId()
	local Heading = GetEntityHeading(Ped)
	if Data == "Left" then
		SetEntityHeading(Ped,Heading + 10)
	else
		SetEntityHeading(Ped,Heading - 10)
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- APPLY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("barbershop:Apply")
AddEventHandler("barbershop:Apply",function(Table)
	if Table then
		exports["barbershop"]:Apply(Table)
	else
		exports["barbershop"]:Apply()
	end
    LocalPlayer["state"]["Character"] = Table
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- APPLY
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Apply",function(Table,Ped)
	if not Ped then
		Ped = PlayerPedId()
	end

	if Table then
		Barber = Table
	end

	for Number = 1,50 do
		if not Barber[Number] then
			Barber[Number] = 0
		end
	end

	SetPedHeadBlendData(Ped,Fathers[Barber[1] + 1],Mothers[Barber[2] + 1],0,Barber[5],0,0,Barber[3] + 0.0,0,0,false)

	SetPedEyeColor(Ped,Barber[4])

	SetPedComponentVariation(Ped,2,Barber[10],0,0)
	SetPedHairColor(Ped,Barber[11],Barber[12])

	SetPedHeadOverlay(Ped,0,Barber[7],0.99)
	SetPedHeadOverlayColor(Ped,0,0,0,0)

	SetPedHeadOverlay(Ped,1,Barber[22],Barber[23])
	SetPedHeadOverlayColor(Ped,1,1,Barber[24],Barber[24])

	SetPedHeadOverlay(Ped,2,Barber[19],Barber[20])
	SetPedHeadOverlayColor(Ped,2,1,Barber[21],Barber[21])

	SetPedHeadOverlay(Ped,3,Barber[9],0.99)
	SetPedHeadOverlayColor(Ped,3,0,0,0)

	SetPedHeadOverlay(Ped,4,Barber[13],Barber[14])
	SetPedHeadOverlayColor(Ped,4,1,Barber[15],Barber[15])

	SetPedHeadOverlay(Ped,5,Barber[25],Barber[26])
	SetPedHeadOverlayColor(Ped,5,1,Barber[27],Barber[27])

	SetPedHeadOverlay(Ped,6,Barber[6],0.99)
	SetPedHeadOverlayColor(Ped,6,0,0,0)

	SetPedHeadOverlay(Ped,8,Barber[16],Barber[17])
	SetPedHeadOverlayColor(Ped,8,1,Barber[18],Barber[18])

	SetPedHeadOverlay(Ped,9,Barber[8],0.99)
	SetPedHeadOverlayColor(Ped,9,0,0,0)

    SetPedHeadOverlay(Ped,10, Barber[48], Barber[49])
    SetPedHeadOverlayColor(Ped, 10, 1, Barber[50], Barber[51])

	SetPedFaceFeature(Ped,0,Barber[28])
	SetPedFaceFeature(Ped,1,Barber[29])
	SetPedFaceFeature(Ped,2,Barber[30])
	SetPedFaceFeature(Ped,3,Barber[31])
	SetPedFaceFeature(Ped,4,Barber[32])
	SetPedFaceFeature(Ped,5,Barber[33])
	SetPedFaceFeature(Ped,6,Barber[44])
	SetPedFaceFeature(Ped,7,Barber[34])
	SetPedFaceFeature(Ped,8,Barber[36])
	SetPedFaceFeature(Ped,9,Barber[35])
	SetPedFaceFeature(Ped,10,Barber[45])
	SetPedFaceFeature(Ped,12,Barber[42])
	SetPedFaceFeature(Ped,13,Barber[46])
	SetPedFaceFeature(Ped,14,Barber[37])
	SetPedFaceFeature(Ped,15,Barber[38])
	SetPedFaceFeature(Ped,16,Barber[40])
	SetPedFaceFeature(Ped,17,Barber[39])
	SetPedFaceFeature(Ped,18,Barber[41])
	SetPedFaceFeature(Ped,19,Barber[43])
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENBARBERSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function OpenBarbershop(Mode)
    local Ped = PlayerPedId()
	for Number = 1,47 do
		if not Barber[Number] then
			Barber[Number] = 0
		end
	end
    if GetEntityModel(Ped) == GetHashKey("mp_f_freemode_01") then
        Barber[47] = 1
	elseif GetEntityModel(Ped) == GetHashKey("mp_m_freemode_01") then
        Barber[47] = 0
    else
        Barber[47] = 3
	end
	LocalPlayer["state"]["Barbershop"] = Barber
    if not FirstLogin then
        vSERVER.Open()
    else
        vSERVER.Open()
        if cityName == "Kingdom" then
            SetEntityHeading(Ped,263.63)
        else
            SetEntityHeading(Ped,138.9)
        end
    end
	vRP.playAnim(true,{"mp_sleep","bind_pose_180"},true)

    FreezeEntityPosition(Ped,true)
	local Heading = GetEntityHeading(Ped)
	local Coords = GetOffsetFromEntityInWorldCoords(Ped,0.0,0.5,0)
    local ConfigCreating = false
    if LocalPlayer["state"]["Creating"] then
        ConfigCreating = exports["spawn"]:GetLocate()
        TriggerEvent("notify:TutorialStatus",false)
    end

    if ConfigCreating then
        DestroyAllCams(true)
        if not MantainPreset then
            SetEntityCoords(Ped,ConfigCreating["Peds"]["x"],ConfigCreating["Peds"]["y"],ConfigCreating["Peds"]["z"])
        end
        if Cam.Active then
            return false
        end
    
        local coords = GetOffsetFromEntityInWorldCoords(ped, 0, 2.2, 0.3)
        local point = GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.05)
        Cam.Active = CreateCamWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.00, 0.00, 0.00, 50.00, false, 0)

        local ped = PlayerPedId()
        local set = Cam.Sets["face"]
        local coords = GetOffsetFromEntityInWorldCoords(ped, set[1].x, set[1].y, set[1].z)
        local point = GetOffsetFromEntityInWorldCoords(ped, set[2].x, set[2].y, set[2].z)
        local tempCam = CreateCameraWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 50.0, false, 0)
    
        PointCamAtCoord(tempCam, point.x, point.y, point.z)
        SetCamActiveWithInterp(tempCam, Cam.Active, 1, 1, 1)
        CreateThread(function()
            repeat
                Wait(50)
            until not IsCamInterpolating(Cam.Active) and IsCamActive(tempCam)
            DestroyCam(Cam.Active, false)
            Cam.Active = tempCam
        end)
        SetCamActive(Cam.Active, true)
        RenderScriptCams(true, false, 0, true, true)
        DoScreenFadeIn(2500)
        while not IsScreenFadedIn() do 
            Wait(5) 
        end
    else
        if Cam.Active then
            return false
        end
    
        local coords = GetOffsetFromEntityInWorldCoords(ped, 0, 2.2, 0.3)
        local point = GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.05)
        Cam.Active = CreateCamWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.00, 0.00, 0.00, 50.00, false, 0)
    
        PointCamAtCoord(Cam.Active, point.x, point.y, point.z)
        SetCamActive(Cam.Active, true)
        RenderScriptCams(true, false, 0, true, true)
        
        local ped = PlayerPedId()
        local set = Cam.Sets["face"]
        local coords = GetOffsetFromEntityInWorldCoords(ped, set[1].x, set[1].y, set[1].z)
        local point = GetOffsetFromEntityInWorldCoords(ped, set[2].x, set[2].y, set[2].z)
        local tempCam = CreateCameraWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 50.0, false, 0)
    
        PointCamAtCoord(tempCam, point.x, point.y, point.z)
        SetCamActiveWithInterp(tempCam, Cam.Active, 1, 1, 1)
        CreateThread(function()
            repeat
                Wait(50)
            until not IsCamInterpolating(Cam.Active) and IsCamActive(tempCam)
            DestroyCam(Cam.Active, false)
            Cam.Active = tempCam
        end)
        DoScreenFadeIn(2500)
        while not IsScreenFadedIn() do 
            Wait(5) 
        end
    end


    -- print("Barber[47]", Barber[47])
    SendNUIMessage({
        action = "setVisible",
        data = "creator"
    })

    -- Número 'real' de variações possiveis de pele
    local numParents =
        IsPedMale( PlayerPedId() )
            and GetPedHeadBlendNumHeads( 0 ) + GetPedHeadBlendNumHeads( 2 )
            or  GetPedHeadBlendNumHeads( 1 ) + GetPedHeadBlendNumHeads( 3 )

    -- Forçar 45 porque parece funcionar e a gente não consegue confirmar com 100% de certeza
    -- se o valor anterior é valido
    numParents = 45

    print('GetNumberOfPedDrawableVariations(Ped,2) - 1=', Ped, GetNumberOfPedDrawableVariations(Ped,2) - 1)

	SendNUIMessage({ action = Mode, data = { Barber,GetNumberOfPedDrawableVariations(Ped,2) - 1, numParents } })
	SetNuiFocus(true,true)
    SetEntityVisible(Ped,true)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADOPEN
-----------------------------------------------------------------------------------------------------------------------------------------
AddEventHandler('onResourceStart', function(resource)
    Wait(1500)
    if resource == "sleepless_interact" then
        StartInteraction()
    end

    if resource == GetCurrentResourceName() then
        StartInteraction()
    end
end)

AddEventHandler('playerSpawned', function(resource)
    StartInteraction()
end)


function StartInteraction()
    for Number = 1,#Locations do
        interact.addCoords({
            id = "barbershop:"..tostring(Number),
            coords = vec3(Locations[Number]['x'],Locations[Number]['y'],Locations[Number]['z']),
            options = {
                {
                    label = _t("open_barbershop"),
                    icon = "scissors",
                    onSelect = function(data)
                        if vSERVER.CheckWanted() then
                            OpenBarbershop("barber")
                        end
                    end,
                    canInteract = function(entity, distance, coords, id)
                        return not exports["hud"]:Wanted() and not LocalPlayer["state"]["FFA"] and not LocalPlayer["state"]["PVP"] and not GlobalState["Restarting"] and LocalPlayer["state"]["Route"] < 900000
                    end
                }
            },
            renderDistance = 7.5,
            activeDistance = 1.5,
            cooldown = 1500
        })
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBERSHOP:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("barbershop:Open")
AddEventHandler("barbershop:Open",function(Mode,Bool)
	OpenBarbershop(Mode)
    FirstLogin = Bool
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBERSHOP:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
function PositionCameraPresets()
    local Ped = PlayerPedId()
    local Heading = GetEntityHeading(Ped)
	local Coords = GetOffsetFromEntityInWorldCoords(Ped,0.0,0.5,0)
    vRP.playAnim(true,{"mp_sleep","bind_pose_180"},true)
    local ConfigCreating = false
    ConfigCreating = exports["spawn"]:GetLocate()
    if LocalPlayer["state"]["Creating"] then
        TriggerEvent("notify:TutorialStatus",false)
    end

    if ConfigCreating then
        DestroyAllCams(true)
        if not MantainPreset then
            SetEntityCoords(Ped,ConfigCreating["Peds"]["x"],ConfigCreating["Peds"]["y"],ConfigCreating["Peds"]["z"])
        end

        if cityName == "Kingdom" then
            local coords = vector4(837.79,-1026.78,37.94,263.63)
            SetEntityCoords(Ped,coords.x,coords.y,coords.z)
            SetEntityHeading(Ped,coords.w)
            FreezeEntityPosition(Ped,true)
        else
            SetEntityHeading(Ped,138.9)
            FreezeEntityPosition(Ped,true)
        end
        if Cam.Active then
            return false
        end
    
        local coords = GetOffsetFromEntityInWorldCoords(ped, 0, 2.2, 0.3)
        local point = GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.05)
        Cam.Active = CreateCamWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.00, 0.00, 0.00, 50.00, false, 0)
    
        PointCamAtCoord(Cam.Active, point.x, point.y, point.z)
        SetCamActive(Cam.Active, true)
        RenderScriptCams(true, false, 0, true, true)
        
        local ped = PlayerPedId()
        local set = Cam.Sets["faceright"]
        local coords = GetOffsetFromEntityInWorldCoords(ped, set[1].x, set[1].y, set[1].z)
        local point = GetOffsetFromEntityInWorldCoords(ped, set[2].x, set[2].y, set[2].z)
        local tempCam = CreateCameraWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 50.0, false, 0)
    
        PointCamAtCoord(tempCam, point.x, point.y, point.z)
        SetCamActiveWithInterp(tempCam, Cam.Active, 1, 1, 1)
        CreateThread(function()
            repeat
                Wait(50)
            until not IsCamInterpolating(Cam.Active) and IsCamActive(tempCam)
            DestroyCam(Cam.Active, false)
            Cam.Active = tempCam
        end)
        DoScreenFadeIn(2500)
        while not IsScreenFadedIn() do 
            Wait(5) 
        end
    else
        if Cam.Active then
            return false
        end
        

        if cityName == "Kingdom" then
            local coords = vector4(837.79,-1026.78,37.94,263.63)
            SetEntityCoords(Ped,coords.x,coords.y,coords.z)
            SetEntityHeading(Ped,coords.w)
            FreezeEntityPosition(Ped,true)
        else
            SetEntityHeading(Ped,138.9)
            FreezeEntityPosition(Ped,true)
        end
    
        if Cam.Active then
            return false
        end
    
        local coords = GetOffsetFromEntityInWorldCoords(ped, 0, 2.2, 0.3)
        local point = GetOffsetFromEntityInWorldCoords(ped, 0, 0, -0.05)
        Cam.Active = CreateCamWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.00, 0.00, 0.00, 50.00, false, 0)
    
        PointCamAtCoord(Cam.Active, point.x, point.y, point.z)
        SetCamActive(Cam.Active, true)
        RenderScriptCams(true, false, 0, true, true)
        
        local ped = PlayerPedId()
        local set = Cam.Sets["faceright"]
        local coords = GetOffsetFromEntityInWorldCoords(ped, set[1].x, set[1].y, set[1].z)
        local point = GetOffsetFromEntityInWorldCoords(ped, set[2].x, set[2].y, set[2].z)
        local tempCam = CreateCameraWithParams( "DEFAULT_SCRIPTED_CAMERA", coords.x, coords.y, coords.z, 0.0, 0.0, 0.0, 50.0, false, 0)
    
        PointCamAtCoord(tempCam, point.x, point.y, point.z)
        SetCamActiveWithInterp(tempCam, Cam.Active, 1, 1, 1)
        CreateThread(function()
            repeat
                Wait(50)
            until not IsCamInterpolating(Cam.Active) and IsCamActive(tempCam)
            DestroyCam(Cam.Active, false)
            Cam.Active = tempCam
        end)
        DoScreenFadeIn(2500)
        while not IsScreenFadedIn() do 
            Wait(5) 
        end
    end
end

RegisterNetEvent("barbershop:Presets")
AddEventHandler("barbershop:Presets",function(Bool,Boolean1)
    vSERVER.Open()
    MantainPreset = Boolean1 or false
    onPresets = true
    if not MantainPreset then
        Wait(5000)
    end
    local Ped = PlayerPedId()
    if cityName == "Kingdom" then
        SetEntityHeading(Ped,263.63)
        CreateThread(function()
            while onPresets do
                FreezeEntityPosition(Ped,true)
                SetEntityVisible(Ped,true)
                Wait(0)
            end
        end)
        local coords = vector4(837.79,-1026.78,37.94,263.63)
        SetEntityCoords(Ped,coords.x,coords.y,coords.z)
        SetEntityHeading(Ped,coords.w)
        FreezeEntityPosition(Ped,true)
        SetEntityVisible(Ped,true)
    end
    CreateThread(function()
        while onPresets do
            FreezeEntityPosition(Ped,true)
            SetEntityVisible(Ped,true)
            Wait(0)
        end
    end)
    TriggerEvent("hud:toggleHud",false)
    FirstLogin = Bool
    local Ped = PlayerPedId()
    local gender = GetEntityModel(Ped)
    TriggerEvent("timeSet","Day")
    if not MantainPreset then
        local selectedPreset = PreSets[gender][1]["preset"]
        exports["barbershop"]:Apply(json.decode(selectedPreset),Ped)
    end
    SetEntityVisible(Ped,true)
    PositionCameraPresets()
    SendNUIMessage({
        action = "presets",
        data = {
            presets = PreSets[gender],
            gender = GetHashGender(gender)
        }
    })
    CreateThread(function()
        while FirstLogin do
            NetworkOverrideClockTime(12, 0, 0)
            Wait(0)
        end
    end)
    SetNuiFocus(true,true)
end)

function GetGenderHash(gender)
    if gender == "male" then
        return `mp_m_freemode_01`
    else
        return `mp_f_freemode_01`
    end
end
function GetHashGender(hash)
    if hash == `mp_m_freemode_01` then
        return "male"
    else
        return "female"
    end
end


function GetGenderModelNumber(Hash)
    if Hash == `mp_m_freemode_01` then
        return 0
    else
        return 1
    end
end

RegisterNUICallback("setActivePreset",function(Data,Callback)
    print("setActivePreset",Data)
    MantainPreset = false
    local Ped = PlayerPedId()
    local gender = GetGenderHash(Data.gender)
    local index = parseInt(Data.index) + 1
    local selectedPreset = PreSets[gender][index]["preset"]
    exports["barbershop"]:Apply(json.decode(selectedPreset),Ped)
end)

RegisterNUICallback("randomizeAppearance",function(Data,Callback)
    print("randomizeAppearance")
    MantainPreset = false
    local Ped = PlayerPedId()
    local currentGender = GetEntityModel(Ped)
    RandomizeAttributes(Ped,currentGender)
end)

RegisterNUICallback("nextStage",function(Data,Callback)
    print("nextStage",Data)
    if MantainPreset then
        local index = Data.index
        local Ped = PlayerPedId()
        local gender = GetGenderHash(Data.gender)
        if index then
            local index = parseInt(Data.index) + 1
            local selectedPreset = PreSets[gender][index]["preset"]
            exports["barbershop"]:Apply(json.decode(selectedPreset),Ped)
            exports["skinshop"]:Apply(Initial[1]["skinshop"][GetGenderModelNumber(gender)])
        end
    end
    Cam.Destroy()
    onPresets = false
    OpenBarbershop("open")
end)

RegisterNUICallback("getPresets",function(Data,Callback)
    local Ped = PlayerPedId()
    local currentGender = GetEntityModel(Ped)
    local gender = GetGenderHash(Data.gender)
    local selectedPreset = PreSets[gender]
    if not MantainPreset then
        if Data.gender == "male" then
            vSERVER.ChangeSkin("mp_m_freemode_01")
            exports["skinshop"]:Apply(Initial[1]["skinshop"][GetGenderModelNumber(`mp_m_freemode_01`)])
        else
            vSERVER.ChangeSkin("mp_f_freemode_01")
            exports["skinshop"]:Apply(Initial[1]["skinshop"][GetGenderModelNumber(`mp_f_freemode_01`)])
        end
        Ped = PlayerPedId()
        exports["barbershop"]:Apply(json.decode(PreSets[gender][1]["preset"]),Ped)
        exports["skinshop"]:Apply(Initial[1]["skinshop"][GetGenderModelNumber(gender)])
    end
    Callback(PreSets[gender])
end)

-- DEBUG -- 
--[[
RegisterCommand("barberpresets",function(args)
    local Ped = PlayerPedId()
    local coords = vector4(837.79,-1026.78,37.94,263.63)
    SetEntityCoords(Ped,coords.x,coords.y,coords.z)
    SetEntityHeading(Ped,coords.w)
    FreezeEntityPosition(Ped,true)
    TriggerEvent("barbershop:Presets",true)
end)
--]]

function RandomizeAttributes(Ped, Gender)
    if not Ped then
        Ped = PlayerPedId()
    end

    local RandomBarber = {}

    local genderPresets = PreSets[Gender]
    if genderPresets and #genderPresets > 0 then
        local function GetRandomAttribute(attributeIndex)
            local randomPresetIndex = math.random(1, #genderPresets)
            local selectedPreset = genderPresets[randomPresetIndex].preset

            local presetAttributes = {}
            for value in string.gmatch(selectedPreset, "[^,%[%]]+") do
                table.insert(presetAttributes, tonumber(value))
            end

            return presetAttributes[attributeIndex]
        end

        -- Mix and match attributes from different presets
        RandomBarber[1] = GetRandomAttribute(1) -- Father index
        RandomBarber[2] = GetRandomAttribute(2) -- Mother index
        RandomBarber[3] = GetRandomAttribute(3) -- Blend shape
        RandomBarber[4] = GetRandomAttribute(4) -- Eye color
        RandomBarber[5] = GetRandomAttribute(5) -- Skin tone
        RandomBarber[6] = GetRandomAttribute(6) -- Blemishes
        RandomBarber[7] = GetRandomAttribute(7) -- Facial hair type (if applicable)
        RandomBarber[8] = GetRandomAttribute(8) -- Ageing
        RandomBarber[9] = GetRandomAttribute(9) -- Makeup type
        RandomBarber[10] = GetRandomAttribute(10) -- Hair style
        RandomBarber[11] = GetRandomAttribute(11) -- Hair color primary
        RandomBarber[12] = GetRandomAttribute(12) -- Hair color secondary
        RandomBarber[13] = GetRandomAttribute(13) -- Lipstick type
        RandomBarber[14] = GetRandomAttribute(14) -- Lipstick opacity
        RandomBarber[15] = GetRandomAttribute(15) -- Lipstick color
        RandomBarber[16] = GetRandomAttribute(16) -- Chest hair type
        RandomBarber[17] = GetRandomAttribute(17) -- Chest hair opacity
        RandomBarber[18] = GetRandomAttribute(18) -- Chest hair color
        RandomBarber[19] = GetRandomAttribute(19) -- Blemishes opacity
        RandomBarber[20] = GetRandomAttribute(20) -- Gender-specific value
        RandomBarber[21] = GetRandomAttribute(21) -- Facial hair type for males
        RandomBarber[22] = GetRandomAttribute(22) -- Blush type
        RandomBarber[23] = GetRandomAttribute(23) -- Blush opacity
        RandomBarber[24] = GetRandomAttribute(24) -- Blush color
        RandomBarber[25] = GetRandomAttribute(25) -- Complexion type
        RandomBarber[26] = GetRandomAttribute(26) -- Complexion opacity
        RandomBarber[27] = GetRandomAttribute(27) -- Complexion color
        -- Randomize other facial features
        for i = 28, 50 do
            RandomBarber[i] = GetRandomAttribute(i)
        end
    else
        -- Randomize each parameter with min and max values
        RandomBarber[1] = math.random(1, 23) -- Father index
        RandomBarber[2] = math.random(1, 21) -- Mother index
        if Gender == `mp_m_freemode_01` then
            RandomBarber[3] = 0.0 -- Blend shape (0.0 to 1.0)
        else
            RandomBarber[3] = 1.0 -- Blend shape (0.0 to 1.0)
        end
        RandomBarber[4] = math.random(0, 31) -- Eye color
        RandomBarber[5] = math.random(0, 12) -- Skin tone
        RandomBarber[6] = math.random(0, 5) -- Blemishes
        RandomBarber[7] = 0.0
        if Gender == `mp_m_freemode_01` then
            RandomBarber[7] = math.random(0, 23) -- Facial hair type
        end
        RandomBarber[8] = math.random(0, 11) -- Ageing
        RandomBarber[9] = math.random(0, 14) -- Makeup type
        RandomBarber[10] = math.random(0, 33) -- Hair style
        RandomBarber[11] = math.random(0, 63) -- Hair color primary
        RandomBarber[12] = math.random(0, 63) -- Hair color secondary
        RandomBarber[13] = math.random(0, 11) -- Lipstick type
        RandomBarber[14] = math.random() -- Lipstick opacity (0.0 to 1.0)
        if Gender == `mp_m_freemode_01` then
            RandomBarber[17] = 0.0
        else
            RandomBarber[17] = 1.0
        end
        RandomBarber[15] = math.random(0, 63) -- Lipstick color
        RandomBarber[16] = math.random(0, 17) -- Chest hair type
        RandomBarber[17] = math.random() -- Chest hair opacity (0.0 to 1.0)
        if Gender == `mp_m_freemode_01` then
            RandomBarber[17] = 1.0
        else
            RandomBarber[17] = 0.0
        end
        RandomBarber[18] = math.random(0, 63) -- Chest hair color
        RandomBarber[19] = math.random(0, 10) -- Blemishes opacity
        RandomBarber[20] = 0.0
        if Gender == `mp_m_freemode_01` then
            RandomBarber[20] = 1.0
        else
            RandomBarber[20] = 0.0
        end
        RandomBarber[21] = 0.0
        if Gender == `mp_m_freemode_01` then
            RandomBarber[21] = math.random(0, 23) -- Facial hair type
        end
        RandomBarber[22] = math.random(0, 10) -- Blush type
        RandomBarber[23] = math.random() -- Blush opacity (0.0 to 1.0)
        RandomBarber[24] = math.random(0, 63) -- Blush color
        RandomBarber[25] = math.random(0, 10) -- Complexion type
        RandomBarber[26] = math.random() -- Complexion opacity (0.0 to 1.0)
        RandomBarber[27] = math.random(0, 63) -- Complexion color
        RandomBarber[28] = math.random() -- Nose width (0.0 to 1.0)
        RandomBarber[29] = math.random() -- Nose peak height (0.0 to 1.0)
        RandomBarber[30] = math.random() -- Nose peak length (0.0 to 1.0)
        RandomBarber[31] = math.random() -- Nose bone height (0.0 to 1.0)
        RandomBarber[32] = math.random() -- Nose peak lower height (0.0 to 1.0)
        RandomBarber[33] = math.random() -- Nose bone twist (0.0 to 1.0)
        RandomBarber[34] = math.random() -- Eyebrow height (0.0 to 1.0)
        RandomBarber[35] = math.random() -- Eyebrow width (0.0 to 1.0)
        RandomBarber[36] = math.random() -- Cheekbone height (0.0 to 1.0)
        RandomBarber[37] = math.random() -- Cheekbone width (0.0 to 1.0)
        RandomBarber[38] = math.random() -- Cheeks width (0.0 to 1.0)
        RandomBarber[39] = math.random() -- Eyes width (0.0 to 1.0)
        RandomBarber[40] = math.random() -- Lips width (0.0 to 1.0)
        RandomBarber[41] = math.random() -- Jaw width (0.0 to 1.0)
        RandomBarber[42] = math.random() -- Jaw height (0.0 to 1.0)
        RandomBarber[43] = math.random() -- Chin length (0.0 to 1.0)
        RandomBarber[44] = math.random() -- Chin position (0.0 to 1.0)
        RandomBarber[45] = math.random() -- Chin width (0.0 to 1.0)
        RandomBarber[46] = math.random() -- Chin shape (0.0 to 1.0)
        RandomBarber[48] = math.random(0, 10) -- Body blemishes type
        RandomBarber[49] = math.random() -- Body blemishes opacity (0.0 to 1.0)
        RandomBarber[50] = math.random(0, 63) -- Body blemishes color
    end

    -- Apply the generated or mixed attributes to the character
    exports["barbershop"]:Apply(RandomBarber, Ped)
end

--[[
RegisterCommand("applypreset",function(_,args)
    local Ped = PlayerPedId()
    local currentGender = GetEntityModel(Ped)
    local selected = parseInt(args[1])
    local selectedPreset = PreSets[currentGender][selected]["preset"]
    exports["barbershop"]:Apply(json.decode(selectedPreset),Ped)
    exports["skinshop"]:Apply(Initial[1]["skinshop"][GetGenderModelNumber(gender)])
end)
--]]
-----------------------------------------------------------------------------------------------------------------------------------------
-- BARBERSHOP:OPEN:NPC
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("barbershop:Open:NPC")
AddEventHandler("barbershop:Open:NPC",function(Mode)
	TriggerEvent("talknpc:closeTalk")
	OpenBarbershop(Mode)
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)

-- CreateThread(function()
--     Wait(500)
--     OpenBarbershop("open")
-- end)


-- CreateThread(function()
--     LocalPlayer["state"]["Creating"] = true
--     Wait(1000)
--     OpenBarbershop("open")
-- end)


-- CreateThread(function()
--     local Ped = PlayerPedId()
--     local coords = vector4(837.79,-1026.78,37.94,263.63)
--     SetEntityCoords(Ped,coords.x,coords.y,coords.z)
--     SetEntityHeading(Ped,coords.w)
--     FreezeEntityPosition(Ped,true)
-- end)