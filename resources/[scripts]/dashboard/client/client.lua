
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
Tunnel.bindInterface("dashboard",Client)
vSERVER = Tunnel.getInterface("dashboard")
cityName = GetConvar("cityName", "")
PlayerData = {}
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dasboards:open", function(userPermissions, userInfos)
    SetNuiFocus(true, true)
    local data = {
        visible                = true,
        cityId         = cityName or "",
        userPermissions        = userPermissions or {},
        userInfos              = {
            passport  = userInfos.passport or 0,
            name       = userInfos.name   or "",
            role       = userInfos.role   or "",
            avatar     = userInfos.avatar or ""
        }
    }
    Debug.print("dashboards:open:".. json.encode(data, {indent = true}))
    SendNUIMessage({
        action = "setVisible",
        data = data
    })
end)

RegisterNuiCallback('closeNui', function(data, cb)
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "setVisible",
        data = {
            visible = false,
        }
    })
    TriggerServerEvent("dashboard:closeNui")
    cb(true)
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    Callback(string.lower(cityName or ""))
end)

RegisterNUICallback("getCityId",function(Data,Callback)
    Callback(cityName or "")
end)

RegisterNUICallback('getServerHost', function(Data, Callback)
    local api_url = GetConvar("api_url", "")
    Callback(api_url)
end)

RegisterCommand('ticket', function()
    TriggerServerEvent("dashboard:createTicket", "admin", "teste")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("handleSpectate", function(data, cb)
    local Passport = data.user_id 
    TriggerServerEvent("dashboard:handleSpectate", Passport)
    cb(true)
end)

RegisterNUICallback("handleTeleport", function(data, cb)
    local Passport = data.user_id 
    TriggerServerEvent("dashboard:handleTeleport", Passport)
    cb(true)
end)


RegisterNuiCallback('call:getHome', function(data, cb)
    cb({
        title = _t('welcome_to_help_tool'),
        description = {
            _t('help_tool_description'),
            _t('help_tool_description_2')
        },
        items = HELP_CONFIG
    })
end)

RegisterCommand("openDashboard", function()
    TriggerServerEvent("dashboard:openDashboard")
end)
RegisterKeyMapping("openDashboard", "Open Dashboard", "keyboard", "F1")
