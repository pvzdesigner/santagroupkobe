DEFINE_MINIGAME 'minigame_routes__meth__north' {

    displayName = 'Rota de Metafetamina (Norte)',

    points = MINIGAME_ROUTES__POINTS__NORTH,

    distance = MINIGAME_ROUTES__DISTANCE,

    flags = MINIGAME_ROUTES__FLAGS,

    isAllowed =
    {
        groups = SWITCH(cityName, {
            { 'Santa', { "Vagos", "Umbrella", "AlcateiaHsT", "Afetados", "Pinkmans", "Hollywood", "Brancos" } },
            { 'CidadeNobre', { "Vermelhos", "Gang6", "Vagos", "Callisto", "Azuis", "Umbrella", "LaMafia", "Afetados", "Hollywood", "Amarelos", "AlcateiaHsT" } },
            { 'Caravelas', { "Vermelhos", "Luxor","Overdrive", "Gang6", "Vagos", "Callisto", "Azuis", "Umbrella", "LaMafia", "Afetados", "Cinzas", "Pinkmans", "Hollywood", "Amarelos", "AlcateiaHsT" } },
            { 'Kingdom', { "Vagos", "Azuis", "Umbrella", "LaMafia", "Afetados", "Cinzas", "Pinkmans", "Hollywood", "Amarelos", "AlcateiaHsT" } },
            { 'Universo', { "Vagos", "LaMafia", "Umbrella", "Metgala", "Afetados", "Pinkmans", "Hollywood", "Amarelos", "AlcateiaHsT" } },
            { 'Alexandria', { "Vagos", "LaMafia", "Umbrella", "Afetados", "Pinkmans", "Metgala", "Hollywood", "Amarelos", "AlcateiaHsT" } },
            { 'Maresia', { "Vagos", "LaMafia", "Umbrella", "Afetados", "Pinkmans", "Metgala", "Hollywood", "Amarelos", "AlcateiaHsT" } }
        })
    },

    duration = MINIGAME_ROUTES__DURATION,

    rewards =
    {
        item =
        {
            { id = 'saline' , amount = 6 },
            { id = 'acetone', amount = 6 },
        }
    },

    hooks =
    {
        beforeComputeRewards = CommonBeforeComputeRewards,
    }
}