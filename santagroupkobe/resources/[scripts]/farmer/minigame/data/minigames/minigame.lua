-- #static
local rewardMultipliersByVip =
{
    [ 'VipWpp'         ] = 0.1, -- +  10% de items
    [ 'Bronze'         ] = 0.2, -- +  20% de items
    [ 'Platinum'         ] = 0.24, -- +  22% de items
    [ 'Prata'          ] = 0.3, -- +  30% de items
    [ 'Ouro'           ] = 0.5, -- +  50% de items
    [ 'VipPolicia'     ] = 0.2, -- +  20% de items
    [ 'VipLancamento'  ] = 0.5, -- +  50% de items
    [ 'VipLancamento2' ] = 0.5, -- +  50% de items
    [ 'VipLancamento3' ] = 0.5, -- +  50% de items
    [ 'Black'          ] = 1.0, -- + 100% de items
}

local rewardMultipliersByJobLevel =
{
    [1] = 0,
    [2] = 0,
    [3] = 0,
    [4] = 1.0,
}

-- #static end

--- Micro-optimization
local exp_party    = exports[ 'party'    ]
local exp_painel   = exports[ 'painel'   ]
local exp_crafting = exports[ 'crafting' ]
--- Micro-optimization END

---Calculo de computação de recompensas compartilhado
---entre vários tipos de minigames!
---@type MinigameHookBeforeComputeRewards
CommonBeforeComputeRewards = function ( event )

    local source = event.minigame.hostedBySource

    local passport = vRP.Passport( source )

    local partyMembers = exp_party:Room( passport, source, 50.0 )

    -- Multiplicador para jogadores em party
    if partyMembers then

        -- Quando houver 4 membros na party
        -- o multiplicador vai ser de 100%

        -- + 25% de items a cada membro na party
        event.config.rewardAmountMultiplier += ( 0.25 * #partyMembers )
    end

    -- Multiplicador para jogadores com grupo do bolsa familia
    -- if vRP.HasGroup( passport, 'BolsaFamilia' ) then

    --     -- + 100% de items
    --     event.config.rewardAmountMultiplier += 1.0
    -- end

    local currentJob         = vRP.UserGroupByType( passport,'Job' )
    local currentJobLevel    = tonumber( exp_painel:getGroupLevel( currentJob ) or 0 )
    local currentJobFarmBuff = exp_crafting:getGroupFarmBuff( currentJob ) or 0

    if currentJobFarmBuff > 0 then

        event.config.rewardAmountMultiplier += ( currentJobFarmBuff / 100 )
    end

    if rewardMultipliersByJobLevel[ currentJobLevel ] then

        event.config.rewardAmountMultiplier += rewardMultipliersByJobLevel[currentJobLevel]
    end

    local vips = vRP.HasVip( passport )

    -- Multiplicador para jogadores com VIP
    if vips then

        for vip, _ in pairs( vips ) do

            -- Aumentar o multiplicador de recompensas enquanto as
            -- as recompensas estiverem sendo calculadas ( criadas/definidas )
            event.config.rewardAmountMultiplier += ( rewardMultipliersByVip[ vip ] or 0.0 )
        end
    end
end