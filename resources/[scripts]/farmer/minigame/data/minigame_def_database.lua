---@type MinigameDef[]
MINIGAME_DEF_DATABASE = { }

---@type MinigamePoint[]
gMinigamePoints = { }

---Index do minigamepoint é relativo ao minigamedef
---então tem index iguais porem muda o minigamedef
---@type table<number, MinigamePoint[]>
gMinigameDefPoints = { }

---@param name string
---@return fun( data: fsMinigameDef )
function DEFINE_MINIGAME( name )

    ---@param def fsMinigameDef
    return function( data )

        assert( data.duration, 'duration is required!' )

        ---@type MinigameDef
        local def =
        {
            index = #MINIGAME_DEF_DATABASE + 1,

            name = name,

            displayName = data.displayName,

            flags = data.flags or eMinigameDefFlags.MDF_NONE,

            duration = data.duration,

            volumes = { },

            distance = data.distance or DEFAULT_MINIGAME_POINT_MAX_DISTANCE,

            isAllowed = data.isAllowed,

            requirements = data.requirements or { },

            scriptedInteractionName = data.scriptedInteractionName,

            rewards = table.type( data.rewards ) == 'array' and data.rewards or { data.rewards },

            hooks = data.hooks or { },
        }

        table.insert( MINIGAME_DEF_DATABASE, def )

        local function AddVolumeDef( volumeDef )

            table.insert( def.volumes, volumeDef )

            local minigamePointDefIndex = #def.volumes

            volumeDef.volume = CreateMinigameVolume( def, volumeDef, minigamePointDefIndex )
        end

        for _, pointDef in ipairs( data.points or { } ) do

            ---@type SphereMinigameVolumeDef
            local sphereVolumeDef =
            {
                type = eMinigameVolumeType.Sphere,
                coords = pointDef,
                radius = data.distance,
            }

            AddVolumeDef( sphereVolumeDef )
        end

        for _, fsVolumeDef in ipairs( data.volumes or { } ) do

            local fsVolumeType = fsVolumeDef[ 1 ]

            ---@type MinigameVolumeDef
            local volumeDef =
            {
            }

            if      fsVolumeType == 'sphere' then

                ---@cast fsVolumeDef fsSphereMinigameVolumeDef

                volumeDef.type = eMinigameVolumeType.Sphere

                volumeDef.coords = assert( fsVolumeDef[ 2 ], 'fsSphereMinigameVolumeDef.coords is required!' )
                volumeDef.radius = assert( fsVolumeDef[ 3 ], 'fsSphereMinigameVolumeDef.radius is required!' )

            elseif  fsVolumeType == 'polygon' then

                ---@cast fsVolumeDef fsPolygonMinigameVolumeDef

                volumeDef.type = eMinigameVolumeType.Polygon

                assert( fsVolumeDef[ 2 ], 'fsPolygonMinigameVolumeDef.vertices is required!' )
                volumeDef.vertices = table.map( fsVolumeDef[ 2 ], function( vertex )

                    return vec3( vertex.x, vertex.y, 0.0 )
                end)
            else

                error( ('Invalid volume type: %s !'):format( json.encode( fsVolumeDef ) ) )
            end

            AddVolumeDef( volumeDef )
        end

        for _, rewardLootTableDef in ipairs( def.rewards ) do

            for _, rewardDef in ipairs( rewardLootTableDef.item or { } ) do

                if rewardDef.chanceWeight then

                    rewardLootTableDef.computedChanceWeightSum =  rewardLootTableDef.computedChanceWeightSum or 0

                    rewardLootTableDef.computedChanceWeightSum += rewardDef.chanceWeight
                end
            end
        end

        -- Ordenars as loottables que possuem "when" primeiro na lista
        -- para processarmos essas e depois as que não possuem condições
        table.sort( def.rewards, function( a, b )

            return a.when and not b.when
        end)

        if IS_CLIENT then

            ---@param minigameDef MinigameDef
            function OnMinigameDefCreated( minigameDef )

                gMinigameDefPoints[ minigameDef.index ] = { }

                for minigamePointDefIndex, volumeDef in ipairs( minigameDef.volumes ) do

                    local minigamePoint = CreateMinigamePoint( minigameDef.index, minigamePointDefIndex, HookMinigameVolume )

                    table.insert( gMinigamePoints, minigamePoint )

                    gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ] = minigamePoint
                end
            end

            OnMinigameDefCreated( def )
        end
    end
end

-- duplicado de sx.table.join porque o sx demora a carregar
function table_join( tA, tB )

    for _, v in each( tB ) do

        table.insert( tA, v )
    end

    return tA
end
