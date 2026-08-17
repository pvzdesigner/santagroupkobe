DEFINE_MINIGAME 'minigame_routes__cocaine__north' {

    displayName = 'Rota de Cocaina (Norte)',

    points = MINIGAME_ROUTES__POINTS__NORTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Vermelhos", "Verdes", "Rosas", "LosAztecas", "Amarelos" } },
            { 'CidadeNobre', { "DriftKing", "Gang9", "Brancos", "Rosas", "Roxos" } },
            { 'Caravelas', { "DriftKing", "Verdes", "Gang9", "Brancos", "Rosas", "Roxos" } },
            { 'Kingdom', { "Vermelhos", "Verdes", "Brancos", "Rosas", "Roxos" } },
            { 'Universo', { "Vermelhos", "Verdes", "Gang9", "Brancos", "Rosas", "LosAztecas", "Roxos" } },
            { 'Alexandria', { "Vermelhos", "Verdes", "Gang9", "Brancos", "LosAztecas", "Roxos" } },
            { 'Maresia', { "Vermelhos", "LosAztecas", "Verdes", "Rosas", "Roxos", "Brancos" } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'cokeleaf', amount = 6 },
            { id = 'sulfuric', amount = 6 },
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}