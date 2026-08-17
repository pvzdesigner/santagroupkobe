------------------------------------------------
-- NOTIFY QUEUE
------------------------------------------------
notifyQueue = {}
activeNotifications = 0
MAX_NOTIFICATIONS = 5
------------------------------------------------
-- ANNOUNCE QUEUE
------------------------------------------------
announceQueue = {}
activeAnnouncements = 0
MAX_ANNOUNCEMENTS = 1
------------------------------------------------
-- SOCIALPARTY QUEUE
------------------------------------------------
socialpartyQueue = {}
activeSocialpartyInvites = 0
MAX_SOCIALPARTY_INVITES = 1
currentInviteTimeoutId = nil
processingInvite = false
inviteStartTime = 0
------------------------------------------------

function processNotifyQueue()
    if #notifyQueue == 0 or activeNotifications >= MAX_NOTIFICATIONS then
        return
    end

    table.sort(notifyQueue, function(a, b)
        return (NotifyGroups[a.Css] or NotifyGroups["Warning"]) > (NotifyGroups[b.Css] or NotifyGroups["Warning"])
    end)

    local notification = table.remove(notifyQueue, 1)
    activeNotifications = activeNotifications + 1

    SendNUIMessage({ 
        action = "Notify", 
        data = notification 
    })

    SetTimeout(notification.Timer, function()
        activeNotifications = activeNotifications - 1
        processNotifyQueue()
    end)
end

function queueNotification(data)
    if not NotifyGroups[data.Css] then
        data.Css = "Warning"
    end

    table.insert(notifyQueue, data)
    processNotifyQueue()
end

function processAnnounceQueue()
    if HasNonDefaultRequests() then
        while HasNonDefaultRequests() do
            Wait(0)
        end
    end

    if #announceQueue == 0 or activeAnnouncements >= MAX_ANNOUNCEMENTS then
        return
    end

    table.sort(announceQueue, function(a, b)
        return (AnnounceGroups[a.Css] or AnnounceGroups["admin"]) > (AnnounceGroups[b.Css] or AnnounceGroups["admin"])
    end)

    local announcement = table.remove(announceQueue, 1)
    activeAnnouncements = activeAnnouncements + 1

    SendNUIMessage({ 
        action = "Announce", 
        data = announcement 
    })

    if announcement.Sound then
        TriggerEvent("sounds:Private",announcement.Sound,announcement.Volume)
    end

    SetTimeout(announcement.Timer, function()
        activeAnnouncements = activeAnnouncements - 1
        processAnnounceQueue()
    end)
end

function queueAnnouncement(data)
    if not AnnounceGroups[data.Css] then
        data.Css = "admin"
    end

    table.insert(announceQueue, data)
    processAnnounceQueue()
end

RegisterNetEvent("Notify2")
AddEventHandler("Notify2",function(...)
    SendNUIMessage({ action = "ToggleNotify", data = { toggle = true} })
    Wait(100)
    if not Notify then
        return
    end
    
    if LocalPlayer["state"]["inKart"] or LocalPlayer["state"]["hud2"] then
        return
    end

    local Notify,Variables = ...
    local Config = _n(Notify,Variables, lang)
    if Config then
        queueNotification({
            Css = Config["Css"],
            Message = Config["Message"],
            Timer = Config["Timer"] or 5000,
            Title = Config["Title"]
        })
    end
end)

RegisterNetEvent("Notify")
AddEventHandler("Notify",function(Css,Message,Timer,Title)
    if LocalPlayer["state"]["hud2"] then
        return
    end

    if not Notify then
        return
    end

    if LocalPlayer["state"]["PVP"] or LocalPlayer["state"]["inKart"] then
        return
    end

    if string.find(Message, "suspeito") then
        local userId, reason = string.match(Message, "Usuário <b>(%d+)</b> foi marcado como suspeito%. %[<b>(.-)</b>%].*<br>")
        if userId and reason then
            local fullMessage = string.format(_t("suspicious_user_pattern"), userId, reason)
            if Message:find("Confira o Discord!") then
                fullMessage = fullMessage .. "<br>" .. _t("check_discord")
            end
            queueNotification({
                Css = "AntiCheat",
                Message = fullMessage,
                Title = _t("suspicious_user_title"),
                Timer = 15000
            })
            return
        end
    end

    if string.find(Message, "banido pelo anticheat") then
        local userId, reason = string.match(Message, "Usuário <b>(%d+)</b> banido pelo anticheat%. %[<b>(.-)</b>%]")
        if userId and reason then
            queueNotification({
                Css = "AntiCheat",
                Message = string.format(_t("banned_user_pattern"), userId, reason),
                Title = _t("banned_user_title"),
                Timer = 15000
            })
            return
        end
    end

    queueNotification({
        Css = NotifyGroups[Css] and Css or "Warning",
        Message = Message,
        Timer = Timer or 5000,
        Title = Title
    })
end)

RegisterCommand("testnotifyqueue", function()
    print("testnotifyqueue")
    local testMessages = {
        { css = "Administration", msg = "Teste Notificação de Admin" },
        { css = "Warning", msg = "Teste Notificação de Aviso" },
        { css = "Information", msg = "Teste Notificação de Informação" },
        { css = "Hospital", msg = "Teste Notificação de Hospital" },
        { css = "Mechanic", msg = "Teste Notificação de Mecânico" },
        { css = "Attention", msg = "Teste Notificação de Atenção" },
        { css = "Payment", msg = "Teste Notificação de Pagamento" },
        { css = "Hospital", msg = "Teste Notificação de Hospital" },
        { css = "Mechanic", msg = "Teste Notificação de Mecânico" },
        { css = "Attention", msg = "Teste Notificação de Atenção" },
        { css = "Payment", msg = "Teste Notificação de Pagamento" },
        { css = "Administration", msg = "Teste Notificação de Admin" },
    
    }

    for _, notify in ipairs(testMessages) do
        queueNotification({
            Css = notify.css,
            Message = notify.msg,
            Timer = math.random(5000, 15000),
            Title = "Test Notification"
        })
    end
end)

RegisterNetEvent("Announce")
AddEventHandler("Announce",function(Css,Message,Timer,Title,Sound,Volume)
    if LocalPlayer["state"]["inKart"] then
        return
    end

    if LocalPlayer["state"]["hud2"] then
        return
    end

    if LocalPlayer["state"]["Route"] == 20 then
        return
    end

    if not Notify then
        return
    end

    if AnnounceWithoutQueue[Css] then
        SendNUIMessage({ 
            action = "Announce", 
            data = {
                Css = Css,
                Message = Message,
                Timer = Timer or 5000,
                Title = Title,
                Sound = Sound,
                Volume = Volume
            } 
        })
        return
    end

    local Messages = Message:gsub("[<>]","")
    queueAnnouncement({
        Css = AnnounceGroups[Css] and Css or "admin",
        Message = Messages,
        Timer = Timer or 5000,
        Title = Title,
        Sound = Sound,
        Volume = Volume
    })
end)

function GetActiveAnnouncements()
    local active = {}
    
    for i = 1, activeAnnouncements do
        table.insert(active, {
            status = "active",
            timeLeft = "currently displaying"
        })
    end
    
    local totalTime = 0
    for i, announcement in ipairs(announceQueue) do
        totalTime = totalTime + (announcement.Timer or 5000)
        table.insert(active, {
            status = "queued",
            timeLeft = totalTime
        })
    end
    
    return active
end

function HasActiveAnnouncements()
    return activeAnnouncements > 0 or #announceQueue > 0
end


RegisterCommand("testacnotify",function()
    TriggerEvent("Notify","vermelho","Usuário <b>123456</b> banido pelo anticheat. [<b>MENU</b>]",60000)
end)

---@enum eSocialpartyKind
eSocialpartyKind =
{
    Socialparty = 0,
    SocialpartyWithCustomWorld = 1,

    SocialeventWithCustomWorld = 2,
}

---@class socialparty.InviteSettings
---@field title
---@field subtitlePrefix
---@field bgColor? string -- RGBA

---@type table<eSocialpartyKind, socialparty.InviteSettings>
SOCIALPARTY_KIND_INVITE_SETTINGS =
{
    [ eSocialpartyKind.Socialparty                ] = { title = _t("partyTitle"), subtitlePrefix = _t("partyPrefix")     , bgColor = 'rgba(203, 96, 196, 0.8)' },
    [ eSocialpartyKind.SocialpartyWithCustomWorld ] = { title = _t("partyTitle"), subtitlePrefix = _t("partyPrefix")     , bgColor = 'rgba(203, 96, 196, 0.8)' },

    [ eSocialpartyKind.SocialeventWithCustomWorld ] = { title = _t("eventTitle"), subtitlePrefix = _t("eventPrefix")     , bgColor = 'rgba(237, 201, 33, 0.8)' },
}

---@return boolean
local function CanAcceptSocialpartyInvite()

    if LocalPlayer[ 'state' ][ 'inKart' ] then
        return false
    end

    if LocalPlayer[ 'state' ][ 'hud2' ] then
        return false
    end

    return true
end

---@type table<eSocialpartyKind, fun( invite: socialparty.InviteReceivedPacket ): nil>
SOCIALPARTY_KIND_INVITE_ACCEPTED_HANDLER =
{
    [ eSocialpartyKind.Socialparty ] = function ( invite )

        local position = invite.position

        local Ped = PlayerPedId()

        local Health = GetEntityHealth( Ped )
        if Health and Health <= 101 then
            return
        end

        SetNewWaypoint( position.x, position.y )

        SetEntityCoords( Ped, position.x, position.y, position.z - 1,false,false,false,false)

        RequestCollisionAtCoord( position.x, position.y, position.z )

        -- TODO: Esses blips poderiam ser mais genericos?
        local blipId = AddBlipForCoord( invite.position.x, invite.position.y, invite.position.z )
        SetBlipSprite(blipId, 136)
        SetBlipColour(blipId, 2)
        SetBlipScale(blipId, 0.6)
        SetBlipAsShortRange(blipId, true)
        BeginTextCommandSetBlipName("STRING" )
        AddTextComponentString( 'Festinha' )
        EndTextCommandSetBlipName( blipId )

        -- TODO: Fazer isso mais genérico?
        SetTimeout( 30000, function()
            RemoveBlip( blipId )
        end)

        FreezeEntityPosition( Ped, true )

        while not HasCollisionLoadedAroundEntity( Ped ) do
            Wait( 0 )
        end

        DoScreenFadeIn(5000)

        while not IsScreenFadedIn() do
            Wait( 0 )
        end

        FreezeEntityPosition(Ped,false)
    end,

    [ eSocialpartyKind.SocialpartyWithCustomWorld ] = function ( invite )

        -- Fazer as mesmas coisas que o evento One faz...
        SOCIALPARTY_KIND_INVITE_ACCEPTED_HANDLER[ eSocialpartyKind.Socialparty ]( invite )

        ExecuteCommand( 'mundo Evento' )
    end,

    [ eSocialpartyKind.SocialeventWithCustomWorld ] = function( invite )

        -- Fazer as mesmas coisas que o evento SocialpartyWithCustomWorld faz.
        SOCIALPARTY_KIND_INVITE_ACCEPTED_HANDLER[ eSocialpartyKind.SocialpartyWithCustomWorld ]( invite )
    end,
}

function processSocialpartyQueue()
    print('processSocialpartyQueue')
    if #socialpartyQueue == 0 or activeSocialpartyInvites >= MAX_SOCIALPARTY_INVITES then
        print('return')
        return
    end
    print('while HasActiveAnnouncements()')
    while HasActiveAnnouncements() do
        Wait(0)
    end
    print('remove socialpartyQueue from processSocialpartyQueue')
    local invite = table.remove(socialpartyQueue, 1)
    activeSocialpartyInvites = activeSocialpartyInvites + 1
    processingInvite = true
    inviteStartTime = GetGameTimer()

    TriggerEvent('sounds:Private', 'recrutamento', 0.09)
    
    local settings = SOCIALPARTY_KIND_INVITE_SETTINGS[invite.packet.kind]
    
    local requestId = TriggerEvent('request.start', invite.packet.body, {
        title = settings?.title or 'Desconhecido',
        subtitle = ('%s (%s)'):format(settings?.subtitlePrefix or 'Desconhecido Prefix', invite.packet.createdBy),
        bgColor = settings?.bgColor or 'rgba(0, 0, 0, 0.5)',
        onAccepted = function(source)
            if not CanAcceptSocialpartyInvite() then
                return
            end
            local handler = SOCIALPARTY_KIND_INVITE_ACCEPTED_HANDLER[invite.packet.kind]
            assert(handler)
            Citizen.CreateThreadNow(function()
                handler(invite.packet)
            end)
        end,
    }, 60, 'toast')

    -- Start timeout thread
    Citizen.CreateThreadNow(function()
        local startTime = GetGameTimer()
        
        while processingInvite and GetGameTimer() - startTime < 60000 do
            Wait(0)
        end

        -- Cleanup after timeout or manual dismiss
        processingInvite = false
        activeSocialpartyInvites = math.max(0, activeSocialpartyInvites - 1)
        processSocialpartyQueue()
    end)
end

---@param packet socialparty.InviteReceivedPacket
local function OnSocialpartyInviteReceived(packet)
    print('OnSocialpartyInviteReceived')
    if not CanAcceptSocialpartyInvite() then
        print('Not CanAcceptSocialpartyInvite')
        return
    end
    
    table.insert(socialpartyQueue, {packet = packet})
    print('socialpartyQueue', #socialpartyQueue)
    if #socialpartyQueue == 1 then
        print('processSocialpartyQueue')
        processSocialpartyQueue()
    end
end

RegisterNetEvent( 'socialparty.invite_received', OnSocialpartyInviteReceived )

RegisterNetEvent("toast.dismiss", function()
    processingInvite = false
end)
