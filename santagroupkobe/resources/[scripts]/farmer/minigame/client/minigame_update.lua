---Update executado a cada frame enquando tiver um Minigame ativo!
---@param minigame Minigame
function OnUpdateMinigame( minigame )

    -- TODO: Cancelar o minigame caso o jogador não esteja executando a animação?

    if not minigame.isStarted then

        -- "E" foi pressionado nesse frame?
        --
        -- Quando a duração do minigame for <= 0, a gente permite que o minigame seja iniciado
        -- sem que o jogador pressione uma tecla.
        -- isso é utilizado atualmente para os minigames de rota
        if minigame.def.duration <= 0 or IsControlJustPressed( 0, 38 ) then

            if CanStartMinigameClient( minigame ) == eMinigameStartStatus.OK then

                RequestStartMinigame( minigame )
            end
        end

    elseif minigame.isStarted then

        local status = CanCompleteMinigame( minigame )

        -- print('OnUpdateMinigame :: can complete status', status)

        if status == eMinigameCompleteStatus.OK then

            RequestCompleteMinigame( minigame )
        else

            if status == eMinigameCompleteStatus.ERR_INVENTORY_FULL then

                local statusMessage = GetMinigameCompleteStatusMessage( status )

                assert( statusMessage )

                TriggerEvent( 'Notify', 'vermelho', statusMessage, 5000, 'Minigames' )
            end
        end
    end
end