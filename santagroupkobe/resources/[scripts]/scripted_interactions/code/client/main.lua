-- ---@type table<number, ScriptedInteraction>
-- local gScriptedInteractions = { }

---@type table<number, ScriptedInteraction>
local gScriptedInteractionByEntityId = { }


---@param interaction ScriptedInteraction
---@param interactionPropDef ScriptedInteractionPropDef
local function CreateScriptedInteractionPropLocally( interaction, interactionPropDef )

	local interactionStateDef = GetScriptedInteractionStateDef( interaction )

    local boneIndex = GetPedBoneIndex( interaction.entityId, interactionPropDef.boneId )

	local propEntityId = CreateObjectNoOffset( interactionPropDef.modelName, 0.0, 0.0, 0.0, false, false, false )

	table.insert( interaction.propEntityIds, propEntityId )

	SetEntityAsMissionEntity( propEntityId, true, true )

	local offsetPosition = interactionPropDef.offsetPosition or vector3( 0.0, 0.0, 0.0 )	
	local offsetRotation = interactionPropDef.offsetRotation or vector3( 0.0, 0.0, 0.0 )

    AttachEntityToEntity( propEntityId, interaction.entityId, boneIndex, offsetPosition.x, offsetPosition.y, offsetPosition.z, offsetRotation.x, offsetRotation.y, offsetRotation.z, false, false, false, false, 2, true )

    SetModelAsNoLongerNeeded( interactionPropDef.modelName )
end

---@param interaction ScriptedInteraction
local function StoreScriptedInteraction( interaction )

	-- print('StoreScriptedInteraction', interaction.entityId)

	gScriptedInteractionByEntityId[ interaction.entityId ] = interaction
end

---@param interaction ScriptedInteraction
local function FreeScriptedInteraction( interaction )

	-- print('FreeScriptedInteraction',  interaction.entityId)

	assert( gScriptedInteractionByEntityId[ interaction.entityId ] == interaction )

	gScriptedInteractionByEntityId[ interaction.entityId ] = nil
end

---@param interactionDef ScriptedInteractionDef
---@return boolean
local function GetScriptedInteractionDefHasProps( interactionDef )

	return interactionDef.props ~= nil or interactionDef.prop ~= nil
end

---@param interactionDef ScriptedInteractionDef
---@return ScriptedInteractionPropDef[]
local function GetScriptedInteractionDefProps( interactionDef )

	return interactionDef.props or { interactionDef.prop }
end

---@param interaction ScriptedInteraction
---@return boolean
local function AreScriptedInteractionPropsCreated( interaction )

	return #interaction.propEntityIds > 0
end

---@param interaction ScriptedInteraction
---@param immediately boolean
local function CleanupScriptedInteractionState( interaction, immediately )

	-- print( ('CleanupScriptedInteractionState :: interaction.state.name="%s" interaction.propEntityId=%s immediately=%s'):format( GetScriptedInteractionStateDef( interaction ).name, interaction.propEntityId, immediately ) )

	local interactionStateDef = GetScriptedInteractionStateDef( interaction )

	-- print( '( interactionStateDef.flags & eScriptedInteractionStateFlags.WHEN_FINISHED__DELETE_ALL_PROP ) ~= 0 =', ( interactionStateDef.flags & eScriptedInteractionStateFlags.WHEN_FINISHED__DELETE_ALL_PROP ) ~= 0  )

	-- Temos a flag de deletar todos os props ou estamos forçando o cleanup?
	if ( interactionStateDef.flags & eScriptedInteractionStateFlags.WHEN_FINISHED__DELETE_ALL_PROP ) ~= 0 --[[ or immediately --]] then

		-- Temos um prop?
		-- TODO: Deduplicar codigo
		if AreScriptedInteractionPropsCreated( interaction ) then

			for _, propEntityId in ipairs( interaction.propEntityIds ) do

				DetachEntity( propEntityId, true, false )

				DeleteEntity( propEntityId )
			end

			table.wipe( interaction.propEntityIds )
		end
	end

	-- Caso o prop ainda exista, o comportamento padrão é só o dettach!
	if AreScriptedInteractionPropsCreated( interaction ) then

		-- Esse state NÃO tem a flag de manter o prop anterior?
		if not ( ( interactionStateDef.flags & eScriptedInteractionStateFlags.STATE_TRANSITION__KEEP_ALL_PROP ) ~= 0 ) then

			for _, propEntityId in ipairs( interaction.propEntityIds ) do

				DetachEntity( propEntityId, true, false )

				SetEntityAsNoLongerNeeded( propEntityId )
			end

			table.wipe( interaction.propEntityIds )
		end
	end

	local interactionStateDef = GetScriptedInteractionStateDef( interaction )

	if interactionStateDef.animation and not IsCloneScriptedInteraction( interaction ) then

		ClearPedTasks( interaction.entityId )

		-- print('cleanedup taskas')
	end
end

---@param interaction ScriptedInteraction
---@param immediately boolean
local function StopClientEntityScriptedInteraction( interaction, immediately )

	-- print( ('StopClientEntityScriptedInteraction :: interaction.def.name="%s" immediately=%s interaction.isStopped=%s interaction.isStopping=%s'):format( interaction.def.name, immediately, interaction.isStopped, interaction.isStopping ) )

	-- print( 'StopClientEntityScriptedInteraction :: trace', debug.traceback() )

	if interaction.isStopped then
		return
	end

	interaction.isStopped  = immediately
	interaction.isStopping = not immediately

	-- print('StopClientEntityScriptedInteraction :: interaction.isStopping=', interaction.isStopping, 'interaction.isStopped=', interaction.isStopped)

	if immediately then

		FreeScriptedInteraction( interaction )

		if not IsCloneScriptedInteraction( interaction ) then

			DeleteScriptedInteractionWithEntity( interaction.entityId )
		end

		CleanupScriptedInteractionState( interaction, immediately )

		if not IsCloneScriptedInteraction( interaction ) then

			TriggerEvent( 'scripted_interactions:onLocalScriptedInteractionStopped', interaction.def.name )
		end
	end
end

--

---@param interaction ScriptedInteraction
---@return boolean
local function ProcessLocalScriptedInteraction( interaction )

	if interaction.isStopping or interaction.isStopped then

		-- print( 'ProcessLocalScriptedInteraction :: stopped due to isStopping or isStopped' )

		return false
	end

	if not DoesEntityExist( interaction.entityId ) then

		-- print( 'ProcessLocalScriptedInteraction :: stopped due to entity not exist' )

		return false
	end

	local interactionStateDef = GetScriptedInteractionStateDef( interaction )

	if interactionStateDef.animation and not IsEntityPlayingAnim( interaction.entityId, interactionStateDef.animation.dict, interactionStateDef.animation.name, 3 ) then

		-- print( 'ProcessLocalScriptedInteractionAnimation :: stopped due to not playing anim' )

		return false
	end

	return true
end

---@param interaction ScriptedInteraction
local function PlayScriptedInteraction( interaction, interactionStateName )

	-- print( ('PlayScriptedInteraction :: interactionStateName="%s" interaction.isStopped=%s interaction.isStopping=%s'):format( interactionStateName, interaction.isStopped, interaction.isStopping ) )

	if interaction.isStopped or interaction.isStopping then
		return
	end

	local prevInteractionStateName = interaction.stateName

	local prevInteractionStateDef = GetScriptedInteractionStateDef( interaction )

	-- CleanupScriptedInteractionState( interaction, true )

	SetScriptedInteractionState( interaction, interactionStateName )

	local interactionStateDef = GetScriptedInteractionStateDef( interaction )

	local loadingProp, loadingAnimation = false, false

	if GetScriptedInteractionDefHasProps( interactionStateDef ) then

		for _, interactionPropDef in ipairs( GetScriptedInteractionDefProps( interactionStateDef ) ) do

			RequestModel( interactionPropDef.modelName )
		end

		loadingProp = true
	end

	if interactionStateDef.animation and not IsCloneScriptedInteraction( interaction ) then

		RequestAnimDict( interactionStateDef.animation.dict )

		loadingAnimation = true
	end

	-- TODO: Improve this, it's not pretty
	-- and we should have a streamingrequesthelper or so
	-- to handle timeouts and such!
	while true do

		if not DoesEntityExist( interaction.entityId ) then
			break
		end

		if not loadingProp and not loadingAnimation then
			break
		end

		local loadedAllModels = true

		for _, interactionPropDef in ipairs( GetScriptedInteractionDefProps( interactionStateDef ) ) do

			if not HasModelLoaded( interactionPropDef.modelName ) then

				loadedAllModels = false
			end
		end

		loadingProp = not loadedAllModels

		if interactionStateDef.animation and HasAnimDictLoaded( interactionStateDef.animation.dict ) then

			loadingAnimation = false
		end

		Wait( 0 )
	end

	if not DoesEntityExist( interaction.entityId ) then
		return
	end

	-- Esse state precisa de um prop?
	if GetScriptedInteractionDefHasProps( interactionStateDef ) then

		-- print('interaction.propEntityId=', interaction.propEntityId)

		-- O prop ja existe?
		if not AreScriptedInteractionPropsCreated( interaction ) then

			for _, interactionPropDef in ipairs( GetScriptedInteractionDefProps( interactionStateDef ) ) do

				CreateScriptedInteractionPropLocally( interaction, interactionPropDef )
			end
		end
	end

	-- print('PlayScriptedInteraction -> interaction.isStopped=', interaction.isStopped)

	if interactionStateDef.animation and not IsCloneScriptedInteraction( interaction ) then

        TaskPlayAnim( interaction.entityId, interactionStateDef.animation.dict, interactionStateDef.animation.name, 8.0, -8.0, -1, interactionStateDef.animation.flags, 0, false, false, false )

		RemoveAnimDict( interactionStateDef.animation.dict )

		pcall(
			function (...)

				-- A gente não se importa com o error
				-- só quero esperar a animação começar

				lib.waitFor(function ()

					-- print('waiting anim to start')

					if IsEntityPlayingAnim( interaction.entityId, interactionStateDef.animation.dict, interactionStateDef.animation.name, 3 ) then
						return true
					end
		
					return nil
				end, 2000 )
			end
		)

		-- print(' PlayScriptedInteraction -> starting thread')
	end

	TriggerEvent( 'scripted_interactions:onLocalScriptedInteractionStarted', interaction.def.name )

	CreateThread( function ()

		while true do

			Wait( 0 )

			local fc = GetFrameCount()

			if fc % 10 == 0 then

				-- Process every 10 frames

				local keepPlaying = ProcessLocalScriptedInteraction( interaction )

				if not keepPlaying then
					break
				end
			end
		end

		if not interaction.isStopped then

			-- print('animation probably ended, let stopped scriptedinteraction')

			StopClientEntityScriptedInteraction( interaction, true )
		end
	end)
end

---@class (exact) ScriptedInteraction
---@field def      		ScriptedInteractionDef
---@field stateName		string
---@field entityId 		number
---@field isStopped		boolean
---@field isStopping	boolean
---@field propEntityIds number[]

---@param interaction ScriptedInteraction
function IsCloneScriptedInteraction( interaction )

    return NetworkGetEntityOwner( interaction.entityId ) ~= PlayerId()
end

---@param entityId number
---@return ScriptedInteraction | nil
local function GetScriptedInteractionFromEntity( entityId )

	return gScriptedInteractionByEntityId[ entityId ]
end

AddStateBagChangeHandler( STATEBAG_KEY, nil, function( bagName, key, value, reserved, replicated )

	-- print('scripted-interaction', bagName, key, json.encode(value), reserved, replicated)

	if replicated then

		--[[ Ignore locally set state ]]

		return
	end

	-- print( ('scripted-interaction :: bagName="%s" key="%s" value=%s reserved=%s replicated=%s'):format( bagName, key, json.encode( value ), reserved, replicated ) )

	value = value or { }

    local newInteractionDefIndex, newInteractionStateName = table.unpack( value )

	newInteractionStateName = newInteractionStateName or DEFAULT_SCRIPTED_INTERACTION_STATE

    local entityId = GetEntityFromStateBagName( bagName )

	lib.waitFor(
		function()

			entityId = GetEntityFromStateBagName( bagName )

			if entityId ~= 0 then

				-- We ok!

				return true
			end
		end,
		'Failed to get playerIndex from bagName',
		20000
	)

	local prevInteraction = GetScriptedInteractionFromEntity( entityId )

	if prevInteraction and prevInteraction.def.index ~= newInteractionDefIndex then

		-- Remover imediatamento caso a gente não seja o dono dessa scripted interaction!
		local immediately =
			IsCloneScriptedInteraction( prevInteraction )
				and true
				or	false

		StopClientEntityScriptedInteraction( prevInteraction, immediately )
	end

	if newInteractionDefIndex and ( prevInteraction == nil or prevInteraction.def.index ~= newInteractionDefIndex ) then

		local interactionDef = GetScriptedInteractionDefinitionByIndex( newInteractionDefIndex )

		local interaction = CreateEntityScriptedInteraction( interactionDef, entityId )

		StoreScriptedInteraction( interaction )
	end

	local currInteraction = GetScriptedInteractionFromEntity( entityId )

	-- print('newInteractionStateName=', newInteractionStateName)

	if currInteraction and not ( currInteraction.isStopped or currInteraction.isStopping ) then

		PlayScriptedInteraction( currInteraction, newInteractionStateName )
	end

	-- print('###')
end)

AddEventHandler( 'onResourceStop', function ( resourceName )

	if resourceName ~= GetCurrentResourceName() then
		return
	end

	for _, interaction in pairs( gScriptedInteractionByEntityId ) do

		StopClientEntityScriptedInteraction( interaction, true )
	end
end)

-- # External

---@param interactionName string
---@return boolean
function IsRunningScriptedInteraction( interactionName )

    return GetIsEntityRunningScriptedInteraction( PlayerPedId(), interactionName )
end

---@return boolean
function IsRunningAnyScriptedInteraction()

    return GetIsEntityRunningAnyScriptedInteraction( PlayerPedId() )
end

---@param interactionName string
---@param params? 		  StartScriptedInteractionParams
---@return boolean
function StartScriptedInteraction( interactionName, params )

    assert( interactionName, 'Parameter "interactionName" cannot be nil' )

	params = params or { }

    params.interactionName = interactionName

	return StartEntityScriptedInteraction( params, PlayerPedId(), true )
end

---@param source 	   Source
---@param immediately? boolean
function StopScriptedInteraction( immediately )

	local interaction = GetScriptedInteractionFromEntity( PlayerPedId() )

    if not StopEntityScriptedInteraction( PlayerPedId(), false ) then
		return
	end

	-- assert( interaction, 'Not playing any ScriptedInteraction!' )

	if interaction then

		-- *interaction* pode ser nulla aqui pelo falto de *StopEntityScriptedInteraction*
		-- remover a interaction pela statebag e isso pode demorar 1 tick para acontecer realmente

		StopClientEntityScriptedInteraction( interaction, immediately or false )
	end
end

---@return string
function GetScriptedInteractionState()

	local interaction = GetScriptedInteractionFromEntity( PlayerPedId() )

	assert( interaction, 'Not playing any ScriptedInteraction!' )

	return interaction.stateName
end

-- TODO: Assert on ScriptedDefinitionDef count mismatch between client and server
-- TODO: Assert with better messages

exports( 'isRunningScriptedInteraction', IsRunningScriptedInteraction )
exports( 'isRunningAnyScriptedInteraction', IsRunningAnyScriptedInteraction )
exports( 'startScriptedInteraction'    , StartScriptedInteraction  	  )
exports( 'stopScriptedInteraction'     , StopScriptedInteraction   	  )
exports( 'getScriptedInteractionState' , GetScriptedInteractionState  )

-- for _, entityId in ipairs( GetGamePool('CObject') ) do
-- 	DetachEntity( entityId, true, true )
-- end