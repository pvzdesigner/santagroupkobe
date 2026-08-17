
---Jogador está dentro de um ponto de minigame
---possivelmente para começar um novo minigame!
---
---Isso daqui é executado a cada frame em que o jogador
---está dentro de um ponto
---@param minigamePoint MinigamePoint
function OnUpdateMinigamePoint( minigamePoint )

    if
        not CanCreateMinigameClient( minigamePoint ) and
        not
            (
                GetActiveMinigame()
                and
                GetActiveMinigame().isStarted == false
                and
                GetActiveMinigame().point.index == minigamePoint.index
            )
    then
        return
    end

    local volumePos = minigamePoint.volume.coords

    DrawMarker( 20, volumePos.x, volumePos.y, volumePos.z - 0.5, 0, 0, 0, 0, 0, 0, 0.5, 0.5, 0.5, THEME.rgb.r, THEME.rgb.g, THEME.rgb.b, 100, 0, 0, 0, 1)

    local fc = GetFrameCount()

    if fc % 100 == 0 then

        -- print( ('OnUpdateMinigamePoint :: Iniciar %s'):format( minigamePoint.minigameDef.displayName:upper() ) )

        TriggerEvent("hoverfy:toggle", true, { title = minigamePoint.minigameDef.displayName:upper(), key = "E", legend = 'Pressione para iniciar' })
    end

    if IsControlJustPressed( 0, 38 )  then

        -- "E" foi pressionado nesse frame?

        if GetActiveMinigame() then
        
            RequestStartMinigame( GetActiveMinigame() )
        else

            -- Tentar começar um novo minigame...
            RequestCreateAndStartMinigame( minigamePoint )
        end
    end
end

---Jogador saiu do ponto de minigame
---@param minigamePoint MinigamePoint
function OnExitMinigamePoint( minigamePoint )

    local minigame = GetActiveMinigame()

    -- Tem um minigame ativo? Caso sim, então a gente provavelmente
    -- saiu do ponto desse minigame
    if minigame and minigame.isStarted and minigame.point.minigameDefIndex == minigamePoint.minigameDefIndex and minigame.point.index == minigamePoint.index then

        -- Terminar o minigame sem completar!
        CreateThread(function()

            RequestEndMinigame( GetActiveMinigame() )
        end)
    end

    TriggerEvent( 'hoverfy:removeHoverfy' )
end