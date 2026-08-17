DEFINE_MINIGAME 'minigame_routes__weapons__north' {

    displayName = 'Rota de Armas (Norte)',

    points = MINIGAME_ROUTES__POINTS__NORTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Gang1", "Mercenarios", "Caribe", "Japao", "Inglaterra", "Noxus", "LaMafia", "Gang6", "Metgala", "Gringa", "Franca", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } },
            { 'CidadeNobre', { "Mercenarios", "Putaria", "Palazzo", "Dixavas", "Noxus", "Franca", "Japao", "Lavajato","Gringa", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } },
            { 'Caravelas', { "Mercenarios", "Palazzo", "Dixavas", "Franca", "Japao", "Lavajato","Gringa", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } },
            { 'Kingdom', { "Mercenarios", "Inglaterra", "Caribe", "Franca", "Japao", "Lavajato","Gringa", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } },
            { 'Universo', { "Gang1", "LosTugas", "Mercenarios", "Caribe", "Franca", "Japao", "Noxus", "Gringa", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } },
            { 'Alexandria', { "Gang1", "Rosas", "Mercenarios", "Caribe", "Franca", "Japao", "Noxus", "Gringa", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } },
            { 'Maresia', { "Gang1", "Gang9", "Japao", "Jamakeikos", "Mercenarios", "Caribe", "Inglaterra", "Noxus", "LaMafia", "Gringa", "Franca", "Italia", "Russia", "Israel", "Playboy", "Mexico", "China" } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'weaponbody', amount = 6 },
            { id = 'molas'     , amount = 6 },
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}