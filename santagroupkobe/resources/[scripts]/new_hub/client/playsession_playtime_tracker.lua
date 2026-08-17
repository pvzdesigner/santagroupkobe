local gPlaytimeSeconds = -1

---@param playtimeSeconds number Segundos jogados somando todas as sessões de jogo.
RegisterNetEvent( 'net.playsession.on_start_playtime_tracker', function( playtimeSeconds )

    gPlaytimeSeconds = playtimeSeconds
end)

CreateThread(function()

    while true do

        Wait( 0 )

        if gPlaytimeSeconds ~= -1 then

            local secondsSinceLastUpdate = GetFrameTime()

            local prevPlaytimeHours = math.floor( gPlaytimeSeconds / 3600 )

            local newPlaytimeSeconds = gPlaytimeSeconds + secondsSinceLastUpdate
            local newPlaytimeHours = math.floor( newPlaytimeSeconds / 3600 )

            -- Adicionamos uma nova hora ao nosso tempo de jogo?
            if newPlaytimeHours > prevPlaytimeHours then

                TriggerServerEvent( 'net.playsession.request_increment_playtime_hour' )
            end

            gPlaytimeSeconds = newPlaytimeSeconds

            -- print('gPlaytimeSeconds: ' .. gPlaytimeSeconds, secondsSinceLastUpdate, prevPlaytimeHours, newPlaytimeHours)
        end
    end
end)