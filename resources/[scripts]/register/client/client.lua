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
sRP = {}
Tunnel.bindInterface("register",sRP)
vSERVER = Tunnel.getInterface("register")
cityName = GetConvar("cityName", "")
Player = GetPlayerServerId(PlayerId())
local InRegister = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACKS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Step1",function(data,cb)
    local acceptTerms = data["tos"]
    if acceptTerms then
        vSERVER.updateTOS(acceptTerms)
        cb(true)
    else
        cb(false)
    end
end)

RegisterNUICallback("Step2",function(data,cb)
    local validate = false
    print(json.encode(data))
    if not data["gender"] then
        data["gender"] = "masculino"
    end
    
    if not data["foundUs"] then
        data["foundUs"] = "Season 3"
    end
    if data["email"] and data["age"] and data["name"] and data["foundUs"] and data["gender"] and data["whatsapp"] then
        if #data["email"] > 255 or  #data["name"] > 255 or #data["foundUs"] > 255 or #data["gender"] > 255 or #data["whatsapp"] > 255 then
            --TriggerEvent("Notify","vermelho","A descrição não pode ultrapassar 255 caracteres.",5000,"REGISTRO")
            TriggerEvent("Notify2","#maxCaracteres")
            cb(false)
            return
        end

        local name = data["name"] or ""
        local surname = data["surname"] or ""
        local Name = name.." "..surname
        validate = vSERVER.setAccountInfo(Name,data["email"],data["gender"],data["foundUs"],data["age"],data["whatsapp"],data["notifications"])
        print("[DEBUG] - STEP2  1", tostring(validate))
        if validate then
            local sex = "f"
            if data["gender"] == "masculino" then
                sex = "m"
            end
            if not LocalPlayer["state"]["Token"] then
                SetNuiFocus(false,false)
                TransitionFromBlurred(1000)
                local Ped = PlayerPedId()
                SendNUIMessage({ 
                    action = "setVisible",
                    data = false 
                })
            end
            local Data = {
                ["nome"] = data["name"],
                ["nome2"] = data["surname"],
                ["sexo"] = sex,
                ["idade"] = Date,
            }
            TriggerEvent("spawn:NameInfo",Data)
            TriggerServerEvent("register:AddAction",2)
            print("[DEBUG] - STEP2 2 ", tostring(validate))
            cb(true)
        else
            cb(false)
        end
    else
        validate = false
    end
    cb(validate)
end)

RegisterNUICallback("Step3",function(data,cb)
    local Ped = PlayerPedId()
    print("[DEBUG] - STEP3  1", tostring(data))
    local validate = vSERVER.ValidateToken()
    print("[DEBUG] - STEP3  3", tostring(validate))
    if not validate then
        print("[DEBUG] - STEP3 4", tostring(false))
        cb(false)
    else
        print("[DEBUG] - STEP3 5", tostring(true))
        cb(true)
        TriggerServerEvent("register:AddAction",3)
    end
end)

RegisterNUICallback("carSelected",function(data,cb)
    if data and data ~= "" then
        vSERVER.giveVehicle(data)
    else
        SendNUIMessage({
            action = 'setVisible',
            data = "step3"
        })
    end

    cb("Ok")
end)

RegisterNUICallback("getCars",function(Data,CallBack)
    CallBack({ 
        recommendation = infoLogin[cityName]["Recommendation"], 
        cars = infoLogin[cityName]["Cars"] 
    })
end)

RegisterNUICallback("getID",function(Data,CallBack)
    CallBack(LocalPlayer["state"]["Token"])
end)

RegisterNUICallback("getDiscord",function(Data,CallBack)
    CallBack(infoLogin[cityName]["Discord"])
end)

RegisterNUICallback("getInfo",function(Data,CallBack)
    CallBack({recommendation = infoLogin[cityName]["Recommendation"]})
end)

RegisterNUICallback("getCurrentCountryCode",function(Data,CallBack)
    local countryCode = vSERVER.GetPlayerCountryCode()
    print("getCurrentCountryCode",countryCode)
    CallBack(countryCode)
end)


local phoneEnabled = {
    ["Kingdom"] = true,
    ["Santa"] = true,
    ["CidadeNobre"] = true,
    ["Universo"] = true,
    ["Alexandria"] = true,
    ["Maresia"] = true,
    ["Caravelas"] = true,
}
RegisterNUICallback("isPhoneEnabled",function(Data,CallBack)
    local enabled = phoneEnabled[cityName]
    if enabled == nil then
        enabled = true
    end
    CallBack(enabled)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- STATEBAGS
-----------------------------------------------------------------------------------------------------------------------------------------
local RegisterTimer = GetGameTimer()
-- AddStateBagChangeHandler('Register',('player:%s'):format(Player) , function(_, _, Value)
--     if Value then
--         Wait(100)
--         RegisterTimer = GetGameTimer() + 30000
--         CreateThread(function()
--             while LocalPlayer["state"]["Register"] do
--                 if GetGameTimer() >= RegisterTimer then
--                     RegisterTimer = GetGameTimer() + 30000
--                     if not LocalPlayer["state"]["Character"] and not InRegister then
--                         TriggerEvent("register:Open")
--                     end
--                     return
--                 end
--                 Wait(1000)
--             end
--         end)
--     end
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
function SetRoute(route)
    if route == "/" then
        SendNUIMessage({
            action = 'setVisible',
            data = "/"
        })
    elseif route == "step2" then
        SendNUIMessage({
            action = 'setVisible',
            data = "step2"
        })
    elseif route == "step3" then
        SendNUIMessage({
            action = 'setVisible',
            data = "step3"
        })
    end    
end

function isdatevalid(date)
    local year,month,day = string.match(date,"(%d+)-(%d+)-(%d+)")
    if day and month and year then
        if tonumber(day) > 0 and tonumber(day) <= 31 and tonumber(month) > 0 and tonumber(month) <= 12 and tonumber(year) > 1900 and tonumber(year) <= 2022 then
            return true
        end
    end
    return false
end

function formatDate(date)
    local day,month,year = string.match(date,"(%d+)/(%d+)/(%d+)")
    return string.format("%s-%s-%s",year,month,day)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- EVENTS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("register:Close")
AddEventHandler("register:Close",function()
    SetNuiFocus(false,false)
    TransitionFromBlurred(1000)
    local Ped = PlayerPedId()
    SendNUIMessage({ 
        action = "setVisible",
        data = false 
    })
    TriggerEvent("hud:Active",true)
    TransitionFromBlurred(1000)
    FreezeEntityPosition(Ped,false)
    SetEntityVisible(Ped,true,false)
    FreezeEntityPosition(PlayerPedId(),false)
end)

RegisterNetEvent('register:Open')
AddEventHandler('register:Open', function()
    local Ped = PlayerPedId()
    FreezeEntityPosition(Ped,true)
    TriggerEvent("talknpc:closeTalk")
    TriggerEvent("hud:Active",false)
    TransitionToBlurred(1000)
    Wait(500)
    SetNuiFocus(true, true)
    FreezeEntityPosition(PlayerPedId(),true)
    SendNUIMessage({
        action = "setVisible",
        data = true
    })
    InRegister = true
end)

RegisterNetEvent('register:OpenToken')
AddEventHandler('register:OpenToken', function(validate)
    if not GlobalState["ObrigatoryToken"] then
        return
    end
    InToken = validate
    TriggerEvent("hud:Active",false)
    TransitionToBlurred(1000)
    SendNUIMessage({
        action = 'setVisible',
        data = "step3"
    })
    SetNuiFocus(true, true)
    FreezeEntityPosition(PlayerPedId(),true)
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)

function sRP.CheckRegister()
    return true
end

-- CreateThread(function()
--     -- SendNUIMessage({
--     --     action = 'setVisible',
--     --     data = "/step2"
--     -- })
--     -- SetNuiFocus(true, true)
--     TriggerServerEvent("register:CheckRegister")
-- end)

RegisterNetEvent('register:OpenWhatsApp')
AddEventHandler('register:OpenWhatsApp', function(validate)
    SendNUIMessage({
        action = 'validatePhone',
        data = true
    })
    SetNuiFocus(true, true)
    FreezeEntityPosition(PlayerPedId(),true)
end)

RegisterNUICallback("getFormInfos",function(Data,Callback)
    local Info = vSERVER.getAccountInfo()
    Callback(Info)
end)

RegisterNUICallback("Whatsapp",function(Data,Callback)
    vSERVER._updateWhatsapp(Data["whatsapp"])
    SetNuiFocus(false,false)
    TransitionFromBlurred(1000)
    SendNUIMessage({ 
        action = "setVisible",
        data = false 
    })
    Callback(true)
end)
