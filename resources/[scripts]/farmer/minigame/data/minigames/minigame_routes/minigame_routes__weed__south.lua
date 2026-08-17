DEFINE_MINIGAME 'minigame_routes__weed__south' {

    displayName = 'Rota de Maconha (Sul)',

    points = MINIGAME_ROUTES__POINTS__SOUTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Barragem", "Banzas", "Dixavas", "Gang4", "Sindicato", "Laranjas" } },
            { 'CidadeNobre', { "Barragem", "Banzas", "LosAztecas", "Gang7", "Gang8", "Sindicato", "Laranjas" } },
            { 'Caravelas', { "Barragem", "Banzas", "LosAztecas", "Noxus", "Gang7", "Gang8", "Sindicato", "Laranjas" } },
            { 'Kingdom', { "Barragem", "Gang9", "Banzas", "Dixavas", "Noxus", "Gang7", "Gang8", "Sindicato", "Laranjas" } },
            { 'Universo', { "Barragem", "Banzas", "Dixavas", "Sindicato", "Laranjas" } },
            { 'Alexandria', { "Barragem", "Banzas", "Dixavas", "Gang4", "Sindicato", "Laranjas" } },
            { 'Maresia', { "Barragem", "Banzas", "Dixavas", "Gang4", "Sindicato", "Laranjas" } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'silk'    , amount = 6 },
            { id = 'weedleaf', amount = 6 },
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}