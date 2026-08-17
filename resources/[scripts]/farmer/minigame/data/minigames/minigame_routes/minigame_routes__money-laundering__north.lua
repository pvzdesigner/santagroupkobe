DEFINE_MINIGAME 'minigame_routes__money-laundering__north' {

    displayName = 'Rota de Lavagem (Norte)',

    points = MINIGAME_ROUTES__POINTS__NORTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Ballas", "Bellagio", "Putaria", "Lavajato", "Tequilas", "Arcade", "Palazzo", "Luxor" } },
            { 'CidadeNobre', { "Ballas", "Pinkmans", "Metgala", "Gang1", "FerroVelho", "Redline", "Tequilas", "Arcade", "Bahamas", "Luxor" } },
            { 'Caravelas', { "Ballas", "Caribe", "Metgala", "Putaria", "Gang1", "Bellagio", "Redline", "Tequilas", "Arcade", "Bahamas" } },
            { 'Kingdom', { "Ballas", "LosAztecas", "Callisto", "Metgala", "Putaria", "Gang1", "Bellagio", "Redline", "Tequilas", "Arcade", "Bahamas", "Palazzo", "Luxor" } },
            { 'Universo', { "Ballas", "Bellagio", "Lavajato", "Tequilas", "Arcade", "Callisto", "Bahamas", "Palazzo", "Luxor" } },
            { 'Alexandria', { "Ballas", "Bellagio", "Lavajato", "Tequilas", "Arcade", "Callisto", "Bahamas", "Palazzo", "Luxor" } },
            { 'Maresia', { "Ballas", "Bellagio", "Lavajato", "Tequilas", "Arcade", "Callisto", "Bahamas", "Palazzo", "Luxor" } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'aguadestilada', amount = 6 },
            { id = 'cloro', amount = 6 },
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}
