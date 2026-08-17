DEFINE_MINIGAME 'minigame_routes__hamburger__south' {

    displayName = 'Rota de hamburger (Sul)',

    points = MINIGAME_ROUTES__POINTS__SOUTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,
    requirements =
    {
        -- flags = eMinigameRequirementsFlags.CONSUME_ITEMS,

        items =
        {
            { id = 'hamburger3', amount = 1 },
        },
    },
    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Empresa1" } },
            { 'CidadeNobre', { "Empresa1" } },
            { 'Caravelas', { "Empresa1" } },
            { 'Kingdom', { "Empresa1" } },
            { 'Universo', { "Empresa1" } },
            { 'Alexandria', { "Empresa1" } },
            { 'Maresia', { "Empresa1" } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'dollars'    , amount = 1000 }
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}