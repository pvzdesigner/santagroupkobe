local Timer = GetGameTimer()

---O request que está em uso/evidencia no momento
---@type table<eRequestExtType, RequestExt[]>
local gRequestQueueByType = { }

-----------------------------------------------------------------------------------------------------------------------------------------
-- ALL
-----------------------------------------------------------------------------------------------------------------------------------------
---@param request RequestExt
local function RemoveRequestFromQueue( request )

    local queue = gRequestQueueByType[ request.type ] or { }

    for index, r in ipairs( queue ) do

        if r.id == request.id then

            table.remove( queue, index )

            return
        end
    end
end

RegisterNuiCallback("askResponse",function(data,cb)

    print('askResponse=', json.encode( data, { indent = true }))

    local id = data.request.id

    ---@type boolean
    local ok = false

    local request = GetRequestExt( id )

    if data.accepted then

        request:done( ToSource( GetPlayerServerId( PlayerId() ) ) )

    else

        request:done( ToSource( GetPlayerServerId( PlayerId() ) ), data.isTimeout and eRequestFailureReason.TimedOut or eRequestFailureReason.Cancelled )
    end

    RemoveRequestFromQueue( request )

    cb({ ok = true })
end)

---@param request RequestExt
function PushRequest( request )

    TriggerEvent( 'hoverfy:removeHoverfy' )

    SendNUIMessage({
        action = 'addRequest',
        data =
        {
            id = request.id,
            type = request.type,

            message = request.message:gsub("[<>]",""),

            interval = request.opts.ttl * 1000, -- Converter para millisegundos
            title = request.opts.title,
            subtitle = request.opts.subtitle,
            bgColor = request.opts.bgColor,
        }
    })
    print('PushRequest')

    local queue = gRequestQueueByType[ request.type ]

    if not gRequestQueueByType[ request.type ] then
        queue = { }

        gRequestQueueByType[ request.type ] = queue
    end

    table.insert( queue, request )
end

---@param request RequestExt
function OnRequestExtTimedout( request )

    RemoveRequestFromQueue( request )
end

---@param requestServerId   RequestExtId
---@param message           string
---@param opts              RequestExtOptions
---@param type              eRequestExtType
local function StartRequestExtCreatedByServer( requestServerId, message, opts, type )

    opts.onAccepted = function()

        -- print('onAccept requestServerId=', requestServerId )

        TriggerServerEvent( 'request:accept', requestServerId )
    end

    opts.onRefused = function( source, failureReason )

        -- print('onRefuse requestServerId=', requestServerId, failureReason)

        local isTimeout = failureReason == eRequestFailureReason.TimedOut

        TriggerServerEvent( 'request:cancel', requestServerId, isTimeout )
    end

    local request = StartRequestExt( 'server', ToSource( GetPlayerServerId( PlayerId() ) ), message, opts, type )

    PushRequest( request )
end

---API antiga para a criação no client de requests vindas do servidor
---@param requestServerId   RequestExtId
---@param message           string
---@param ttl               number
function Creative.addRequest( requestServerId, message, ttl )

    ttl = ttl or 10

    StartRequestExtCreatedByServer( requestServerId, message, {
        ttl = ttl,
    }, 'default' )
end

---Evento enviado pelo servidor para criar novos requests no client
---@param requestServerId   RequestExtId
---@param message           string
---@param ttl               number              Em segundos!
---@param type?             eRequestExtType
RegisterNetEvent( 'net:request:add_request', function( requestServerId, message, ttl, type )

    StartRequestExtCreatedByServer( requestServerId, message, {
        ttl = ttl,
    }, type or 'default' )
end)

---Evento executado pelo client para criar novos requests via script externos
---@param message   string
---@param opts      RequestExtOptions
---@param ttl?      number              Em segundos!
---@param type      eRequestExtType
AddEventHandler( 'request.start', function( message, opts, ttl, type )

    opts.ttl = ttl

    local request = StartRequestExt( 'client', ToSource( GetPlayerServerId( PlayerId() ) ), message, opts, type )

    PushRequest( request )
end)

---@param requestType eRequestExtType
---@return RequestExt | nil
local function GetNextRequestOfType( requestType )

    local queue = gRequestQueueByType[ requestType ]

    if not queue then
        return
    end

    -- Qual o request em "foco"?
    local request = queue[ 1 ]

    return request
end

---@param requestType eRequestExtType
local function OnPressedRequestAccept( requestType )
    print('OnPressedRequestAccept', requestType)

    local request = GetNextRequestOfType( requestType )

    if not request then
        return
    end

    TriggerEvent("toast.dismiss")

    SendNUIMessage({ action = "pressedYes", data = request.id })
    TriggerEvent("hoverfy:returnHoverfy")
end

---@return boolean
function HasNonDefaultRequests()
    local count = 0
    for requestType, queue in pairs(gRequestQueueByType) do
        if requestType ~= 'default' then
            for _, request in pairs(queue) do
                count = count + 1
            end
        end
    end
    if count > 0 then
        return true
    end
    return false
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- Y
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("Y",function()
    TriggerEvent("race:PressedY")

    OnPressedRequestAccept( 'default' )
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- U
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("U",function()

    local request = GetNextRequestOfType( 'default' )

    if not request then
        return
    end

    SendNUIMessage({ action = "pressedNo", data = request.id })
    TriggerEvent("race:PressedU")
    TriggerEvent("hoverfy:returnHoverfy")
end)

RegisterCommand("socialparty.accept",function()

    OnPressedRequestAccept( 'toast' )
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("Y", _t("Y"), "keyboard", "Y")
RegisterKeyMapping("U", _t("U"), "keyboard", "U")
RegisterKeyMapping("socialparty.accept", _t("socialparty.accept"), "keyboard", "F3")

exports("Request",function(...)
    return vSERVER.wrapper(...)
end)