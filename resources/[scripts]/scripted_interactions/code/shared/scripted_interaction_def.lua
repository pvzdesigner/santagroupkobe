---@class ScriptedInteractionAnimationDef
---@field dict string
---@field name string

---@class ScriptedInteractionPropDef
---@field modelName string
---@field boneId 	number

---@class baseScriptedInteractionStateDef
---@field name? 	 string
---@field animation? ScriptedInteractionAnimationDef
---@field flags?     eScriptedInteractionStateFlags
---@field prop?      ScriptedInteractionPropDef
---@field props?     ScriptedInteractionPropDef[]

---@class baseScriptedInteractionDef : baseScriptedInteractionStateDef[]

---@class ScriptedInteractionStateDef
---@field name 	 	 string
---@field animation? ScriptedInteractionAnimationDef
---@field flags      eScriptedInteractionStateFlags
---@field prop?      ScriptedInteractionPropDef
---@field props?     ScriptedInteractionPropDef[]

---@class ScriptedInteractionDef
---@field index  number
---@field name   string
---@field states ScriptedInteractionStateDef[]

---@type ScriptedInteractionDef[]
local gScriptedInteractionDefinitions = { }

---@type table<string, ScriptedInteractionDef>
local gScriptedInteractionDefinitionsByName = { }

---@enum eScriptedInteractionStateFlags
eScriptedInteractionStateFlags =
{
	NONE = 1 << 0,
	STATE_TRANSITION__KEEP_ALL_PROP = 1 << 1,	-- Ao mudar de state, mantem os props que foram criados no state anterior e não tenta criar novos!

	WHEN_FINISHED__DELETE_ALL_PROP = 1 << 10,
}

---@param def ScriptedInteractionDef
function ValidateScriptedInteractionDefinition( def )
end

---@param name string
---@param base baseScriptedInteractionDef
function RegisterScriptedInteractionDefinition( name, base )

	local states = base

	for _, state in ipairs( states ) do

		if state.name == nil then

			assert( #states == 1, 'ScriptedInteractionDef com mais de um state deve ter uma propriedade "name" para cada state!' )
		end

		state.name 	 = state.name  or DEFAULT_SCRIPTED_INTERACTION_STATE
		state.flags = state.flags or eScriptedInteractionStateFlags.NONE
	end

	---@type ScriptedInteractionDef
	local def =
	{
		index = #gScriptedInteractionDefinitions + 1,
		name  = name,

		states = states,
	}

    table.insert( gScriptedInteractionDefinitions, def )

	gScriptedInteractionDefinitionsByName[ name ] = def
end

---@param interactionName string
---@return boolean
function IsScriptedInteractionDefinitionValid( interactionName )

	local interactionDef = gScriptedInteractionDefinitions[ interactionName ]

	return interactionDef ~= nil
end

---@param index number
---@return ScriptedInteractionDef
function GetScriptedInteractionDefinitionByIndex( index )

	local interactionDef = gScriptedInteractionDefinitions[ index ]

	assert( interactionDef, ('Invalid ScriptInteraction index=%s. dump=%s'):format( index, json.encode( gScriptedInteractionDefinitions, { indent = true }) ) )

	return interactionDef
end

---@param interactionName string
---@return ScriptedInteractionDef
function GetScriptedInteractionDefinitionByName( interactionName )

	local interactionDef = gScriptedInteractionDefinitionsByName[ interactionName ]

	assert( interactionDef, ('ScriptedInteractionDef with name="%s" not found!'):format( interactionName ) )

	return interactionDef
end

-- !

---@param interactionName string
function DEFINE_SCRIPTED_INTERACTION( interactionName )

    -- animation states ( idle, running, etc )
    -- props
    -- maybe

	---@param def  baseScriptedInteractionDef
	return function ( def )

		RegisterScriptedInteractionDefinition( interactionName, def )
	end
end