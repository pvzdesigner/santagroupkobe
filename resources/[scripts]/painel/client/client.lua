Tunnel = module('vrp','lib/Tunnel')
Proxy = module('vrp','lib/Proxy')
vRP = Proxy.getInterface('vRP')
vRPServer = Tunnel.getInterface("vRP")
Client = {}
Tunnel.bindInterface("painel", Client)
vSERVER = Tunnel.getInterface("painel")
cityName = GetConvar("cityName", "")

-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("painel:OpenNew")
AddEventHandler("painel:OpenNew", function(Info)
    print("painel:OpenNew")
    local Ped = PlayerPedId()
    local Health = GetEntityHealth(Ped)
    if Health <= 100 then
        return
    end
    SendNUIMessage({
        action = 'openPainel',
        data = Info
    })
    SetNuiFocus(true, true)
    print(json.encode(Info))
end)

--- Callback for hiring a player.
--- @param Data table - The data sent from the client, containing the passport ID.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("hire", function(Data, Callback)
    print("[DEBUG] - HIRE, Data: " .. json.encode(Data))
    local Status = vSERVER.Hire(parseInt(Data))
    print("[DEBUG] - Status, Data: ", tostring(Status))
    Callback(Status)
end)

--- Callback for sending farm data.
--- @param Data table - The data sent from the client, containing farm information.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("sendFarm", function(Data, Callback)
    print("[DEBUG] - SEND FARM, Data: " .. json.encode(Data))
    local Status = vSERVER.DeliverFarm(Data)
    Callback(Status)
end)

--- Callback for updating permissions.
--- @param Data table - The data sent from the client, containing passport and role information.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("updatePermission", function(Data, Callback)
    print("[DEBUG] - UPDATE PERMISSION, Data: " .. json.encode(Data))
    if Data and Data.passport then
        local Status = vSERVER.UpdatePermission(Data.passport, parseInt(Data.role))
        Callback(Status)
    end
end)

--- Callback for updating team.
--- @param Data table - The data sent from the client, containing passport and team information.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("updateTeam", function(Data, Callback)
    print("[DEBUG] - UPDATE TEAM, Data: " .. json.encode(Data))
    if Data and Data.passport then
        local Status = vSERVER.UpdateTeam(Data.passport, parseInt(Data.team))
        Callback(Status)
    end
end)

--- Callback for changing farm settings.
--- @param Data table - The data sent from the client, containing reward, daily, and perFarm information.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("changeMeta", function(Data, Callback)
    print("[DEBUG] - changeMeta, Data: " .. json.encode(Data))
    if Data and Data.reward then
        if Data.reward == "" or Data.reward == nil or Data.daily == "" or Data.daily == nil or Data.perFarm == "" or Data.perFarm == nil then
            return
        end
        vSERVER.UpdateFarmSettings(Data.reward, Data.daily, Data.perFarm)
    end
end)

--- Callback for firing a player.
--- @param Data table - The data sent from the client, containing the passport ID.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("fire", function(Data, Callback)
    print("[DEBUG] - FIRE, Data: " .. json.encode(Data))
    local Status = vSERVER.Fire(Data)
    Callback(Status)
end)

--- Callback for marking the organization location.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("orgLocation", function(Data, Callback)
    vSERVER.MarkGroupCoords()
    Callback(true)
end)

--- Callback for opening the organization's Discord link.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("clickDiscord", function(Data, Callback)
    vSERVER.ClickGroupDiscord()
    Callback(true)
end)

--- Callback for saving male clothes for the organization.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("saveMale", function(Data, Callback)
    vSERVER.SetClothesOrg()
    Callback(true)
end)

--- Callback for saving female clothes for the organization.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("saveFemale", function(Data, Callback)
    vSERVER.SetClothesOrg()
    Callback(true)
end)

--- Callback for deleting male clothes.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("deleteMale", function(Data, Callback)
    print("[DEBUG] - deleteMale, Data: " .. json.encode(Data))
    Callback(true)
end)

--- Callback for deleting female clothes.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("deleteFemale", function(Data, Callback)
    print("[DEBUG] - deleteFemale, Data: " .. json.encode(Data))
    Callback(true)
end)

--- Callback for changing group settings.
--- @param Data table - The data sent from the client, containing color, banner, and radio information.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("changeSettings", function(Data, Callback)
    print("[DEBUG] - changeSettings, Data: " .. json.encode(Data))
    Callback(vSERVER.UpdateGroupSettings(Data.color, Data.banner, tonumber(Data.radio)))
end)

--- Callback for buying VIP.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("buyVip", function(Data, Callback)
    print("[DEBUG] - buyVip, Data: " .. json.encode(Data))
    Callback(true)
end)

--- Callback for sending an announcement.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("sendAnnounce", function(Data, Callback)
    print("[DEBUG] - sendAnnounce, Data: " .. json.encode(Data))
    vSERVER.UpdateAnnounce(Data)
    Callback(true)
end)

--- Callback for inserting a rating.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("clickRating", function(Data, Callback)
    print("[DEBUG] - clickRating, Data: " .. json.encode(Data))
    vSERVER.InsertRating(Data)
    Callback(true)
end)

--- Callback for rescuing farm data.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("rescueFarm", function(Data, Callback)
    print("[DEBUG] - rescueFarm")
    vSERVER.RewardFarm()
    Callback(true)
end)

--- Callback for updating an announcement.
--- @param Data table - The data sent from the client.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("updateAnnounce", function(Data, Callback)
    print("[DEBUG] - updateAnnounce, Data: " .. json.encode(Data))
    Callback(true)
end)

--- Callback for applying a ban.
--- @param Data table - The data sent from the client, containing passport and reason information.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("applyBan", function(Data, Callback)
    print("[DEBUG] - applyBan, Data: " .. json.encode(Data))
    if Data.passport and Data.reason then
        local Status = vSERVER.InsertBanned(Data)
        Callback(Status)
    end
end)

--- Callback for removing a ban.
--- @param Data table - The data sent from the client, containing the passport ID.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("removeBan", function(Data, Callback)
    vSERVER.RemoveBanned(Data)
    print("[DEBUG] - removeBan, Data: " .. json.encode(Data))
    Callback(true)
end)

--- Callback for setting clothes for the organization.
RegisterNUICallback('setCloth', function()
    print("[DEBUG] - SET CLOTH")
    ExecuteCommand("roupafac")
    toggleNuiFrame(false)
end)

RegisterNUICallback('getServerHost', function(Data, Callback)
    local api_url = GetConvar("api_url", "")
    print("[DEBUG] - GET SERVER HOST, api_url: " .. api_url)
    Callback(api_url)
end)

--- Callback for entering the radio channel.
RegisterNUICallback('enterRadio', function(Data, Callback)
    print("[DEBUG] - ENTER RADIO")
    TriggerServerEvent("painel:EnterRadio")
    toggleNuiFrame(false)
    Callback(true)
end)

--- Callback for marking the organization's location.
RegisterNUICallback('orgLocation', function(Data, Callback)
    print("[DEBUG] - ORG LOCATION")
    toggleNuiFrame(false)
    Callback(true)
end)

--- Toggle the NUI frame visibility.
--- @param shouldShow boolean - Whether to show or hide the NUI frame.
function toggleNuiFrame(shouldShow)
    SetNuiFocus(shouldShow, shouldShow)
    SendReactMessage('setVisible', shouldShow)
    if not shouldShow then
        TriggerEvent("hud:Active", true)
    end
end

--- Send a message to the NUI frame.
--- @param action string - The action to perform.
--- @param data table - The data to send with the action.
function SendReactMessage(action, data)
    SendNUIMessage({
        action = action,
        data = data
    })
end

RegisterNUICallback('hideFrame', function(_, cb)
    toggleNuiFrame(false)
    cb({})
end)

RegisterNetEvent("painel:Notify")
AddEventHandler("painel:Notify", function(Table)
    print("painel:Notify >> ", json.encode(Table, {indent = true}))
    SendNUIMessage({
        action = 'Notify',
        data = Table
    })
end)