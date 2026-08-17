---@param minigame Minigame
function OnMinigameCreated( minigame )

    -- print('OnMinigameCreated=', OnMinigameCreated, minigame, minigame.point, minigame.point.def.x, minigame.point.y)
    TriggerEvent( 'Notify:Text', _t( 'cancelCollection', minigame.def.displayName:upper() ) )

    if (minigame.def.name == 'milking_no_task') then
        FreezeEntityPosition(PlayerPedId(), true)
    end
    -- #DEBUG
    -- SetNewWaypoint( minigame.point.def.x, minigame.point.def.y )
    -- #DEBUG end

    CreateThread(function()

        while minigame.isValid do

            OnUpdateMinigame( minigame )

            Wait( 0 )
        end
    end)
end