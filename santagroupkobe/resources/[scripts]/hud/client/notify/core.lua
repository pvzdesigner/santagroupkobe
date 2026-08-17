-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTIFY
-----------------------------------------------------------------------------------------------------------------------------------------
Player = GetPlayerServerId(PlayerId())
Language = GetConvar("language", "pt-br")
cityName = GetConvar("cityName", "")
Notify =  true
local PoliceCount = 0
local ValidNotify = {
    ["vermelho"] = true,
    ["verde"] = true,
    ["amarelo"] = true,
    ["azul"] = true,
    ["sangramento"] = true,
    ["compras"] = true,
    ["fome"] = true,
    ["sede"] = true,
    ["police"] = true,
    ["paramedic"] = true,
    ["admin"] = true,
    ["dica"] = true,
    ["amor"] = true,
    ["airdrop"] = true,
    ["dominacao"] = true,
    ["drogas"] = true,
    ["wheel"] = true,
    ["mechanic"] = true,
    ["adminNew"] = true,
    ["paramedicNew"] = true,
    ["bombeirosNew"] = true,
    ["bombeirosNew2"] = true,
    ["mechanicNew"] = true,
    ["eventsNew"] = true,
    ["ilegalNew"] = true,
    ["anonymousNew"] = true,
    ["policeNew"] = true,
    ["hireNew"] = true,
}

RegisterNetEvent("BigNotify")
AddEventHandler("BigNotify",function(Css,Message,Timer,Title)
    SendNUIMessage({ action = "ToggleNotify", data = { toggle = true} })
    Wait(100)
    if LocalPlayer["state"]["FirstLogin"] or LocalPlayer["state"]["inKart"] or LocalPlayer["state"]["PVP"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    if not Notify then
        return
    end

    if ValidNotify[Css] then
        SendNUIMessage({ action = "SpecialNotify", data = { Css = Css, Message = Message, Timer = Timer or 5000, Title = Title }})
    else
        SendNUIMessage({ action = "SpecialNotify", data = { Css = "vermelho", Message = Message, Title = Title, Timer = Timer or 5000 }})
    end
end)

RegisterNetEvent("BigNotify2")
AddEventHandler("BigNotify2",function(Css,Message,Timer,Title)
    SendNUIMessage({ action = "ToggleNotify", data = { toggle = true} })
    Wait(100)
    if LocalPlayer["state"]["FirstLogin"] or LocalPlayer["state"]["inKart"] or LocalPlayer["state"]["PVP"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    if not Notify then
        return
    end
    -- local Messages = Message:gsub("[<>]","")
    if ValidNotify[Css] then
        SendNUIMessage({ action = "SpecialNotify2", data = { Css = Css, Message = Message, Timer = Timer or 5000, Title = Title }})
    else
        SendNUIMessage({ action = "SpecialNotify2", data = { Css = "vermelho", Message = Message, Title = Title, Timer = Timer or 5000 }})
    end
end)

RegisterNetEvent("Notify:Text")
AddEventHandler("Notify:Text",function(Message)
    if LocalPlayer["state"]["inKart"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    local Messages = Message:gsub("[<>]","")
    SendNUIMessage({ action = "Text", data = { Message = "" }})
    Wait(50)
    SendNUIMessage({ action = "Text", data = { Message = Messages}})
end)

RegisterNetEvent("Notify:Remkey")
AddEventHandler("Notify:Remkey",function(Status)
    Notify = not Status
    SendNUIMessage({ action = "remKey", data = { Status = Status }})
end)

RegisterNetEvent("Notify:Remkey")
AddEventHandler("Notify:Remkey",function(Status)
    Notify = not Status
    SendNUIMessage({ action = "remKey", data = { Status = Status }})
end)

local LoginNotifyText = "O rei do leilão acabou de entrar na cidade!"
RegisterNetEvent("LoginNotify")
AddEventHandler("LoginNotify",function(Name)
    if LocalPlayer["state"]["inKart"] then
        return
    end

    if LocalPlayer["state"]["Route"] == 20 then
        return
    end
    local Message = string.format(LoginNotifyText,Name)
    local Messages = Message:gsub("[<>]","")
    SendNUIMessage({ action = "Announce", data = { Css = "crown", Message = LoginNotifyText, Title = Name:upper().." ENTROU", Timer = 15000 }})
    if cityName == "CidadeNobre" then
        TriggerEvent("sounds:Private","henrybalinha",0.6)
    end
end)

RegisterCommand("testnotifylogin",function(Source,Args,RawCommand)
    TriggerEvent("LoginNotify","Norris oFenomeno")
end)

local infoHelp = false
function openCloseShortCuts()
    TriggerEvent("help:open")
    infoHelp = not infoHelp
    SendNUIMessage({ action = "Tutorial", data = { Status = infoHelp }})
end

RegisterCommand("help2",openCloseShortCuts)
RegisterKeyMapping("help2","Open/Close HELP","keyboard","EQUALS") 

RegisterNetEvent("notify:Tutorial")
AddEventHandler("notify:Tutorial",function()
    if LocalPlayer["state"]["hud2"] then
        return
    end
    openCloseShortCuts()
end)

RegisterNetEvent("notify:TutorialStatus")
AddEventHandler("notify:TutorialStatus",function(Boolean)
    infoHelp = Boolean
    SendNUIMessage({ action = "Tutorial", data = { Status = infoHelp }})
end)

local HelpNotify = {
    "Você sabia que não pode ser assaltado enquanto estiver no modo safe?",
    "Trabalho de Pescador, Minerador e Agricultor estão bufados! [Procure no Mapa]",
    "Você pode fazer TestDrive gratuitamente de carros vips diretamente na concessionária da cidade!",
    "Em breve punições serão aplicadas em jogadores com muitos deslikes.",
    "Você pode denúnciar um jogador que deslogou em meio a uma ação através da box deixada no local da morte! [Advertência Automática]",
    "Trabalho de Mineração de Criptomoeda te permite ganhar dinheiro mesmo enquanto está AFK! [Próximo ao Cassino]",
    "Você ganha 💎 diamantes por tempo online, use o comando /diamantes para acessar a loja de diamantes!",
    "Você pode avaliar outro jogador (👍/👎) segurando ALT e mirando sobre ele!",
    "Você sabia que carros vip além de te dar mais respeito com os amigos correm mais que os demais carros da cidade?",
    "Você sabia que Anti-RP não são bem vindos aqui? E que você pode denúnciar um mau jogador? [Aperte F5]",
    "Você sabia que existe um FAQ de Dúvidas Frequentes na cidade? [Aperte F5]",
    "Você sabia que pode abrir a loja vip da cidade a qualquer momento através do comando /lojavip?",
    "Você sabia que pode avaliar um Staff como positivo ou negativo na prefeitura do Pier?",
    "Recrutamentos para a polícia são feitos diariamente! [Procure no Mapa]",
    "Jogadores ganham benefícios por recrutar iniciantes para Polícia, Hospital e Facções!",
    "O Pier é o Ponto Central da Cidade e onde os moradores se socializam! [Procure no Mapa]",
    "Você ganha benefícios gratuitamente por estar online através do BattlePass! [Aperte F4]",
    "Os produtos mais vendidos na loja vip atualmente são o Vip Ouro e BattlePass! [digite /lojavip]",
    "Seu personagem não morre mais de fome e sede enquanto você estiver AFK!",
    "Em breve jogadores que receberem muitas avaliações como toxicas terão sérios problemas?",   
    "Você sabia que o BattlePass é renovado todo dia 01 de cada mês?",
    "Você sabia que Médico é uma profissão legal que paga muito bem?",
    "Você sabia que pode salvar sua o preset da sua roupa atual e voltar facilmente pra ela depois? [F9/Roupas/Guardar]"
}
lang = GetConvar("language", "pt-br") or "pt-br"
if lang == "en-us" then
    HelpNotify = {
        "Did you know that you can't be robbed while in safe mode?",
        "The jobs of Fisherman, Miner, and Farmer are boosted! [Look on the Map]",
        "You can do a free TestDrive of VIP cars directly at the city dealership!",
        "Soon, penalties will be applied to players with too many dislikes.",
        "You can report a player who logged out during an action through the box left at the death site! [Automatic Warning]",
        "The Cryptocurrency Mining job allows you to make money even while AFK! [Near the Casino]",
        "You earn 💎 diamonds for being online; use the /diamonds command to access the diamond shop!",
        "You can rate another player (👍/👎) by holding ALT and aiming at them!",
        "Did you know that VIP cars not only earn you more respect with friends but also go faster than other cars in the city?",
        "Did you know that Anti-RP players are not welcome here? And that you can report a bad player? [Press F5]",
        "Did you know there's an FAQ for Frequently Asked Questions in the city? [Press F5]",
        "Did you know you can open the city's VIP store at any time using the /vipstore command?",
        "Did you know you can rate a Staff member positively or negatively at the Pier City Hall?",
        "Police recruitments are held daily! [Look on the Map]",
        "Players gain benefits for recruiting beginners to the Police, Hospital, and Factions!",
        "The Pier is the Central Point of the City and where residents socialize! [Look on the Map]",
        "You get free benefits for being online through the BattlePass! [Press F4]",
        "The most sold products in the VIP store currently are Gold VIP and BattlePass! [type /vipstore]",
        "Your character no longer dies of hunger and thirst while AFK!",
        "Soon, players who receive many toxic evaluations will face serious problems!",
        "Did you know that the BattlePass is renewed on the 1st of each month?",
        "Did you know that being a Doctor is a rewarding profession that pays well?",
        "Did you know you can save the preset of your current outfit and easily return to it later? [F9/Clothes/Save]"
    }
end

local HelpDone = {}
cityName = GetConvar("cityName", "")

AddStateBagChangeHandler('Active',('player:%s'):format(Player) , function(_, _, Value)
    local Ped = PlayerPedId()
    if Value and GlobalState["Dicas"] then
        CreateThread(function()
            Wait(2500)
            while true do
                -- if not LocalPlayer["state"]["Newbie"] then
                --     return
                -- end
                ::Another::
                if #HelpDone == #HelpNotify then
                    HelpDone = {}
                end
                local Random = math.random(1,#HelpNotify)
                if HelpDone[Random] then
                    goto Another
                end
                HelpDone[Random] = true
                --TriggerEvent("Notify","dica",HelpNotify[Random],10000,"Dicas")
                TriggerEvent("Notify2","#dica",{msg = HelpNotify[Random]})
                TriggerEvent("sounds:Private",-1,"anuncioadm",0.04)
                Wait(1000*60*10)
            end
        end)
    end 
end)

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)

local Events = {}

RegisterNetEvent("notify:Events")
AddEventHandler("notify:Events",function(Title,Message,Name,Timer,Coords,CustomTitle,CustomCaller)
    if LocalPlayer["state"]["inKart"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    if not Notify then
        return
    end
    local Count = #Events + 1
    Events[Count] = { Coords = Coords }
    local Messages = Message:gsub("[<>]","")
    SendNUIMessage({ action = "Events", data = { Title = Title, Message = Messages, Name = Name, Id = Count, CustomCaller = CustomCaller, CustomTitle = CustomTitle, Timer = Timer or 5000 }})
end)

RegisterNUICallback("MarkEvents",function(Data,Callback)
    local Coords = Events[tonumber(Data.Id)].Coords
    local Ped = PlayerPedId()
    DoScreenFadeOut(2500)
    while not IsScreenFadedOut() do 
        Wait(5) 
    end
    if LocalPlayer["state"]["hud2"] then
        return
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
    table.remove(Events,tonumber(Data.Id))
    -- SetNewWaypoint(Coords.x,Coords.y)
end)

RegisterCommand("ClickRecruit",function()
    if PoliceCount <= 0 then
        if Events[1] then
            SendNUIMessage({ action = "EventsId" })
        end
    end
    TriggerEvent("notify:Reset")
end)

RegisterKeyMapping("ClickRecruit", _t("ClickRecruit"), "keyboard", "F3")

RegisterNUICallback("hideFrame",function(Data,Callback)
	SetNuiFocus(false,false)
	Callback("Ok")
end)

RegisterNUICallback("toggleKey",function(Data,Callback)
    SendNUIMessage({ action = "remKey", data = { Status = Data }})
    
	Callback("Ok")
end)

------------------------------------------------------------------------------------------------------------------------
-- POLICE
------------------------------------------------------------------------------------------------------------------------
local showBlips = {}
local timeBlips = {}
local numberBlips = 0

RegisterCommand("showNotifies",function()
    local Ped = PlayerPedId()
    local Health = GetEntityHealth(Ped)
    if Health and Health <= 100 then
        return
    end
    if not LocalPlayer["state"]["Policia"] then
        return
    end
	if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not IsPauseMenuActive() then
        SetNuiFocus(true,true)
		SendNUIMessage({ action = "showWarns" })
	end
end)
RegisterKeyMapping("showNotifies", _t("showNotifies"), "keyboard", "F2")

RegisterNetEvent("NotifyPush")
AddEventHandler("NotifyPush",function(data)
	numberBlips = numberBlips + 1
    if not data["code"] then
        data["code"] = "QRU"
        data["title"] = "Disparos"
        data["blipColor"] = 6
        data["blipCode"] = 10
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    local id = tostring(numberBlips)
	timeBlips[id] = 60
	showBlips[id] = AddBlipForCoord(data["x"],data["y"],data["z"])
    local Sprite = data["blipCode"]
    local Color = data["blipColor"]
	SetBlipSprite(showBlips[id],Sprite)
	SetBlipDisplay(showBlips[id],4)
	SetBlipAsShortRange(showBlips[id],true)
	SetBlipColour(showBlips[id],Color)
	SetBlipScale(showBlips[id],0.5)
	BeginTextCommandSetBlipName("STRING")
	AddTextComponentString(data["title"])
	EndTextCommandSetBlipName(showBlips[id])
end)

RegisterNetEvent("NotifyPushShots")
AddEventHandler("NotifyPushShots",function(Coords)
    if not Coords then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
	numberBlips = numberBlips + 1
    local data = {}
    data["code"] = "QRU"
    data["title"] = "Disparos"
    data["blipColor"] = 6
    local id = tostring(numberBlips)
	timeBlips[id] = 60
	showBlips[id] = AddBlipForRadius(Coords["x"],Coords["y"],Coords["z"],75.0)
    SetBlipColour(showBlips[id], 1)
    SetBlipAlpha(showBlips[id], 125)
end)


function BlinkBlip(Blip)
    SetBlipColour(Blip, 85)
    Wait(500)
    SetBlipColour(Blip, 1)
    SetBlipAlpha(Blip, 125)
end

CreateThread(function()
    while true do
        for Number,Blip in pairs(showBlips) do
            BlinkBlip(Blip)
        end
        Wait(1000)
    end
end)

RegisterNetEvent("hideNotifys")
AddEventHandler("hideNotifys",function(Coords)
    SendNUIMessage({ action = "hideNotifys"})
end)

local HasNotifyPolice = true
RegisterNetEvent("Notify:StatusPolice")
AddEventHandler("Notify:StatusPolice", function(Boolean)
    HasNotifyPolice = Boolean
    if not HasNotifyPolice then
        SendNUIMessage({ action = "clearRobberyWarn"})
    end
end)

RegisterNetEvent("Notify:Police")
AddEventHandler("Notify:Police", function(Css,title,description,Coords,plate)
    if not Coords then
        return
    end
    if not HasNotifyPolice then
        return
    end
    if LocalPlayer["state"]["inKart"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    local MinRoad,MinCross = GetStreetNameAtCoord(Coords["x"],Coords["y"],Coords["z"])
    local FullRoad = GetStreetNameFromHashKey(MinRoad)
    -- print("Notify:Police",Css,title,description,Coords,plate,FullRoad)
    local coords = { x = Coords["x"], y = Coords["y"], z = Coords["z"] }
    SendNUIMessage({ 
        action = "addRoberryWarn", 
        data = {
            Css = Css,
            title = title,
            robbery = description,
            street = FullRoad,
            coords = coords,
            plate = plate
        }
    })
end)

---@param position vector3
RegisterNetEvent( 'police.robbery_started', function( position )

    TriggerEvent( "NotifyPush", { code = "QRU", title = "Caixinha", x = position.x, y = position.y, z = position.z, blipColor = 22 } )
    TriggerEvent( "Notify:Police","roberryPersonBlue",_t("robbery_in_progress"),_t("robbing_atm"), position )
end)

---@param vehiclePlateText string
---@param position         vector3
RegisterNetEvent( 'police.vehicle_break_in_started', function( vehiclePlateText, position )

    TriggerEvent( "Notify:Police", "roberryVehicle", "Roubo de veículo", "Atenção roubo de veículo em andamento.", position, vehiclePlateText )
end)

---@param position vector3
RegisterNetEvent( 'police.property_break_in_started', function( position )

    TriggerEvent("NotifyPush", { code = "QRU", title = "150", x = position.x, y = position.y, z = position.z, blipColor = 44 })
end)


RegisterCommand("testetadala",function()
    TriggerEvent("Notify:Police","roberryPerson","Roubo em andamento","Atenção roubo em andamento em Rebel.",vector3(849.5,2383.73,54.16))
end)
-- RegisterCommand("enterTencodes",function()
--     if LocalPlayer["state"]["Policia"] and LocalPlayer["state"]["Route"] < 900000 and not IsPauseMenuActive() then
--         SetNuiFocus(true,true)
--         SetCursorLocation(0.5,0.1)
--         SendNUIMessage({ showWarns = true })
--     end
-- end)
-- RegisterKeyMapping("enterTencodes","Manusear o código policial.","keyboard","F2")

RegisterNetEvent("NotifyPolice")
AddEventHandler("NotifyPolice", function(message)
    if LocalPlayer["state"]["inKart"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    local Hours,Minutes = exports["worldstate"]:getTime()
    SendNUIMessage({ 
        action = "addPoliceWarn", 
        data = {
            message = message,
            hours = Hours..":"..Minutes
        }
    })
end)

RegisterNetEvent("notify:Toggle")
AddEventHandler("notify:Toggle",function(toggle)
    Notify = toggle
end)

RegisterCommand("testhire",function()
    TriggerEvent("HireNotify")
end)

local RemoveHire = false
RegisterNetEvent("HireNotify")
AddEventHandler("HireNotify",function(Css,Message,Timer,Title)
    local Css = "hireNew"
    local Message = _t("hireNotify")
    local Title = _t("hireNotifyTitle")
    if RemoveHire then
        return
    end
    SendNUIMessage({ action = "Hire",  data = { Css = Css, Message = Message, Title = Title }})
end)

RegisterNetEvent("RemoveHire")
AddEventHandler("RemoveHire",function()
    SendNUIMessage({ action = "HireRemove" })
end)

RegisterCommand("hiderec",function()
    RemoveHire = true
    SendNUIMessage({ action = "HireRemove" })
end)

-- CreateThread(function()
--     if LocalPlayer["state"]["Active"] then
--         Wait(3000)
--         SendNUIMessage({ action = "ToggleNotify", toggle = true })
--     end
-- end)

CreateThread(function()
    -- local isPauseMenuCached = IsPauseMenuActive()
	while true do
		for k,v in pairs(timeBlips) do
			if timeBlips[k] > 0 then
				timeBlips[k] = timeBlips[k] - 1
				if timeBlips[k] <= 0 then
					RemoveBlip(showBlips[k])
					showBlips[k] = nil
					timeBlips[k] = nil
				end
			end
		end
        -- local isPauseMenu = IsPauseMenuActive()

        -- if isPauseMenu ~= isPauseMenuCached then
        --     SendNUIMessage({ Action = "ToggleNotify", toggle = not isPauseMenu })
            
        --     isPauseMenuCached = isPauseMenu
        -- end
		Wait(1000)
	end
end)

RegisterNUICallback("MarkRoberryWarn",function(Data,Callback)
    if LocalPlayer["state"]["hud2"] then
        return
    end
    SetNewWaypoint(Data["coords"]["x"],Data["coords"]["y"])
    --TriggerEvent("Notify","azul","Você marcou o local do crime no seu GPS.",10000,"Crime")
    TriggerEvent("Notify2","#crimeGPS")
end)

local info = false
local HidePromo = false
NewbiePromo = false
RegisterNetEvent("Promo")
AddEventHandler("Promo",function(Table)
    info = Table
    if info  then
        SendNUIMessage({ action = "Promo",  data = Table })
    end
end)

RegisterNetEvent("Promo_newbie")
AddEventHandler("Promo_newbie",function(data)
    if not GlobalState["HasPromo"] then
        NewbiePromo = data
        if info and NewbiePromo and NewbiePromo["coupon"] then
            SendNUIMessage({ action = "Promo",  data = info })
            --SendNUIMessage({ action = "DescriptableAlert", data = NewbiePromo })
        end
    end
end)

-- CreateThread(function()
--     Wait(500)
--     if GlobalState["PromoInfo"] then
--         SendNUIMessage({ action = "Promo",  data = GlobalState["PromoInfo"] })
--     end
-- end)

local HelpOpen = true
AddEventHandler("help:open",function()
    if not HidePromo then 
        HelpOpen = not HelpOpen
        if HelpOpen then
            Wait(750)
        end
    end
end)

RegisterCommand("hidepromo",function()
    HidePromo = not HidePromo
    if HidePromo then
        SendNUIMessage({ action = "RemPromo", data = { info = false }})
    else
        if info then
            SendNUIMessage({ action = "Promo",  data = info })
        end
    end
end)

CreateThread(function()
    while true do
        local Idle = 1000
        if LocalPlayer["state"]["hud2"] then
            HidePromo = true
        end
        Wait(Idle)
    end
end)


local isNuiOpen = false
local confirmationCallback = nil
local timer = nil
local responseReceived = false

function openRequest(info)
    --print("Opening request with info:", json.encode(info))
    if not isNuiOpen then
        isNuiOpen = true
        SendNUIMessage({ action = "CreateSession",  data = { info = true }})
        timer = GetGameTimer() + 60000

        Citizen.CreateThread(function()
            while isNuiOpen do
                Citizen.Wait(0)
                if GetGameTimer() > timer and not responseReceived then
                    closeNui(false)
                end
            end
        end)
    end
end

function closeNui(result)
    --print("Closing NUI with result:", result)
    if isNuiOpen then
        isNuiOpen = false
        SetNuiFocus(false, false)
        SendNUIMessage({
            action = "setVisible",
            data = false
        })
        if confirmationCallback then
            confirmationCallback(result)
            confirmationCallback = nil
        end
    end
end

function Creative.SendRequest(Info)
    Wait(500)
    local result = nil
    local waiting = true
    --print("Creative.SendRequest called with Info:", json.encode(Info, {indent = true}))
    confirmationCallback = function(response)
        result = response
        responseReceived = true
        waiting = false
        --print("Confirmation callback result:", result)
    end

    openRequest(Info)

    while waiting do
        Citizen.Wait(0)
    end

    return result
end

RegisterNUICallback("returnSessionId", function(data, cb)
    closeNui(data)
end)

function FormatNumber(number)
    if number >= 1000000 then
        return string.format("%.0f", number/1000000).."kk"
    elseif number >= 1000 then
        return string.format("%.0f", number/1000).."k"
    end
    return tostring(number)
end

function FormatSalary(Data,Total)
    local Text = ""
    for i=1, #Data do
        local Salary = Data[i]
        -- Format the salary amount using FormatNumber
        Text = Text..Salary[1]..": <b>$ "..FormatNumber(Salary[2]).."</b><br>"
    end
    -- Format the total amount using FormatNumber
    Text = Text.."<br><b>Total: $ "..FormatNumber(Total).."</b>"
    return Text
end

RegisterNetEvent("NotifySalary")
AddEventHandler("NotifySalary",function(...)
    if LocalPlayer["state"]["inKart"] then
        return
    end
    if LocalPlayer["state"]["hud2"] then
        return
    end
    local Data,Total = ...
    local Message = FormatSalary(Data,Total)
    local Title = _t("salary")
    local Css = "Payment"
    local Timer = 60000
    SendNUIMessage({ action = "Notify", data = { Css = Css, Message = Message, Timer = Timer, Title = Title }})
    TriggerEvent("rewardsAnimation","money",Total)
end)


RegisterNetEvent("notify:Ticket")
AddEventHandler("notify:Ticket",function(Title,Name,Count)
    SendNUIMessage({ action = "NotifyTicket", data = { title = Title, name = Name, count = Count }})
end)

RegisterCommand("testticket",function()
    TriggerEvent("notify:Ticket","Test Ticket","Test",1)
end)


RegisterNetEvent("keyText:open")
AddEventHandler("keyText:open",function(key, text)
    SendNUIMessage({ 
        action = "keyText",
        data = { 
            key = key,
            text = text
        }
    })
end)

RegisterNetEvent("keyText:remove")
AddEventHandler("keyText:remove",function()
    SendNUIMessage({ 
        action = "removeKeyText",
        data = true
    })    
end)


RegisterNetEvent("notify:RemoveTicket")
AddEventHandler("notify:RemoveTicket",function()
    SendNUIMessage({
        action = "RemoveTicket",
        data = true
    })
end)