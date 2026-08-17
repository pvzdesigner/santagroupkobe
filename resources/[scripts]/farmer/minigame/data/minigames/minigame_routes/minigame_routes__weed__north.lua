DEFINE_MINIGAME 'minigame_routes__weed__north' {

    displayName = 'Rota de Maconha (Norte)',

    points = MINIGAME_ROUTES__POINTS__NORTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Barragem", "Banzas", "Dixavas", "Gang4", "Sindicato", "Laranjas" } },
            { 'CidadeNobre', { "Barragem", "LosAztecas", "Gang7", "Gang8", "Banzas", "Sindicato", "Laranjas" } },
            { 'Caravelas', { "Barragem", "LosAztecas", "Noxus", "Gang7", "Gang8", "Banzas", "Sindicato", "Laranjas" } },
            { 'Kingdom', { "Barragem", "Gang9", "Noxus", "Dixavas", "Gang7", "Gang8", "Banzas", "Sindicato", "Laranjas" } },
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