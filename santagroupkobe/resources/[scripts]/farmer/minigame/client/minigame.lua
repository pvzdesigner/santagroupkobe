local Taskbar = Proxy.getInterface( 'inventory/taskbar', 'hovers' )

---@type Minigame | nil
local gActiveMinigame = nil

---@type number | nil
local gActiveMinigameBlipId = nil

---@type boolean
local gRequestStartMinigameLock = false

---@type number
local gRequestCompleteMinigameCooldownEndsAt = 0

---@return Minigame | nil
function GetActiveMinigame()

    return GetMinigameBySource( GetPlayerServerId( PlayerId() ) )
end

---@param minigame Minigame
---@return eMinigameStartStatus
function OnBeforeMinigameStartedClient( minigame )

    -- print( 'OnBeforeMinigameStartedClient ::' )

    if ( minigame.def.flags & eMinigameDefFlags.MDF__BEFORE_START__REQUIRE_TASK ) ~= 0 then

        -- É necessario fazer um minigame de task antes de iniciar?

        -- print('OnBeforeMinigameStartedClient :: tasking taskbar')

        if not Taskbar.Task( 1, 20000 ) then

            return eMinigameStartStatus.ERR_MINIGAME_UI_TASK_FAILED
        end
    end

    -- print( ('OnMinigameStarted :: minigame.id=%d minigame.def.name="%s"'):format( minigame.id, minigame.def.name ) )

    -- Desabilitar algumas keymappings!
    LocalPlayer.state['Buttons'] = true

    if minigame.def.duration > 0 then

        TriggerEvent( 'Progress', 'Mundo', minigame.def.duration * 1000 )
    end

    -- Desabilitar o hoverfy por X segundos
    TriggerEvent( 'hoverfy:removeHoverfy', minigame.def.duration * 1000 )

    if minigame.def.scriptedInteractionName then

        exports.scripted_interactions:startScriptedInteraction( minigame.def.scriptedInteractionName )
    end

    return eMinigameStartStatus.OK
end

---@param minigame Minigame
function OnMinigameAddedClient( minigame )

    local volumePos = minigame.point.volume.coords

    local blipId = AddBlipForCoord( volumePos.x, volumePos.y, volumePos.z )

    gActiveMinigameBlipId = blipId

	SetBlipSprite( blipId, 1 )
	SetBlipColour( blipId, 5 )
	SetBlipScale( blipId, 0.6 )
	SetBlipAsShortRange( blipId, false )
	SetBlipRoute( blipId, true )
	BeginTextCommandSetBlipName( "STRING" )
	AddTextComponentString( minigame.def.displayName )
	EndTextCommandSetBlipName(blipId )
end

---@param minigame Minigame
function OnMinigameRemovedClient( minigame )
    RemoveBlip( gActiveMinigameBlipId )

    if (minigame.def.name == 'milking_no_task') then 
        FreezeEntityPosition(PlayerPedId(), false)
    end

    gActiveMinigameBlipId = nil
end

---@param minigame      Minigame
---@param keepAnimation boolean
function OnMinigameDeletedClient( minigame, keepAnimation )

    -- print( ('OnMinigameDeletedClient :: minigame.id=%d minigame.def.name="%s" keepAnimation=%s'):format( minigame.id, minigame.def.name, keepAnimation ) )

    -- MinigameUpdate vai parar quando o minigame for invalidado pelo DeleteMinigame()

    LocalPlayer.state['Buttons'] = false

    TriggerEvent( 'Notify:Text', '' )

    TriggerEvent( 'Progress', 'Cancelando', 0 )

    -- Reativar o hoverfy
    TriggerEvent( 'hoverfy:returnHoverfy' )

    if not keepAnimation and minigame.def.scriptedInteractionName then

        if exports.scripted_interactions:isRunningScriptedInteraction( minigame.def.scriptedInteractionName ) then

            exports.scripted_interactions:stopScriptedInteraction()
        end
    end
end

---@param minigameDef MinigameDef
function IsAllowedMinigameDef( minigameDef )


    if minigameDef.isAllowed then

        if minigameDef.isAllowed.groups then

            for _, groupName in ipairs( minigameDef.isAllowed.groups ) do

                if LocalPlayer.state[ 'Job' ] == groupName then

                    return true
                end
            end
        end

        return false
    end

    return true
end

---@param minigame Minigame
---@return eMinigameStartStatus
function CanStartMinigameClient( minigame )

    -- O jogador está proximo do ponto de minigame?
    if not IsPositionInsideMinigameVolume( minigame.point.volume, GetEntityCoords( PlayerPedId() ) ) then

        -- Longe demais do ponto!

        return eMinigameStartStatus.ERR_MINIGAMEPOINT_TOO_FAR
    end

    if not IsAllowedMinigameDef( minigame.point.minigameDef ) then

        -- TODO: Better error
        return eMinigameStartStatus.ERR_DUPLICATE_REQUEST
    end

    return eMinigameStartStatus.OK
end

---@param minigamePoint MinigamePoint
---@return boolean
function CanCreateMinigameClient( minigamePoint  )

    local minigameDef in minigamePoint

    if not IsAllowedMinigameDef( minigamePoint.minigameDef ) then

        -- print('is allowed')

        return false
    end

    if GetActiveMinigame() then

        -- print('has active minigame')

        return false
    end

    if ( minigamePoint.minigameDef.flags & eMinigameDefFlags.MDF_ONLY_CREATED_BY_SCRIPT ) ~= 0 then

        -- print('flag only')

        return false
    end

    return true
end

---@param minigamePoint MinigamePoint
---@return boolean
function RequestCreateMinigame( minigamePoint )

    -- print( 'RequestCreateMinigame :: minigamePoint=', minigamePoint.minigameDefIndex, minigamePoint.index, minigamePoint.volume.coords )

    ---@type eMinigameCreateStatus, MinigameId
    local status, minigameId = lib.callback.await( 'minigame:request_create', false, minigamePoint.minigameDefIndex, minigamePoint.index )

    -- print( 'RequestCreateMinigame :: status=', status, minigameId )

    if status ~= eMinigameCreateStatus.OK then

        local statusMessage = GetMinigameCreateStatusMessage( minigamePoint, status ) or 'NOSTATUS'

        TriggerEvent( 'Notify', 'vermelho', statusMessage, 5000, 'Minigames' )

        return false
    end

    local minigame = CreateMinigame( minigamePoint, minigameId, GetPlayerServerId( PlayerId() ) )

    AddMinigame( minigame )

    OnMinigameCreated( minigame )

    return true
end

---@param minigame Minigame
---@return boolean
function RequestStartMinigame( minigame )

    if gRequestStartMinigameLock then
        return
    end

    gRequestStartMinigameLock = true

    ---@type eMinigameStartStatus
    local status = lib.callback.await( 'minigame:request_start', false )

    -- print('RequestStartMinigame -> status=', status)

    if status == eMinigameStartStatus.OK then

        StartMinigame( minigame )
    end

    gRequestStartMinigameLock = false

    return status == eMinigameStartStatus.OK
end

---@param minigamePoint MinigamePoint
---@param status   eMinigameStartStatus
---@return string
local function GetMinigameStartStatusMessage( minigamePoint, status )

    if      status == eMinigameStartStatus.ERR_DUPLICATE_REQUEST then

        return 'Request duplicado'

    elseif  status == eMinigameStartStatus.ERR_NOT_ALLOWED then

        return 'Você não tem permissão para iniciar esse minigame!'

    elseif  status == eMinigameStartStatus.ERR_MINIGAMEPOINT_NOT_FOUND then

        return ('Error interno, contate a staff! ref( %s, %s )'):format( minigamePoint.minigameDefIndex, minigamePoint.index )


    elseif status == eMinigameStartStatus.ERR_MINIGAMEPOINT_TOO_FAR then

        return ('Você está longe demais da area do(a) %s!'):format( minigamePoint.minigameDef.displayName:upper() )

    elseif status == eMinigameStartStatus.ERR_REQUIREMENTS_NOT_MET then

        return 'Você não possui os itens necessários para iniciar o minigame!'

    elseif status == eMinigameStartStatus.ERR_MINIGAME_DUPLICATE_FOUND then


        return 'Você já está em um minigame!'

    elseif status == eMinigameStartStatus.ERR_MINIGAME_UI_TASK_FAILED then

        return 'Você falhou!'

    elseif status == eMinigameStartStatus.ERR_INVENTORY_FULL then

        return 'Não é possivel iniciar o minigame pois seu inventário está cheio!'
    else

        return ('UNHANDLED eMinigameStartStatus "%s"!'):format( status )
    end
end

---@param minigamePoint MinigamePoint
function RequestCreateAndStartMinigame( minigamePoint )

    assert( minigamePoint.minigameDef.flags & eMinigameDefFlags.MDF_ONLY_CREATED_BY_SCRIPT == 0, ( 'Minigame "%s" só pode ser criado por outros scripts!' ):format( minigamePoint.minigameDef.displayName ) )

    ---@type eMinigameCreateStatus, MinigameId
    local status, minigameId = lib.callback.await( 'minigame:request_create_and_start', false, minigamePoint.minigameDefIndex, minigamePoint.index )

    if status ~= eMinigameCreateStatus.OK then

        TriggerEvent( 'Notify', 'vermelho', GetMinigameCreateStatusMessage( minigamePoint, status ), 5000, 'Minigames' )

        return false
    end

    assert( minigameId, 'SendStartMinigameRequest returned an invalid minigameId' )

    local minigame = CreateMinigame( minigamePoint, minigameId, GetPlayerServerId( PlayerId() ) )

    -- O minigame ja é valido nesse momento
    -- então é necessário adicionar ele a lista de minigames para poder ser deletado caso necessario
    AddMinigame( minigame )

    StartMinigame( minigame )

    OnMinigameCreated( minigame )
end

---@param minigame Minigame
function RequestEndMinigame( minigame )

    if not DeleteMinigame( minigame, false ) then
        return
    end

    -- Notificar o servidor que o minigame terminou!
    --
    -- ( Isso daqui precisa ser um callback? )
    lib.callback.await( 'minigame:end', false )
end

---@param minigame Minigame
---@return boolean
function RequestCompleteMinigame( minigame )

    ---@type eMinigameCompleteStatus
    local status = lib.callback.await( 'minigame:request_complete', false )

    assert( status )

    if
        status ~= eMinigameCompleteStatus.OK            and
        status ~= eMinigameCompleteStatus.OK_RESETING
    then

        -- Não foi possivel completar o minigame, vamos notificar o jogador o motivo...

        local statusMessage = GetMinigameCompleteStatusMessage( status ) or 'NOSTATUS'

        TriggerEvent( 'Notify', 'vermelho', statusMessage, 5000, 'Minigames' )

        if
            status == eMinigameCompleteStatus.ERR_INVENTORY_FULL        or
            status == eMinigameCompleteStatus.ERR_REQUIREMENTS_NOT_MET
        then

            -- Não tem espaço no inventário ou não tem os items necessários
            -- para completar o minigame, os dois status são "panico", que força
            -- a ter que finalizar o minigame imediatamente!
            --
            -- se não vai causar um loop infinito de request

            RequestEndMinigame( minigame )
        end

        return false
    end

    -- #
    -- Caso o status seja "OK_RESTARTING", nós ainda vamos deletar
    -- o minigame no client, e o server será encarregado de pedir para
    -- que o client re-crie o minigame com o mesmo id.
    -- #

    -- Manter a animação do minigame atual
    -- para o novo minigame que será criado?
    --
    -- Isso evita problema visual ao cancelar
    -- e começar a mesma animação novamente.

    if status == eMinigameCompleteStatus.OK_RESETING then

        return
    end

    -- Caso esse tipo de minigame seja em loop, vamos tentar outro minigame do mesmo tipo!
    if not DeleteMinigame( minigame, false ) then

        -- O minigame sempre deve ser deletado com sucesso aqui, mas caso não seja, só vamos ignorar...

        -- print( ('CompleteMinigame :: not deleted!') )

        return false
    end

    return true
end

--[[
---@param minigameId         MinigameId
---@param minigameDefIndex   number
---@param minigamePointIndex number
---@param isStarted?         boolean
RegisterNetEvent( 'minigame:created_by_server', function( minigameId, minigameDefIndex, minigamePointIndex, isStarted )

    -- Nesse ponto, o minigame foi deletado pelo "CompleteMinigame"
    -- e será recriado com o mesmo minigameId e possivelmente outros dados
    -- como minigamePoint, etc...
    -- não é feita nenhuma validação aqui pois elas já foram feitas pelo servidor.

    print( ('minigame:created_by_server =>'), minigameId, minigameDefIndex, minigamePointIndex)

    local minigamepoint = CreateMinigamePoint( minigameDefIndex, minigamePointIndex )

    assert( minigamepoint )

    local minigame = CreateMinigame( minigamepoint, minigameId, GetPlayerServerId( PlayerId() ) )

    AddMinigame( minigame )

    OnMinigameCreated( minigame )
end)
--]]

---@param minigameId         MinigameId
---@param minigamePointIndex number
---@param startAutomatically boolean
RegisterNetEvent( 'minigame:reseted_by_server', function( minigameId, minigamePointIndex, startAutomatically )

    local minigame = GetActiveMinigame()

    -- print( 'minigame:reseted_by_server', minigameId, minigamePointIndex )

    if not minigame then
        return
    end

    assert( minigame.id == minigameId )

    -- print( 'minigame:reseted_by_server :: minigame.id=', minigame.id )

    -- Resetar horario de inicio, etc...
    ResetMinigameState( minigame )

    -- local minigameDef      = MINIGAME_DEF_DATABASE[ minigameDefIndex ]

    -- assert( minigameDef, ('MinigameDef not found with index=%s !'):format( minigameDefIndex ) )

    -- local volumeDef = minigameDef.volumes[ minigamePointDefIndex ]

    minigame.point = gMinigameDefPoints[ minigame.def.index ][ minigamePointIndex ]

    assert( minigame.point )

    OnMinigameRemovedClient( minigame )
    
    -- Recriar blips
    OnMinigameAddedClient( minigame )

    if startAutomatically then

        StartMinigame( minigame )
    end

    -- print( 'minigame:reseted_by_server :: minigame.point.index=', minigame.point.index )
end)

---@param variation 'North' | 'South'
AddEventHandler('routes:NPCStart', function( variation )

    if GetActiveMinigame() then

        RequestEndMinigame( GetActiveMinigame() )
    end

    local minigameDefSuffix = string.lower( variation )

    for _, minigamePoint in ipairs( gMinigamePoints ) do

        if minigamePoint.minigameDef.name:find( 'minigame_routes' ) and minigamePoint.minigameDef.name:find( minigameDefSuffix ) then

            if IsAllowedMinigameDef( minigamePoint.minigameDef ) then

                RequestCreateMinigame( minigamePoint )

                break
            end
        end
    end
end)

AddEventHandler('actions:Cancel', function()
    -- Ao pressionar o botão de cancelar (F6)

    local minigame = GetActiveMinigame()
    
    if not minigame then
        return
    end

    RequestEndMinigame( minigame )
end)

AddEventHandler( 'scripted_interactions:onLocalScriptedInteractionStopped', function( interactionName )

    local minigame = GetActiveMinigame()

    if not minigame then
        return
    end

    if minigame.def.scriptedInteractionName ~= interactionName then
        return
    end

    RequestEndMinigame( minigame )
end)
