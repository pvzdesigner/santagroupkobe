DEFAULT_SCRIPTED_INTERACTION_STATE = 'idle'

STATEBAG_KEY = 'scr-it'

---@param interaction ScriptedInteraction
---@return ScriptedInteractionStateDef
function GetScriptedInteractionStateDef( interaction )

	for _, state in ipairs( interaction.def.states ) do

		if state.name == interaction.stateName then

			return state
		end
	end

	error( ('Invalid state name! interaction.stateName="%s"'):format( interaction.stateName ) )
end

---@param interaction 		   ScriptedInteraction
---@param interactionStateName string
function SetScriptedInteractionState( interaction, interactionStateName )

	-- print( ('SetScriptedInteractionState :: interactionStateName="%s"'):format( interactionStateName ) )

	interaction.stateName = interactionStateName

	-- Will assert if statedef is invalid!
	GetScriptedInteractionStateDef( interaction)
end

---@param interactionDef ScriptedInteractionDef
---@param entityId       number
---@return ScriptedInteraction
function CreateEntityScriptedInteraction( interactionDef, entityId )

    assert( IsPedAPlayer( entityId ) )

    -- print( ('CreateEntityScriptedInteraction :: interactionDef=%s'):format( json.encode( interactionDef, { indent = true }) ) )

    ---@type ScriptedInteraction
    local interaction =
    {
        def      = interactionDef,
        entityId     = entityId,
        stateName = nil,
        isStopped = false,
        isStopping = false,
        propEntityIds = { },
    }

    SetScriptedInteractionState( interaction, DEFAULT_SCRIPTED_INTERACTION_STATE )

    return interaction
end

---@param entityId number
function DeleteScriptedInteractionWithEntity( entityId )

	Entity( entityId ).state:set( STATEBAG_KEY, nil, true )
end

---@class StartScriptedInteractionParams
---@field interactionName string
---@field state       string

---@params StartScriptedInteractionParams
---@return ScriptedInteractionDef
local function ValidateStartScriptedInteractionParams( params )

    assert( params, 'Parameter "params" cannot be nil')
    assert( params.interactionName, 'params is missing "interactionName"' )

    local interactionDef = GetScriptedInteractionDefinitionByName( params.interactionName )

	assert( interactionDef, ('Invalid scripted interaction name "%s"'):format( params.interactionName ) )

	return interactionDef
end

---@param entityId number
---@return number | nil, string | nil
function GetNetworkScriptedInteraction( entityId )

    local networkedScriptedInteraction = Entity( entityId ).state[ STATEBAG_KEY ]

    if not networkedScriptedInteraction then
        return nil
    end

    local interactionDefIndex, interactionStateName = table.unpack( networkedScriptedInteraction or {} )

    if not interactionDefIndex then

        Citizen.Trace( ('GetNetworkScriptedInteraction :: interactionDefIndex is nil! entityId=%s\n'):format(entityId ) )

        return nil
    end

    interactionStateName = interactionStateName or DEFAULT_SCRIPTED_INTERACTION_STATE

    return GetScriptedInteractionDefinitionByIndex( interactionDefIndex ), interactionStateName
end

---@param entityId        number
---@param interactionName string
---@return boolean
function GetIsEntityRunningScriptedInteraction( entityId, interactionName )

    local interactionDef = GetScriptedInteractionDefinitionByName( interactionName )

    return GetNetworkScriptedInteraction( entityId ) == interactionDef
end

---@param entityId number
---@return boolean
function GetIsEntityRunningAnyScriptedInteraction( entityId )

    return GetNetworkScriptedInteraction( entityId ) ~= nil
end

---@param entityId 	  number
---@param isNetworked boolean
---@return boolean
function StopEntityScriptedInteraction( entityId, isNetworked )

    assert( GetIsEntityRunningAnyScriptedInteraction( entityId ), ('StopEntityScriptedInteraction :: entityId=%s is not running any scripted interaction!'):format( entityId ) )

    DeleteScriptedInteractionWithEntity( entityId )

    return true
end

---@param params 	  StartScriptedInteractionParams
---@param entityId 	  number
---@param isNetworked boolean
---@return boolean, ScriptedInteractionDef
function StartEntityScriptedInteraction( params, entityId, isNetworked )

    params.state = params.state or DEFAULT_SCRIPTED_INTERACTION_STATE

	local interactionDef = ValidateStartScriptedInteractionParams( params )

    local interactionStateName = params.state

    local runningInteractionDef, runningInteractionStateName = GetNetworkScriptedInteraction( entityId )

    -- print( 'StartEntityScriptedInteraction :: runningInteractionDef=', runningInteractionDef, 'runningInteractionStateName=', runningInteractionStateName, json.encode( params ) )

    -- print('StartEntityScriptedInteraction :: runningInteractionStateName=', runningInteractionStateName)
    -- print('StartEntityScriptedInteraction :: interactionStateName=', interactionStateName)

    -- Já estamos executando esse scripted interaction?
    if runningInteractionDef == interactionDef and runningInteractionStateName == interactionStateName then

        return
    end

    if not GetIsEntityRunningScriptedInteraction( entityId, interactionDef.name ) and GetIsEntityRunningAnyScriptedInteraction( entityId ) then

        StopEntityScriptedInteraction( entityId, isNetworked )
    end

    -- print( ('StartEntityScriptedInteraction :: finished!') )

    -- Por enquanto, somente o servidor é responsável por setar novo scriptedinteractions
    Entity( entityId ).state:set( STATEBAG_KEY, { interactionDef.index, interactionStateName }, isNetworked )

    return true, interactionDef
end