--- TODO: Remover quando a VRP REINICIAR!
IS_SERVER = GetGameName() == 'fxserver'
IS_CLIENT = not IS_SERVER

---@enum eMinigameCreateStatus
---@diagnostic disable-next-line: lowercase-global
eMinigameCreateStatus =
{
    OK = 0,

    ERR = 10,
    ERR_NOT_ALLOWED = 11,
    ERR_MINIGAMEPOINT_TOO_FAR = 12,
    ERR_REQUIREMENTS_NOT_MET = 13,
    ERR_MINIGAME_DUPLICATE_FOUND = 14,
    ERR_INVENTORY_FULL = 15,
}

---@param minigamePoint MinigamePoint
---@param status        eMinigameCreateStatus
---@return string | nil
function GetMinigameCreateStatusMessage( minigamePoint, status )

    if      status == eMinigameCreateStatus.ERR then

        return 'Request duplicado'

    elseif  status == eMinigameCreateStatus.ERR_NOT_ALLOWED then

        return 'Você não tem permissão para iniciar esse minigame!'

    elseif  status == eMinigameCreateStatus.ERR_MINIGAMEPOINT_TOO_FAR then

        return ('Você está longe demais da area do(a) %s!'):format( minigamePoint.minigameDef.displayName )

    elseif  status == eMinigameCreateStatus.ERR_REQUIREMENTS_NOT_MET then

        local requirementsItemsTexts = table
            .map( minigamePoint.minigameDef.requirements.items, function( item )

                local itemName = itemName( item.id )

                return ('%dx %s'):format( item.amount, itemName )
            end)

        local requirementsItemsText = table.concat( requirementsItemsTexts, ' e ' )

        return ('Para iniciar esse minigame, você precisa de no mínimo: %s'):format( requirementsItemsText )

    elseif status == eMinigameCreateStatus.ERR_MINIGAME_DUPLICATE_FOUND then    

        return 'Você já está em um minigame!'

    elseif status == eMinigameCreateStatus.ERR_INVENTORY_FULL then

        return 'Não é possivel iniciar o minigame pois seu inventário está cheio!'

    else

        return ('UNHANDLED eMinigameCreateStatus "%s"!'):format( status )
    end
end

---@enum eMinigameStartStatus
---@diagnostic disable-next-line: lowercase-global
eMinigameStartStatus =
{
    OK = 0,

    ERR_DUPLICATE_REQUEST = 1,
    ERR_NOT_ALLOWED = 2,

    ERR_MINIGAMEPOINT_NOT_FOUND = 10,
    ERR_MINIGAMEPOINT_TOO_FAR = 11,

    ERR_REQUIREMENTS_NOT_MET = 12,

    ERR_MINIGAME_DUPLICATE_FOUND = 20,
    ERR_MINIGAME_UI_TASK_FAILED = 21,

    ERR_INVENTORY_FULL = 30,
}

---@alias MinigameId number

---@class MinigameContext
---@field hostPartyNumMembers number

---@class Minigame
---@field def            MinigameDef
---@field point          MinigamePoint
---@field isValid        boolean
---@field id             MinigameId
---@field hostedBySource Source
---@field hostedByPassport Passport | nil
---@field startedAtMs    number     -- local gametime!
---@field rewards        MinigameRewards
---@field isStarted      boolean
---@field ctx            MinigameContext

---@type table<Source, Minigame>
local gMinigameBySource = { }

---@param source Source
---@return Minigame | nil
function GetMinigameBySource( source )

    return gMinigameBySource[ source ]
end

---@param minigame Minigame
function AddMinigame( minigame )

    -- Marcar o minigame como valido novamente, já que ele foi invalidado assim que terminou
    minigame.isValid = true

    gMinigameBySource[ minigame.hostedBySource ] = minigame

    -- print( 'AddMinigame :: IS_SERVER=', IS_SERVER, 'IS_CLIENT=', IS_CLIENT )

    if     IS_SERVER then

        OnMinigameAddedServer( minigame )
    elseif IS_CLIENT then

        OnMinigameAddedClient( minigame )
    end
end

---@param minigame Minigame
local function RemoveMinigame( minigame )

    minigame.isValid = false

    gMinigameBySource[ minigame.hostedBySource ] = nil

    if     IS_SERVER then

        OnMinigameRemovedServer( minigame )
    elseif IS_CLIENT then

        OnMinigameRemovedClient( minigame )
    end
end

---@param minigamePoint  MinigamePoint
---@param minigameId     MinigameId
---@param hostedBySource Source
---@return Minigame
function CreateMinigame( minigamePoint, minigameId, hostedBySource )

    ---@type Minigame
    local minigame =
    {
        def = minigamePoint.minigameDef,

        point = minigamePoint,

        isValid = false,

        id = minigameId,

        hostedBySource = hostedBySource,

        hostedByPassport = IS_SERVER and vRP.Passport( hostedBySource ) or nil,

        startedAtMs = math.maxinteger,

        rewards =
        {
            items      = { },
            currencies = { },
        },

        isStarted = false,

        ctx = { },
    }

    return minigame
end

---@param minigame      Minigame
---@param keepAnimation boolean
---@return boolean
function DeleteMinigame( minigame, keepAnimation )

    -- print( ('DeleteMinigame :: minigame.id=%d minigame.def.name="%s" keepAnimation=%s'):format( minigame.id, minigame.def.name, keepAnimation ), minigame.isValid, debug.traceback() )

    if not minigame.isValid then
        return false
    end

    RemoveMinigame( minigame )

    if IS_CLIENT then

        OnMinigameDeletedClient( minigame, keepAnimation )
    end

    return true
end

---@param minigame Minigame
function ResetMinigameState( minigame )

    minigame.isStarted = false

    minigame.startedAtMs = math.maxinteger

    table.wipe( minigame.rewards.items      )
    table.wipe( minigame.rewards.currencies )
end

---@param minigame Minigame
function StartMinigame( minigame )

    assert( not minigame.isStarted )

    if IS_CLIENT then

        -- Fazer alguns outros processamentos antes de realmente iniciar o minigame!
        local status = OnBeforeMinigameStartedClient( minigame )

        -- print('StartMinigame :: OnBeforeStartMinigameClient.status=',status )

        if status ~= eMinigameStartStatus.OK then

            RequestEndMinigame( minigame )

            return status
        end
    end

    minigame.isStarted = true
    minigame.startedAtMs = GetGameTimer()
end

---@param volume MinigameVolume
---@param position      vector3
---@return boolean
function IsPositionInsideMinigameVolume( volume, position )

    -- print('IsPositionInsideMinigameVolume :: volume:contains( position )', position, volume.coords, volume:contains( position ))

    return volume:contains( position )
end

---@param minigame Minigame
---@return number
function GetMinigameMillisecondsUntilCompletionTimeReached( minigame )

    return ( minigame.startedAtMs + ( minigame.def.duration * 1000 ) ) - GetGameTimer()
end

---O minigame já chegou no tempo de término?
---@param minigame Minigame
---@return boolean
function HasMinigameReachedCompletionTime( minigame )

    -- print( 'HasMinigameReachedCompletionTime( minigame )', GetGameTimer(), minigame.startedAtMs, minigame.def.duration  )

    return GetMinigameMillisecondsUntilCompletionTimeReached( minigame ) <= 0
end

---@enum eMinigameCompleteStatus
---@diagnostic disable-next-line: lowercase-global
eMinigameCompleteStatus =
{
    OK = 0,
    OK_RESETING = 2,

    ERR = 10,
    ERR_MINIGAME_NOT_FOUND = 11,
    ERR_MINIGAME_NOT_VALID = 12,
    ERR_MINIGAME_NOT_STARTED = 13,
    ERR_MINIGAME_COMPLETION_TIME_NOT_REACHED = 14,
    ERR_MINIGAME_TOO_FAR = 15,
    ERR_REQUIREMENTS_NOT_MET = 16,

    ERR_INVENTORY_FULL = 20,
}

---@param status eMinigameCompleteStatus
---@return string | nil
function GetMinigameCompleteStatusMessage( status )

    if status == eMinigameCompleteStatus.ERR_MINIGAME_NOT_FOUND then

        return 'Você não está em um minigame!'

    elseif status == eMinigameCompleteStatus.ERR_MINIGAME_NOT_VALID then

        return 'Esse minigame já foi encerrado!'

    elseif status == eMinigameCompleteStatus.ERR_MINIGAME_COMPLETION_TIME_NOT_REACHED then

        return 'Você ainda não completou totalmente esse minigame!'

    elseif status == eMinigameCompleteStatus.ERR_MINIGAME_TOO_FAR then

        return 'Você está longe do ponto de minigame!'

    elseif status == eMinigameCompleteStatus.ERR_INVENTORY_FULL then

        return 'Você não tem espaço suficiente no inventário!'

    elseif status == eMinigameCompleteStatus.ERR_REQUIREMENTS_NOT_MET then

        return 'Você não possui os itens necessários para completar o minigame!'

    elseif status == eMinigameCompleteStatus.ERR then

        return 'Não foi possivel completar o minigame!'
    end

    return nil
end

---@param minigame Minigame
---@return eMinigameCompleteStatus
function CanCompleteMinigame( minigame )

    if not minigame.isValid then

        -- Minigame já foi deletado!

        return eMinigameCompleteStatus.ERR_MINIGAME_NOT_VALID
    end

    if not minigame.isStarted then

        return eMinigameCompleteStatus.ERR_MINIGAME_NOT_STARTED
    end

    if not HasMinigameReachedCompletionTime( minigame ) then

        -- Minigame ainda não terminou!

        return eMinigameCompleteStatus.ERR_MINIGAME_COMPLETION_TIME_NOT_REACHED
    end

    if
        not IsPositionInsideMinigameVolume(
            minigame.point.volume,
            GetEntityCoords(
                IS_CLIENT
                    and PlayerPedId()
                    or GetPlayerPed( minigame.hostedBySource )
                )
            )
    then

        return eMinigameCompleteStatus.ERR_MINIGAME_TOO_FAR
    end

    if IS_SERVER then

        if not HasMinigameDefRequirements( minigame.def, minigame.hostedByPassport ) then

            return eMinigameCompleteStatus.ERR_REQUIREMENTS_NOT_MET
        end
    end

    return eMinigameCompleteStatus.OK
end

--

AddEventHandler( 'onResourceStop', function ( resourceName )

    if resourceName == GetCurrentResourceName() then

        for _, minigame in pairs( gMinigameBySource ) do

            DeleteMinigame( minigame, false )
        end
    end
end)