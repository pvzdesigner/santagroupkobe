DEFINE_MINIGAME 'minigame_routes__ammo__south' {

    displayName = 'Rota de Municao (Sul)',

    points = MINIGAME_ROUTES__POINTS__SOUTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Gang2", "Tribo", "Campinho", "Callisto", "Roxos", "Bahamas", "LosTugas", "Gang4", "Inglaterra", "Outlaws", "SonsofAnarchy", "Gang3", "Gang8", "Gang7", "Gang5", "Marrons", "Cinzas", "Azuis", "Warlocks", "Groove", "Galaxy" } },
            { 'CidadeNobre', { "Gang2", "Caribe", "Kraken", "Cinzas", "Bellagio", "Verdes","Tropadu7", "Tribo", "Gang4", "Outlaws", "SonsofAnarchy", "Anonymous", "Fazendinha", "Gang5", "Campinho", "Gang3", "Morro-do-Sacola", "Marrons", "Warlocks", "Inglaterra", "Galaxy" } },
            { 'Caravelas', { "Gang2","Tropadu7", "Tribo", "Gang4", "Outlaws", "SonsofAnarchy", "Anonymous", "Fazendinha", "Gang5", "Campinho", "Gang3", "Morro-do-Sacola", "Marrons", "Warlocks", "Inglaterra", "Galaxy" } },
            { 'Kingdom', { "Gang2","Tropadu7", "Tribo", "Gang6", "Gang4", "Outlaws", "SonsofAnarchy", "Anonymous", "Fazendinha", "Gang5", "Campinho", "Gang3", "Morro-do-Sacola", "Marrons", "Warlocks", "Galaxy" } },
            { 'Universo', { "Gang2", "Gang5","Anonymous", "Tropadu7", "Tribo", "Gang6", "Gang4", "Outlaws", "SonsofAnarchy", "Fazendinha", "Campinho", "Gang3", "Gang8", "Gang7", "Marrons", "Cinzas", "Azuis", "Warlocks", "Inglaterra", "Galaxy" } },
            { 'Alexandria', { "Gang2", "Gang9", "Tropadu7", "Tribo", "Gang6", "Outlaws", "SonsofAnarchy", "Anonymous", "Fazendinha", "Campinho", "Gang3", "Gang8", "Gang7", "Gang5", "Marrons", "Cinzas", "Azuis", "Warlocks" } },
            { 'Maresia', { "Gang2", "Tropadu7", "Tribo", "Gang6", "Outlaws", "SonsofAnarchy", "Anonymous", "Fazendinha", "Campinho", "Gang3", "Gang8", "Gang7", "Gang5", "Marrons", "Cinzas", "Azuis", "Warlocks", "Galaxy"  } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'polvora', amount = 6 },
            { id = 'capsula', amount = 6 },
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}
