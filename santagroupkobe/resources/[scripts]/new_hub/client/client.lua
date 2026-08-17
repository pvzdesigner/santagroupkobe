
-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPS = Tunnel.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Client = {}
Tunnel.bindInterface("new_hub",Client)
vSERVER = Tunnel.getInterface("new_hub")
cityName = GetConvar("cityName", "")
PlayerData = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local PlayerBattlePass = {}
local Pause = false

local BONE_ID__SKEL_Head = 0x322C

local HUB_CAMERA_DISTANCE = 3.0

local HUB_CAMERA_BONE_OFFSET__SKEL_Head = vec3( 0.10, 0.0, 0.0 - 0.15 )

local gHubCameraId = nil
local gHubCameraShapeTestHandle = nil
local gHubCameraShapeTestLastResultPos = nil

---@param camId number
---@param overridePos? vector3
local function ResetHubCameraPosition( camId, overridePos )

    local pedId = PlayerPedId()
    local pedPos = GetEntityCoords( pedId )

    local wishCamPos =
        overridePos
            and overridePos
            or  GetEntityForwardVector( pedId ) * HUB_CAMERA_DISTANCE + pedPos

    -- if not IsCamActive( camId ) then

        SetCamCoord( camId, wishCamPos.x, wishCamPos.y, wishCamPos.z )
    -- end

    -- InterpolateCamWithParams( camId, wishCamPos.x, wishCamPos.y, wishCamPos.z, 0.0, 0.0, 0.0, 20.0, 1000,1, 1, 2, 1)

    PointCamAtPedBone( camId, pedId, BONE_ID__SKEL_Head, HUB_CAMERA_BONE_OFFSET__SKEL_Head.x, HUB_CAMERA_BONE_OFFSET__SKEL_Head.y, HUB_CAMERA_BONE_OFFSET__SKEL_Head.z, true )

    TaskLookAtCoord( pedId, wishCamPos.x, wishCamPos.y, wishCamPos.z, 0.0, 0.0, 0.0, 20.0, 1000, 1, 1, 2, 1 )
end

---@param fc number
---@return boolean
local function UpdateHubCamera( fc )

    local camId = gHubCameraId

    if not camId then
        return false
    end

    -- if fc % 10 == 0 then

        ResetHubCameraPosition( camId --[[, gHubCameraShapeTestLastResultPos )]])
    -- end

    --[=[
    if fc % 10 == 0 then

        if not gHubCameraShapeTestHandle then

            local camPos = GetCamCoord( camId )

            local pedId = PlayerPedId()

            local bonePos = GetPedBoneCoords( pedId, BONE_ID__SKEL_Head, HUB_CAMERA_BONE_OFFSET__SKEL_Head.x, HUB_CAMERA_BONE_OFFSET__SKEL_Head.y, HUB_CAMERA_BONE_OFFSET__SKEL_Head.z, true )

            print('bonePos', bonePos)

            gHubCameraShapeTestHandle = StartShapeTestLosProbe( camPos.x, camPos.y, camPos.z, bonePos.x, bonePos.y, bonePos.z, -1 --[[ Everything ]], 0, 4 )

            print( 'started shaptest camPos=', camPos)
        end
    end

    if gHubCameraShapeTestHandle then

        local status, hit, hitPos, hitNormal, hitEntity = GetShapeTestResult( gHubCameraShapeTestHandle )

        if status ~= 1 --[[ Pending ]] then

            gHubCameraShapeTestLastResultPos =
                hit
                    and hitPos
                    or  nil

            gHubCameraShapeTestHandle = nil

            print('shapetest results', status, hit, hitPos, hitNormal, hitEntity)
        end
    end
    --]=]

    return true
end

local function PreEnableHubCamera()

    local pedId = PlayerPedId()

    if IsPedRunning(pedId ) then   
        ClearPedTasksImmediately( pedId )
    end
end

---@param enabled boolean
local function EnableHubCamera( enabled )

    if gHubCameraId then

        DestroyCam( gHubCameraId )

        RenderScriptCams( false, true, 250, true, true )

        TaskClearLookAt( PlayerPedId() )

        gHubCameraId = nil
        gHubCameraShapeTestHandle = nil
        gHubCameraShapeTestLastResultPos = nil
    end

    if enabled then

        PreEnableHubCamera()

        local pedId = PlayerPedId()
        local pedPos = GetEntityCoords( pedId )

        local camId = CreateCam( 'DEFAULT_SCRIPTED_CAMERA', true)

        SetCamFov( camId, 20.0 )

        ResetHubCameraPosition( camId )

        SetCamActive( camId, true )
        RenderScriptCams( true, true, 250, true, true )

        gHubCameraId = camId

        CreateThread(function()

            while UpdateHubCamera( GetFrameCount() ) do
                Wait( 0 )
            end

            EnableHubCamera( false )
        end)
    end
end

---@param heading string
---@param rows string[] | InputDialogRowProps[]
---@param options InputDialogOptionsProps[]?
---@return string[] | number[] | boolean[] | nil
function Client.inputDialog(heading, rows, options)
    local input = lib.inputDialog(heading, rows, options)
    return input
end

RegisterCommand( 'hubcam', function()
    EnableHubCamera( not gHubCameraId )
end, false)

RegisterNUICallback("changeInsta",function(Data,Callback)
    TransitionFromBlurred(0)
    SetNuiFocus(false,false)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })
    InHub = false
    Wait(250)
    ExecuteCommand("instagram")
    Callback(true)
end)

RegisterNUICallback("changeTiktok",function(Data,Callback)
    TransitionFromBlurred(0)
    SetNuiFocus(false,false)
    SendNUIMessage({
        action = 'setVisible',
        data = false
    })
    InHub = false
    Wait(250)
    ExecuteCommand("TikTok")
    Callback(true)
end)

local function OpenHub()

    if not LocalPlayer["state"]["Active"] then
        return
    end

	if not Pause and ( not IsPauseMenuActive() or GetPauseMenuState() == 30 --[[ PM_SHUTTING_DOWN ]] ) then

        TriggerEvent("hud:Active",false)
        -- TransitionToBlurred(1000)
        TransitionFromBlurred(0)
        local Data = {
            passport = PlayerData["passport"],
            cityId = cityName,
            promotions = Promotion[cityName]
        }
        print("[DEBUG] Pause command, sending data to NUI", json.encode(Data))
        SendNUIMessage({
            action = 'Open',
            data = Data
        })
        SetNuiFocus(true,true)

        EnableHubCamera( true )
	end
end

local function CloseHub()

    -- assert( InHub, 'Hub is not active' )

    TransitionFromBlurred(0)

    SetNuiFocus(false,false)

    SendNUIMessage({
        action = 'setVisible',
        data = false
    })

    EnableHubCamera( false )

    -- InHub = false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- COMMAND
-----------------------------------------------------------------------------------------------------------------------------------------
---
RegisterCommand("Pause",function()

    OpenHub()
end)

RegisterCommand("openMap",function()
    TriggerEvent("hud:inMap")
    ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_MP_PAUSE"),0,-1)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("Pause", _t("settings"), "keyboard", "Escape")
RegisterKeyMapping("openMap", _t("settings"), "keyboard", "P")
RegisterKeyMapping("BattlePass", _t("battlePass"), "keyboard", "F4")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("openConfig",function(Data,Callback)

    CloseHub()

    ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_LANDING_MENU"),0,-1)

    TriggerEvent("hud:inMap")

    Callback(true)
end)

RegisterNUICallback("help",function(Data,Callback)

    CloseHub()

    ExecuteCommand("calladm")

    Callback(true)
end)

RegisterNUICallback("openMap",function(Data,Callback)

    CloseHub()

    ActivateFrontendMenu(GetHashKey("FE_MENU_VERSION_MP_PAUSE"),0,-1)

    TriggerEvent("hud:inMap")

    Callback(true)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SPLITSTRING
-----------------------------------------------------------------------------------------------------------------------------------------
function splitString(Full,Symbol)
	local Table = {}

	if not Symbol then
		Symbol = "-"
	end

    if not Full then
        return Table
    end

	for Full in string.gmatch(Full,"([^"..Symbol.."]+)") do
		Table[#Table + 1] = Full
	end

	return Table
end

RegisterNUICallback("goEvent",function(Data,Callback)
    local Coords = splitString(Data.coords,",")
    Coords = vec3(tonumber(Coords[1]),tonumber(Coords[2]),tonumber(Coords[3]))
    local Ped = PlayerPedId()

    CloseHub()

    DoScreenFadeOut(2500)
    while not IsScreenFadedOut() do 
        Wait(5) 
    end
    SetEntityCoords(Ped,Coords.x,Coords.y,Coords.z-1,false,false,false,false)
    FreezeEntityPosition(Ped,true)
    RequestCollisionAtCoord(Coords.x,Coords.y,Coords.z)
    while not HasCollisionLoadedAroundEntity(Ped) do
        Wait(1)
    end

    FreezeEntityPosition(Ped,false)
    DoScreenFadeIn(5000)
    while not IsScreenFadedIn() do
        Wait(5)
    end


    ExecuteCommand("mundo Evento")
    Callback(true)
end)


RegisterNUICallback("openBuySkin",function(Data,Callback)

    CloseHub()

    ExecuteCommand("skins")

    Callback(true)
end)

RegisterNUICallback("getPromotions",function(Data,Callback)
    local Promotion = Promotion[cityName]
    print("getPromotions ",json.encode(Promotion))
    Callback(Promotion)
end)

RegisterNUICallback("openPromotion",function(Data,Callback)
    print("openPromotion",json.encode(Data))
    TriggerEvent("player:OpenURL",Data.link)
    Callback(true)
end)

RegisterNUICallback("openPanel",function(Data,Callback)
    print("openPanel",json.encode(Data))

    CloseHub()

    if not vSERVER.hasJob() then
        TriggerEvent("hud:Active",true)
        --TriggerEvent("Notify","vermelho","Você ainda não está em nenhuma organização, entre em uma para abrir o painel.",10000,"PAINEL")
        TriggerEvent("Notify2","#semOrg")
    end
    ExecuteCommand(_t("panel"))
    Callback(true)
end)

RegisterNUICallback('getServerHost', function(Data, Callback)
    local api_url = GetConvar("api_url", "")
    print("[DEBUG] - GET SERVER HOST, api_url: " .. api_url)
    Callback(api_url)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Close",function(Data,Callback)
    
    CloseHub()
    
    TriggerEvent("hud:Active",true)

    Callback(true)
end)

RegisterNUICallback("openStore",function(Data,Callback)
    TriggerEvent("player:OpenURL",StoreLink[cityName])
    Callback(true)
end)

RegisterNUICallback("addBlur",function(Data,Callback)
    TransitionToBlurred(0)
    Callback(true)
end)

RegisterNUICallback("buyDiamonds",function(Data,Callback)
    local url = DiamondLink[cityName]
    if url and url ~= "" then
        TriggerEvent("player:OpenURL",url)
    else
        TriggerEvent("player:OpenURL",StoreLink[cityName])
    end
    Callback(true)
end)


RegisterNetEvent("playerData")
AddEventHandler("playerData",function(Data)
    PlayerData = FormatPlayerData(Data)
end)

AddEventHandler('onResourceStart', function(resource)
    if resource == GetCurrentResourceName() then
        PlayerData = vRP.GetPlayerData()
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEWS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sendNews",function(Data,Callback)
    local Success = vSERVER.AddNews(Data.message)
    Callback(Success)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- NEWS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("hub:Notify")
AddEventHandler("hub:Notify", function(Table)
    SendNUIMessage({
        action = 'Notify',
        data = Table
    })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPEN PLAYER PERFIL
-----------------------------------------------------------------------------------------------------------------------------------------
local lastSelected = nil
RegisterNetEvent('hub:openPlayerPerfil', function(Data)
    local Passport = Player(Data).state.Passport
    print("hub:openPlayerPerfil",json.encode(Data),Passport)
    
    SendNUIMessage({
        action = 'setVisible',
        data = true
    })
    Wait(1)
    SendNUIMessage({
        action = 'openPerfil',
        data = {
            passport = Passport,
            cityId = cityName
        }
    })
    lastSelected = Data
    SetNuiFocus(true,true)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- REQUEST PHONE
-----------------------------------------------------------------------------------------------------------------------------------------
local requestInformationsCooldown = GetGameTimer()
RegisterNUICallback("requestPhone",function(Data,Callback)
    local Cooldown = requestInformationsCooldown - GetGameTimer()
    if Cooldown > 0 then
        TriggerEvent("Notify2","#cooldownRequests",{msg = Cooldown / 1000 })
        return
    end
    requestInformationsCooldown = GetGameTimer() + 2500
    local Success = vSERVER.RequestPhone(Data)
    Callback(Success)
end)

RegisterNUICallback("requestGroup",function(Data,Callback)
    local Cooldown = requestInformationsCooldown - GetGameTimer()
    if Cooldown > 0 then
        TriggerEvent("Notify2","#cooldownRequests",{msg = Cooldown / 1000 })
        return
    end
    requestInformationsCooldown = GetGameTimer() + 2500
    local Success = vSERVER.RequestGroup(Data)
    Callback(Success)
end)

RegisterNUICallback("createEvent",function(Data,Callback)
    local Success = vSERVER.CreateEvent(Data.name,Data.icon,Data.coordinates,Data.time,Data.date)
    Callback(Success)
end)


RegisterNUICallback("savePerfil",function(Data,Callback)
    local Success = vSERVER.SaveInfos(Data.tiktok or "",Data.instagram or "",Data.description or "")
    Callback(Success)
end)

RegisterCommand("teste",function()
    local Source = GetPlayerServerId(PlayerId())
    TriggerEvent("hub:openPlayerPerfil",Source)
end)

RegisterNUICallback("openInstagram",function(instagramUser,Callback)
    TriggerEvent("player:OpenURL","https://www.instagram.com/"..instagramUser)
end)

RegisterNUICallback("openTikTok",function(tiktokUser,Callback)
    TriggerEvent("player:OpenURL","https://www.tiktok.com/@"..tiktokUser)
end)

RegisterNUICallback("sendRelationship",function(Data,Callback)
    TriggerServerEvent("player:Relationship",lastSelected)
    Callback(true)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- GET OFFERS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getOffers",function(Data,Callback)
    local exclusiveLink = GlobalState["exclusive_link"] or {}
    local Offers = {
        ["flashOffer"] = GlobalState["flash_offer"] or {},
        ["monthlyVip"] = GlobalState["monthly_vip"] or {},
        ["exclusiveLink"] = GlobalState["exclusive_link"] or {},
    }
    print("getOffers",json.encode(Offers, {indent = true}))
    Callback(Offers)
end)

RegisterNUICallback("getRelationship",function(Data,Callback)
    local Relationship = RelationshipConfig
    Callback(Relationship)
end)

RegisterNUICallback("breakRelationship",function(Data,Callback)
    local Success = vSERVER.BreakRelationShip(Data)
    Callback(Success)
end)

RegisterNUICallback("requestRelationship",function(Data,Callback)
    local Success = vSERVER.UpdateRelationShip(Data)
    Callback(Success)
end)

--[=[
local function VoiceSettingsInputToggleOnOff()

    -- Forçar input para desabilitar/habilitar o botão do voip

    BeginScaleformMovieMethodOnFrontend( 'SET_INPUT_EVENT' )
    ScaleformMovieMethodAddParamInt( 11 --[[ PAD_DPADRIGHT ]])
    EndScaleformMovieMethod()
end
--]=]

---@enum eGotoVoiceSettingsState
local eGotoVoiceSettingsState =
{
    START                   = 0,
    WAIT_FRONTEND           = 1,
    WAIT_INPUT_EVENT        = 2,
    WAIT_MENU_SHIFT_DEPTH   = 3,
    IDLE                    = 4,
    CLEANUP                 = 5,
}

---@class GotoVoiceSettingsFSMContext
---@field private state             eGotoVoiceSettingsState
---@field private stateChangedAt    number
---@field public  getState          fun( self ): eGotoVoiceSettingsState
---@field public  setState          fun( self, newState: eGotoVoiceSettingsState )

local NUM_MILLISECONDS_AFTER_LAYOUT_EVENT_UPDATE = 200
local NUM_MILLISECONDS_AFTER_INPUT_EVENT_UPDATE = 200

local once = true

---@param ctx GotoVoiceSettingsFSMContext
---@return boolean keepRunning
local function UpdateGotoVoiceSettingsFSM( ctx )

    -- Esconder o menu do game enquanto não estivermos no estado desejado ( página de configuração de voz )
    if ctx:getState() ~= eGotoVoiceSettingsState.IDLE then

        -- SUPPRESS_FRONTEND_RENDERING_THIS_FRAME
        N_0xba751764f0821256()
    end

    -- HasMenuTriggerEventOccurred
    -- local hasMenuTriggerEventOccurredThisFrame =  ( N_0xf284ac67940c6812() == 1 and GetPauseMenuSelection() ) ~= nil

    -- HasMenuLayoutChangedEventOccurred
    -- local hasMenuLayoutChangedEventOccurred = ( N_0x2e22fefa0100275e() == 1 and GetPauseMenuSelectionData() ) ~= nil

    if      ctx:getState() == eGotoVoiceSettingsState.START then
        -- Inicializar o menu do game

        ActivateFrontendMenu( `FE_MENU_VERSION_LANDING_MENU`, false, -1 )

        ctx:setState( eGotoVoiceSettingsState.WAIT_FRONTEND )

    elseif  ctx:getState() == eGotoVoiceSettingsState.WAIT_FRONTEND then

        if not IsPauseMenuActive() then
            return true -- Continue
        end

        if GetGameTimer() - ctx.stateChangedAt < NUM_MILLISECONDS_AFTER_LAYOUT_EVENT_UPDATE then
            return true -- Continue
        end

        -- TakeControlOfFrontend()

        ctx:setState( eGotoVoiceSettingsState.WAIT_INPUT_EVENT )

    elseif  ctx:getState() == eGotoVoiceSettingsState.WAIT_INPUT_EVENT then

        if GetGameTimer() - ctx.stateChangedAt < NUM_MILLISECONDS_AFTER_INPUT_EVENT_UPDATE then
            return true -- Continue
        end

        -- Focar "Rockstar Editor"
        BeginScaleformMovieMethodOnFrontend( 'SET_INPUT_EVENT' )
            ScaleformMovieMethodAddParamInt( 8 --[[ SCALEFORM_INPUT_EVENT_UP ]] )
        EndScaleformMovieMethodReturnValue()

        -- Focar "Voice Chat"
        BeginScaleformMovieMethodOnFrontend( 'SET_INPUT_EVENT' )
            ScaleformMovieMethodAddParamInt( 8 --[[ SCALEFORM_INPUT_EVENT_UP ]] )
        EndScaleformMovieMethodReturnValue()

        ctx:setState( eGotoVoiceSettingsState.WAIT_MENU_SHIFT_DEPTH )

    elseif  ctx:getState() == eGotoVoiceSettingsState.WAIT_MENU_SHIFT_DEPTH then

        if GetGameTimer() - ctx.stateChangedAt < NUM_MILLISECONDS_AFTER_INPUT_EVENT_UPDATE then
            return true -- Continue
        end

        -- Focar "Voice Chat" -> "Voice Chat Enabled"
        BeginScaleformMovieMethodOnFrontend( 'MENU_SHIFT_DEPTH' )
            ScaleformMovieMethodAddParamInt( 1 )
        EndScaleformMovieMethod()

        ctx:setState( eGotoVoiceSettingsState.IDLE )

    elseif  ctx:getState() == eGotoVoiceSettingsState.IDLE then

        if
                not IsPauseMenuActive()
            or  IsControlJustPressed( 0, 202 --[[ INPUT_FRONTEND_CANCEL ]] )
        then

            ctx:setState( eGotoVoiceSettingsState.CLEANUP )
        end

    elseif  ctx:getState() == eGotoVoiceSettingsState.CLEANUP then

        ReleaseControlOfFrontend()

        SetFrontendActive( false )

        return false -- Bail
    end

    return true -- Continua
end

---@class GotoVoiceSettingsOptions
---@field public onTerminated fun()

---@param opts? GotoVoiceSettingsOptions
local function GotoVoiceSettings( opts )

    ---@type GotoVoiceSettingsFSMContext
    local ctx =
    {
        state               = 0,
        stateChangedAt      = 0,

        getState = function( self )
            return self.state
        end,

        setState = function( self, newState )

            self.state  = newState
            self.stateChangedAt = GetGameTimer()
        end
    }

    CreateThread(
        function()

            while UpdateGotoVoiceSettingsFSM( ctx ) do

                Wait( 0 )
            end

            if opts then

                opts.onTerminated()
            end
        end
    )
end

RegisterNUICallback( 'openMic', function( data, cb )

    CloseHub()

    GotoVoiceSettings({
        onTerminated = function()

            OpenHub()
        end
    })

    cb({ ok = true })
end)

--[=[

RegisterCommand('newhub:debug_voice', function()
    GotoVoiceSettings()
end, false )

RegisterCommand('newhub:debug_hasvoip', function()
    print('hasvoip', GetProfileSetting( 302 --[[ AUDIO_VOICE_OUTPUT ]]) )
end, false )

--]=]