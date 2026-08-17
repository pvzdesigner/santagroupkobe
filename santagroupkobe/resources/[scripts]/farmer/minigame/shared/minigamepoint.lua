---@enum eMinigameVolumeType
eMinigameVolumeType =
{
    Sphere  = 0,
    Polygon = 1,
}

---@alias MinigameVolume CZone

---@class MinigamePoint
---@field type             eMinigameVolumeType
---@field volume           MinigameVolume
---@field minigameDef      MinigameDef
---@field minigameDefIndex number
---@field index            number

DEFAULT_MINIGAME_POINT_MAX_DISTANCE = 5.0

---@param minigameDef MinigameDef
---@param volumeDef   MinigameVolumeDef
---@param minigamePointDefIndex number
---@return CZone
function CreateMinigameVolume( minigameDef, volumeDef, minigamePointDefIndex )

    if      volumeDef.type == eMinigameVolumeType.Sphere then

        local data = {
            coords = volumeDef.coords,
            radius = volumeDef.radius,
            -- debug = true,
        }

        return lib.zones.sphere({
            coords = volumeDef.coords,
            radius = volumeDef.radius,
            -- debug = true,

            inside = IS_CLIENT
                and
                    function()

                        if not gMinigameDefPoints[ minigameDef.index ] or not gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ] then
                            return
                        end

                        local minigamePoint = gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ]

                        assert( minigamePoint, ('MinigamePoint not found with minigameDefIndex=%s and index=%s !'):format( minigameDef.index, minigamePointDefIndex ) )

                        -- Executado em quanto o jogador estiver dentro dessas zonas
                        OnUpdateMinigamePoint( minigamePoint )
                    end
                or nil,

            onExit = IS_CLIENT
                and
                    function()

                        if not gMinigameDefPoints[ minigameDef.index ] or not gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ] then
                            return
                        end

                        local minigamePoint = gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ]

                        assert( minigamePoint, ('MinigamePoint not found with minigameDefIndex=%s and index=%s !'):format( minigameDef.index, minigamePointDefIndex ) )

                        OnExitMinigamePoint( minigamePoint )
                    end
                or nil,
        })

    elseif  volumeDef.type == eMinigameVolumeType.Polygon then

        return lib.zones.poly({
            points = volumeDef.vertices,
            thickness = 1000.0, -- Altura do volume
            -- debug = true,
            inside = IS_CLIENT
                and
                    function()

                        if not gMinigameDefPoints[ minigameDef.index ] or not gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ] then
                            return
                        end

                        local minigamePoint = gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ]

                        assert( minigamePoint, ('MinigamePoint not found with minigameDefIndex=%s and index=%s maxIndex=%s!'):format( minigameDef.index, minigamePointDefIndex, #gMinigameDefPoints[ minigameDef.index ] ) )

                        -- Executado em quanto o jogador estiver dentro dessas zonas
                        OnUpdateMinigamePoint( minigamePoint )
                    end
                or nil,

            onExit = IS_CLIENT
                and
                    function()

                        if not gMinigameDefPoints[ minigameDef.index ] or not gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ] then
                            return
                        end

                        local minigamePoint = gMinigameDefPoints[ minigameDef.index ][ minigamePointDefIndex ]

                        assert( minigamePoint, ('MinigamePoint not found with minigameDefIndex=%s and index=%s !'):format( minigameDef.index, minigamePointDefIndex ) )

                        OnExitMinigamePoint( minigamePoint )
                    end
                or nil,
        })
    else

        error( ('Invalid volume type: %s !'):format( json.encode( volumeDef ) ) )
    end
end

---@param minigameDefIndex      number
---@param minigamePointDefIndex number
---@param hook? fun( volume: MinigameVolume, minigamePoint: MinigamePoint )
---@return MinigamePoint
function CreateMinigamePoint( minigameDefIndex, minigamePointDefIndex, hook )

    local minigameDef      = MINIGAME_DEF_DATABASE[ minigameDefIndex ]

    assert( minigameDef, ('MinigameDef not found with index=%s !'):format( minigameDefIndex ) )

    local volumeDef = minigameDef.volumes[ minigamePointDefIndex ]

    assert( volumeDef, ('MinigameVolumeDef not found with minigameDefIndex=%s and index=%s !'):format( minigameDefIndex, minigamePointDefIndex ) )

    ---@type MinigamePoint
    local minigamePoint =
    {
        minigameDef      = minigameDef,
        minigameDefIndex = minigameDefIndex,

        index            = minigamePointDefIndex,

        type = volumeDef.type,
        volume = volumeDef.volume,
    }

    if hook then

        hook( minigamePoint.volume, minigamePoint )
    end

    return minigamePoint
end