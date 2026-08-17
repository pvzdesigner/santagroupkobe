---@enum ePlayerAttachmentState
local ePlayerAttachmentState =
{
    Ok = 0,

    Err = 1,

    ErrDead = 1,

    ErrOtherPlayerInvalid = 3,
    ErrOtherPlayerInvalidPed = 4,

    ErrChildPlayerPhysicallyDetached = 5,

    -- "Causado" pelo servidor por dar clear no attachment pós já ter aplicado attachment
    ErrServerDetachment = 10,
    ErrServerPendingAttachmentAborted = 11,
}

---@type PlayerAttachment | nil
local gPlayerAttachment = nil

---@type TickAbortSignal | nil
local gProcessPlayerAttachmentTickAbortSignal = nil

local function GetLocalPlayerAttachmentState()

    print( ('GetLocalPlayerAttachmentState -> LOCALPLAYER_SOURCE=%s sx.player.attachment.getAttachmentState( LOCALPLAYER_SOURCE )=%s'):format( LOCALPLAYER_SOURCE, json.encode( sx.player.attachment.getAttachmentState( LOCALPLAYER_SOURCE ) ) ) )

    return sx.player.attachment.getAttachmentState( LOCALPLAYER_SOURCE )
end

---@return boolean
local function HasLocalPlayerAttachment()

    return gPlayerAttachment ~= nil
end

---@return PlayerAttachment
local function GetLocalPlayerAttachment()

    assert( HasLocalPlayerAttachment() )

    return gPlayerAttachment
end

---@param attachmentState NetworkPlayerAttachmentState
local function SetLocalPlayerAttachmentState( attachmentState )

    sx.player.attachment.setAttachmentState( LOCALPLAYER_SOURCE, attachmentState )
end

local function ClearLocalPlayerIsPendingAttachmentStateFlag()

    local attachmentState = GetLocalPlayerAttachmentState()

    assert( attachmentState, 'attachmentState is nil' )

    attachmentState[ 3 ] &= ~ePlayerAttachmentFlags.IsPending

    SetLocalPlayerAttachmentState( attachmentState )
end

---@return boolean
local function IsLocalPlayerAttached()

    if not HasLocalPlayerAttachment() then

        return false
    end

    local attachment = GetLocalPlayerAttachment()

    if attachment.relationKind ~= ePlayerAttachmentRelationKind.Child then

        return false
    end

    return true
end

local function DetachLocalPlayer()

    local attachment = GetLocalPlayerAttachment()

    assert( attachment.relationKind == ePlayerAttachmentRelationKind.Child )

    DetachEntity( PlayerPedId() )

    SetPlayerControl( PlayerId(), true, 0 )

    ResetPlayerInputGait( PlayerId() )
end

---@param attachment PlayerAttachment
---@return string, string, number
local function GetPlayerAttachmentAnimation( attachment )

    local animDict = nil
    local animName = nil
    local animFlags = 0 --[[ eAnimationFlags.AF_DEFAULT ]]

    -- print( 'attachment.flags', attachment.flags, attachment.flags & ePlayerAttachmentFlags.OnShoulders )

    --[[
    if      attachment.flags & ePlayerAttachmentFlags.InHandcuffs then

        if attachment.relationKind == ePlayerAttachmentRelationKind.Child then

            animDict = 'mp_arresting'
            animName = 'idle'
        end

    else --]] if  ( attachment.flags & ePlayerAttachmentFlags.OnShoulders ) ~= 0 then

        if      attachment.relationKind == ePlayerAttachmentRelationKind.Parent then

            animDict = 'missfinale_c2mcs_1'
            animName = 'fin_c2_mcs_1_camman'
            animFlags |= 1  --[[ eAnimationFlags.AF_LOOPING ]]
            animFlags |= 16 --[[ eAnimationFlags.AF_UPPERBODY ]]
            animFlags |= 32 --[[ eAnimationFlags.AF_SECONDARY ]]

        elseif  attachment.relationKind == ePlayerAttachmentRelationKind.Child  then

            animDict = 'nm'
            animName = 'firemans_carry'
            animFlags |= 1  --[[ eAnimationFlags.AF_LOOPING   ]]
        end
    else

        if      attachment.relationKind == ePlayerAttachmentRelationKind.Parent then

            animDict   = 'amb@code_human_wander_drinking@male@base'
            animName   = 'static'
            animFlags |= 1  --[[ eAnimationFlags.AF_LOOPING   ]]
            animFlags |= 16 --[[ eAnimationFlags.AF_UPPERBODY ]]
            animFlags |= 32 --[[ eAnimationFlags.AF_SECONDARY ]]

        elseif  attachment.relationKind == ePlayerAttachmentRelationKind.Child then

            animDict = 'move_f@multiplayer'
            animName = 'idle'
            animFlags |= 1  --[[ eAnimationFlags.AF_LOOPING   ]]
            animFlags |= 16 --[[ eAnimationFlags.AF_UPPERBODY ]]
            animFlags |= 32 --[[ eAnimationFlags.AF_SECONDARY ]]
        end
    end

    return animDict, animName, animFlags
end

---@param attachment PlayerAttachment
local function PlayPlayerAttachmentAnimation( attachment )

    local animDict, animName, animFlags = GetPlayerAttachmentAnimation( attachment )

    if not animDict or not animName then
        return
    end

    local pedId = PlayerPedId()

    if IsEntityPlayingAnim( pedId, animDict, animName, 3 ) then
        return
    end

    if not HasAnimDictLoaded( animDict ) then

        RequestAnimDict( animDict )

        return
    end

    ClearPedTasks( PlayerPedId() )

    -- vRP.playAnim( false, { animDict, animName }, true )
    TaskPlayAnim( pedId, animDict, animName, 8.0, 8.0, -1, animFlags, 0, 0, 0, 0 )

    return true
end

local function ClearLocalPlayerAttachment()

    local attachment = GetLocalPlayerAttachment()

    print( ('ClearLocalPlayerAttachment -> attachment.relationKind: %s'):format( attachment.relationKind ) )

    if      attachment.relationKind == ePlayerAttachmentRelationKind.Child then

        DetachLocalPlayer()

    elseif  attachment.relationKind == ePlayerAttachmentRelationKind.Parent then

    end

    local animDict, animName, animFlags = GetPlayerAttachmentAnimation( attachment )

    if animDict and animName then

        local pedId = PlayerPedId()

        if IsEntityPlayingAnim( pedId, animDict, animName, 3 ) then

            ClearPedTasks( pedId )
        end
    end

    gPlayerAttachment = nil

    AbortProcessPlayerAttachmentThread()
end

---@param attachment       PlayerAttachment
---@param otherPlayerPedId number
---@return boolean
local function AttemptLocalPlayerAttachment( attachment, otherPlayerPedId )

    local pedId = PlayerPedId()

    if      attachment.relationKind == ePlayerAttachmentRelationKind.Child then

        if ( attachment.flags & ePlayerAttachmentFlags.OnShoulders ) ~= 0 then

            AttachEntityToEntity( pedId, otherPlayerPedId, 0, 0.20, 0.12,0.63, 0.5, 0.5, 0.0, false, false, false, false, 2, false )

        else
            if ( attachment.flags & ePlayerAttachmentFlags.InHandcuffs ) ~= 0 then

                -- Player em handcuffs ficam a frente do player que está carregando

                AttachEntityToEntity( pedId, otherPlayerPedId, 11816, 0.0, 0.5, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true )
            else

                -- Player padrao ficam ao lado do player que está carregando

                AttachEntityToEntity( pedId, otherPlayerPedId, 0x60F0, 0.25, 0.30, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, true )
            end
        end

    elseif  attachment.relationKind == ePlayerAttachmentRelationKind.Parent then

        if OnesyncEnableRemoteAttachmentSanitization then -- Remover validação quando essa native for para release

            OnesyncEnableRemoteAttachmentSanitization( true )
        end

        if GetEntityAttachedTo( otherPlayerPedId ) ~= pedId then

            return false
        end

        if OnesyncEnableRemoteAttachmentSanitization then -- Remover validação quando essa native for para release

            OnesyncEnableRemoteAttachmentSanitization( false )
        end

        -- Remover a flag de IsPending
        ClearLocalPlayerIsPendingAttachmentStateFlag()
    end

    return true
end

---@return ePlayerAttachmentState
local function ProcessPlayerPendingAttachment()

    local pendingAttachment = sx.player.attachment.getAttachment( LOCALPLAYER_SOURCE )

    assert( pendingAttachment )

    local otherPlayerIdx = GetPlayerFromServerId( pendingAttachment.otherSource )

    if otherPlayerIdx == -1 then

        print( ('ProcessPlayerPendingAttachment -> otherPlayerIdx: %s INVALID!'):format( otherPlayerIdx ) )

        return ePlayerAttachmentState.ErrOtherPlayerInvalid
    end

    local otherPlayerPedId = GetPlayerPed( otherPlayerIdx )

    if otherPlayerPedId == 0 then

        print( ('ProcessPlayerPendingAttachment -> otherPlayerPedId: %s INVALID!'):format( otherPlayerPedId ) )

        return ePlayerAttachmentState.ErrOtherPlayerInvalidPed
    end

    if AttemptLocalPlayerAttachment( pendingAttachment, otherPlayerPedId ) then

        print( 'ProcessPlayerPendingAttachment -> attachment processed', pendingAttachment )

        gPlayerAttachment = pendingAttachment

        -- Não vamos retornar true/fals porque estamos aguardando finalizar o attachment
    end

    return ePlayerAttachmentState.Ok
end

---@return boolean, boolean -- hasPendingAttachment, isDettachment
local function GetLocalPlayerHasPendingAttachment()

    local pendingAttachment = sx.player.attachment.getAttachment( LOCALPLAYER_SOURCE )

    local hasAttachment = HasLocalPlayerAttachment()

    if not pendingAttachment and hasAttachment then

        return true, true
    end

    -- caso 2: Temos um attachment pendente, mas não temos attachment aplicado?
    if pendingAttachment        and not hasAttachment then

        return true, false
    end

    -- caso 3: Temos attachment pendente e attachment aplicado?
    if pendingAttachment        and     hasAttachment then

        local attachment = GetLocalPlayerAttachment()

        -- caso 2: Nosso attachment aplicado é diferente do que está no nosso statebag?
        if
            pendingAttachment.relationKind ~= attachment.relationKind or
            pendingAttachment.otherSource  ~= attachment.otherSource  or
            pendingAttachment.flags        ~= attachment.flags
        then

            -- Os attachments são diferentes, então precisamos processar o attachment pendente!

            return true, false
        end
    end

    -- Nenhuma alteração!

    return false, false
end

---@return ePlayerAttachmentState
local function ProcessPlayerAttachment()

    local pedId = PlayerPedId()

    -- Estamos mortos?
    --[[
    if GetEntityHealth(pedId) <= 100 then

        return ePlayerAttachmentState.ErrDead
    end
    --]]

    local hasPendingAttachment, isDetachment = GetLocalPlayerHasPendingAttachment()

    if     hasPendingAttachment then

        if isDetachment then

            print( 'ProcessPlayerAttachment -> isDetachment')

            return ePlayerAttachmentState.ErrServerDetachment
        end

        -- TODO: Implementar um timeout para o attachment pendente!
        -- somente o parent vai poder enviar um timeout!

        local state = ProcessPlayerPendingAttachment()

        if state ~= ePlayerAttachmentState.Ok then

            print( ('ProcessPlayerAttachment -> cant process pending attachment -> state: %s'):format( state ) )

            return state
        end
    end

    if not hasPendingAttachment and not HasLocalPlayerAttachment() then

        print( ('ProcessPlayerAttachment -> no pending attachment and no attachment, maybe aborted by server? networkState=%s'):format( GetLocalPlayerAttachmentState() ) )

        return ePlayerAttachmentState.ErrServerPendingAttachmentAborted
    end

    if HasLocalPlayerAttachment() then

        local attachment = GetLocalPlayerAttachment()

        local otherPlayerIdx = GetPlayerFromServerId(attachment.otherSource)
        local otherPlayerPedId = GetPlayerPed(otherPlayerIdx)

        if      attachment.relationKind == ePlayerAttachmentRelationKind.Parent then

            if otherPlayerIdx == -1 then

                return ePlayerAttachmentState.ErrOtherPlayerInvalid
            end

            if otherPlayerPedId == 0 then

                return ePlayerAttachmentState.ErrOtherPlayerInvalidPed
            end

            if GetEntityAttachedTo( otherPlayerPedId ) ~= pedId then

                -- print( ('ProcessPlayerAttachment -> ErrChildPlayerPhysicallyDetached -> otherPlayerPedId=%s pedId=%s GetEntityAttachedTo( otherPlayerPedId )=%s'):format( otherPlayerPedId, pedId, GetEntityAttachedTo( otherPlayerPedId ) ) )

                -- Garantir que o player filho está fisicamente attached ao player pai!

                return ePlayerAttachmentState.ErrChildPlayerPhysicallyDetached
            end

        elseif  attachment.relationKind == ePlayerAttachmentRelationKind.Child then

            -- Não pode mudar para a primeira pessoa enquanto está attached ou processando um attachment pendente!
            DisableFirstPersonCamThisFrame()

            -- Desabilitar todos os controles do player, menos o movimento da camera!
            SetPlayerControl( PlayerId(), false, 0 | 1 << 8 --[[ SPC_LEAVE_CAMERA_CONTROL_ON ]] )

            -- Somente simular o movimento se não estiver no ombro!
            if ( attachment.flags & ePlayerAttachmentFlags.OnShoulders ) == 0 then

                local heading = GetEntityHeading( otherPlayerPedId )

                SimulatePlayerInputGait(PlayerId(), GetPedDesiredMoveBlendRatio( otherPlayerPedId ), -1, heading, false, true )
            end
        end

        -- if GetEntityHealth( PlayerPedId() ) > 100 then

            PlayPlayerAttachmentAnimation( attachment )
        -- end
    end

    return ePlayerAttachmentState.Ok
end

function AbortProcessPlayerAttachmentThread()

    assert( gProcessPlayerAttachmentTickAbortSignal )

    gProcessPlayerAttachmentTickAbortSignal()

    gProcessPlayerAttachmentTickAbortSignal = nil

    print( 'AbortProcessPlayerAttachmentThread -> Aborted!')
end

local function EnsureProcessPlayerAttachmentThread()

    if not gProcessPlayerAttachmentTickAbortSignal then

        print( 'EnsureProcessPlayerAttachmentThread -> Creating thread!' )

        gProcessPlayerAttachmentTickAbortSignal = SetTick(
            function()

                local state = ProcessPlayerAttachment()

                if state ~= ePlayerAttachmentState.Ok then

                    print( ('EnsureProcessPlayerAttachmentThread -> state: %s HasLocalPlayerAttachment=%s'):format( state, HasLocalPlayerAttachment() ) )

                    if HasLocalPlayerAttachment() then

                        local attachment = GetLocalPlayerAttachment()

                        ClearLocalPlayerAttachment()

                        if attachment.relationKind == ePlayerAttachmentRelationKind.Parent then

                            -- Esse error foi "causado" pelo servidor?
                            -- então o servidor provavelmente não precisa ser avisado de que
                            -- o attachment precisa ser quebrado...
                            local isServerCausedError = state >= ePlayerAttachmentState.ErrServerDetachment

                            if not isServerCausedError then

                                -- TriggerServerEvent( 'sx.player_attachment.request_detach_child_or_parent' )

                                -- Gambiarra para limpar corretamente state de attachment e as tabelas "Carry"
                                -- no inventário, que são usadas ainda!
                                ExecuteCommand( 'carry' )
                            end
                        end
                    end
                end
            end
        )
    end
end

---TODO: Mover TICKS para outro local quando possivel!
---@alias Tick unknown

---@param fn fun(): any
---@return Tick
function SetTick( fn )

    local alive = true

    local tick = function()

        alive = false
    end

    CreateThread(function ()

        while alive do

            fn()

            Wait( 0 )
        end
    end)

    return tick
end

---@param attachment PlayerAttachment
function SetLocalPlayerPendingAttachment( attachment )

    EnsureProcessPlayerAttachmentThread()
end

local function OnNetworkPlayerAttachmentStateChanged()

    local state = GetLocalPlayerAttachmentState()

    print( ( 'HandleNetworkPlayerAttachmentStateUpdate -> state: %s' ):format( json.encode( state ) ) )

    if state then

        EnsureProcessPlayerAttachmentThread()
    end
end

CreateThread(
    function()

        print( 'Esperando PLAYER_ATTACHMENT_STATE_KEY' )

        -- TIRAR ESSA MERDA QUANDO A GENTE CONSEGUIR CARREGAR O SX EM ORDEM, CORRETAMENTE!
        while not PLAYER_ATTACHMENT_STATE_KEY do

            Wait( 0 )
        end

        print( 'PLAYER_ATTACHMENT_STATE_KEY encontrado' )

        AddStateBagChangeHandler( PLAYER_ATTACHMENT_STATE_KEY, ('player:%s'):format( LOCALPLAYER_SOURCE ), function( _, _, value )

            Wait( 0 )

            OnNetworkPlayerAttachmentStateChanged()
        end)

        OnNetworkPlayerAttachmentStateChanged()
    end
)