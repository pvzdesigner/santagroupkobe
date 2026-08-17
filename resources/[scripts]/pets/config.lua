-------------------------------------------------------------------------------------------------------------------------
-- SUA LICENÇA
-------------------------------------------------------------------------------------------------------------------------
exports("license", function()
	return 'Sua licença aqui'
end)
-------------------------------------------------------------------------------------------------------------------------

Config = {}

Config.LeaveEvent = 'vRP:playerLeave' -- Evento de saída
Config.JoinEvent = 'vRP:playerJoin' -- Evento de entrada

Config.ServerCallbacks = {} -- Não mexer

PET = {
    -- CONFIGURAÇÃO GERAL
    Mysql = "oxmysql", --oxmysql / ghmattimysql / mysql-async
    ManualMode = true, -- Caso for true, você poderá usar o comando "/pets" de qualquer lugar.
    debugMode = false, -- Ative apenas se souber o que está fazendo
    TvProp = "prop_tv_flat_01", -- Prop do telão de anúncio

    -- FOTOS DO USUÁRIO
    ProfilePhotoType = "steam", -- discord/steam
    NoImage = "https://santaimagens.roleplayrp.com/img/pets/defaultpp.webp", -- imagem padrão para a opção "none"
    DiscordToken = "", -- caso opte na opção acima por "discord", você precisará colocar o token do bot do discord aqui

    -- COMANDOS
    petInfoCommand = "showpetinfo", -- Usado para ativar/desativar as informações do pet na tela
    showPetCommand = "showpetblip", -- Usado para mostrar onde seu pet está no mapa via blip
    outCarCommand = "petoutcar", -- Comando para o pet sair do carro (pode ser usado também via menu do pet)

    -- VALORES PADRÃO
    DefaultPetIMG = "https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/65761296352685.5eac4787a4720.jpg", -- Imagem padrão dos pets
    DefaultPetName = "Pet Daora", -- Se o nome for "", o sistema utilizará esse.
    
    -- ITEM DA BOLA
    petBallItem = "petball",

    -- MORTE
    PermanentlyDie = false, -- Caso seja true, o pet ao morrer, será deletado

    -- ATUALIZAÇÕES
    UpdateInterval = 1, -- "1 minuto" atualizará todas as mortes, fome, sede, localização e muitas outras atualizações dos pets a cada 1 minuto (recomendado não deixar muito alto)
    UpdateXPInterval = 10, -- "1 minuto" A cada 1 minuto todos os pets ganharão uma quantidade definida de XP.
    earnXPAmount = 10, -- Tempo do "UpdateXPInterval" durante o qual todos os pets ganharão XP pelo tempo especificado
    LevelingDifficulty = 20, -- Porcentagem de dificuldade para avançar a idade

    -- FOME E SEDE
    lossOfLife_hungry = 3, -- Seleciona quantas vidas tirar quando a fome chegar a 0.
    lossOfLife_thirst = 1, -- Seleciona quantas vidas tirar quando a sede chegar a 0.
    
    -- BLIP DO showPetCommand
    PetMiniMap = { showblip = true, sprite = 442, colour = 2, shortRange = false },

    -- ATAQUES
    chaseDistance = 50.0,
    chaseIndicator = true, -- huge marker on hunted target head
    petAttackKeyCode = 49, --https://docs.fivem.net/docs/game-references/controls/

    -- TEXTOS
    petAttackKeyCodeDisplay = "APERTE ~p~F~w~ PARA ATACAR ALVO",
    setShopKeyCodeDisplay = "APERTE ~g~E~w~ PARA SETAR A COORDENADA DO SHOP",
    setPetKeyCodeDisplay = "APERTE ~g~E~w~ PARA SETAR A COORDENADA DO PET",

    -- INTERAÇÕES
    petInteractKeyCode = 38, -- [ E ] https://docs.fivem.net/docs/game-references/controls/

    -- ITENS DO SHOP
    ItemData = {
        ["dog"] = {
            {name='bowl', label='Tigela de Aço', price=200, img = "https://santaimagens.roleplayrp.com/img/pets/itembowl.png"},
            {name='petfood', label='Ração Seca', price=150, img = "https://santaimagens.roleplayrp.com/img/pets/dogfood.png"},
            {name='petthirst', label='Ração Premium', price=250, img = "https://santaimagens.roleplayrp.com/img/pets/dogfood2.png"},
            {name='dogfood3', label='Ração Natural', price=300, img = "https://santaimagens.roleplayrp.com/img/pets/dogfood3.png"},
            {name='dogfood4', label='Ração Sem Grãos', price=350, img = "https://santaimagens.roleplayrp.com/img/pets/dogfood4.png"},
            {name='dogfood5', label='Ração Orgânica', price=400, img = "https://santaimagens.roleplayrp.com/img/pets/dogfood5.png"},
        },
        ["cat"] = {
            {name='bowl1', label='Tigela de Cerâmica', price=180, img = "https://santaimagens.roleplayrp.com/img/pets/itembowl.png"},
            {name='catfood1', label='Ração Básica', price=100, img = "https://santaimagens.roleplayrp.com/img/pets/catmama.png"},
            {name='catfood2', label='Ração Deluxe', price=200, img = "https://santaimagens.roleplayrp.com/img/pets/catmama2.png"},
            {name='catfood3', label='Ração Gourmet', price=250, img = "https://santaimagens.roleplayrp.com/img/pets/catmama3.png"},
        },
        ['toys'] = {
            {name='toy1', label='Osso de Borracha', price=90, img = "https://santaimagens.roleplayrp.com/img/pets/itembone.png"},
            {name='toy2', label='Brinquedo de Apito', price=110, img = "https://santaimagens.roleplayrp.com/img/pets/toys1.png"},
            {name='petrope', label='Brinquedo de Mastigar', price=120, img = "https://santaimagens.roleplayrp.com/img/pets/toys2.png"},
            {name='petball', label='Brinquedo Interativo', price=130, img = "https://santaimagens.roleplayrp.com/img/pets/toys3.png"},
            {name='toy5', label='Brinquedo Dental', price=140, img = "https://santaimagens.roleplayrp.com/img/pets/toys4.png"},
            {name='toy6', label='Corda para Puxar', price=150, img = "https://santaimagens.roleplayrp.com/img/pets/toys5.png"},
            {name='toy7', label='Brinquedo de Pelúcia', price=160, img = "https://santaimagens.roleplayrp.com/img/pets/toys6.png"},
            {name='toy8', label='Bolas', price=170, img = "https://santaimagens.roleplayrp.com/img/pets/toys7.png"},
            {name='toy9', label='Lançador de Bola de Tênis', price=180, img = "https://santaimagens.roleplayrp.com/img/pets/toys8.png"},
            {name='toy10', label='Frisbees', price=190, img = "https://santaimagens.roleplayrp.com/img/pets/toys9.png"},
            {name='toy11', label='Lançador de Bolas', price=200, img = "https://santaimagens.roleplayrp.com/img/pets/toys10.png"},
            {name='toy12', label='Brinquedo de Quebra-Cabeças', price=220, img = "https://santaimagens.roleplayrp.com/img/pets/toys11.png"},
        },
        ['health'] = {
            {name='pethealth', label='Kit de Saúde Básico', price=300, img = "https://santaimagens.roleplayrp.com/img/pets/health1.png"},
            {name='pethealth2', label='Kit de Saúde Avançado', price=450, img = "https://santaimagens.roleplayrp.com/img/pets/health2.png"},
            {name='pethealth3', label='Kit de Saúde Premium', price=600, img = "https://santaimagens.roleplayrp.com/img/pets/health3.png"},
            {name='pethealth4', label='Pacote Completo de Cuidados', price=800, img = "https://santaimagens.roleplayrp.com/img/pets/health4.png"},
        },      
    },


    -- LOJA DE PETSHOPS
    ShopsBuyCoords = vector3(730.19,2531.89,73.23),
    Shops = {
        [1] = {
            name = "Animal A68", description = "Um lugar perfeito para encontrar seu novo amigo peludo.",
            level = "Regular", rate = 3,
            neighborhood = "Route 68", street = "Rural",
            img = "https://santaimagens.roleplayrp.com/img/pets/store2.png",
            price = 1000,
            coords = vector3(716.37,2530.05,73.51),
            petscoords = vector4(726.69,2530.62,73.51,134.15),
            shopscoords = vector4(719.85,2520.24,73.51,185.14),
            shopimg = "https://santaimagens.roleplayrp.com/img/pets/dui.png",
        },
        [2] = {
            name = "Animal Ark", description = "Um lugar perfeito para encontrar seu novo amigo peludo.",
            level = "Regular", rate = 2,
            neighborhood = "Rockford Hills", street = "Mad Wayne",
            img = "https://santaimagens.roleplayrp.com/img/pets/store1.png",
            price = 1000,
            coords = vector3(564.6584, 2753.0103, 42.8770),
            petscoords = vector4(564.9654, 2745.9912, 42.8771, 124.9139),
            shopscoords = vector4(561.3677, 2744.6719, 42.8771, 78.8730),
            shopimg = "https://santaimagens.roleplayrp.com/img/pets/dui.png",
        },
        
        [3] = {
            name = "Pet Zone", description = "Adote um amigo fiel e leve para casa um pouco de alegria.",
            level = "Regular", rate = 1,
            neighborhood = "Pillbox Hill", street = "Elgin Ave",
            img = "https://santaimagens.roleplayrp.com/img/pets/store3.png",
            price = 3000,
            coords = vector3(220.72, -867.02, 30.492),
            petscoords = vector4(222.88, -865.45, 30.492, 180.0),
            shopscoords = vector4(561.3677, 2744.6719, 42.8771, 78.8730),
            shopimg = "https://santaimagens.roleplayrp.com/img/pets/dui.png",
        },
    },
    
    -- PETS DISPONÍVEIS
    AvailablePets = {
        ["Dogs"] = {
            [1] = {
                id = 1, job = "", price = 10000, hungryRatio = 20, thirstRatio = 50, energyRatio = 70, healthRatio = 95, petAge = 1,
                hungryDecrase = 4, thirstDecrase = 4,
                petName = "Rottweiler", petNickName = "Protetor",
                petLabel = "Eles são grandes, fortes e apesar da cara de mau são cães muito amorosos e extremamente apegados aos seus humanos. Trata-se de uma raça muito antiga, afinal os antecessores dos Rottweilers acompanhavam as legiões romanas pelos longos caminhos que percorriam.",
                petIMG = "https://www.petlove.com.br/https://santaimagens.roleplayrp.com/img/pets/breeds/193099/profile/original/rottweiler-p.jpg?1532539428",
                pedHash = "a_c_chop", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/rottweiler.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 1, list = true, addXP = 10
            },
            [2] = {
                id = 2, job = "", price = 9000, hungryRatio = 30, thirstRatio = 80, energyRatio = 70, healthRatio = 85, petAge = 4,
                hungryDecrase = 3, thirstDecrase = 2,
                petName = "Westy Terrier", petNickName = "Amigo Leal",
                petLabel = "O West Terrier é um cão que adora brincar e se divertir, por isso, precisa gastar todas as energias que tem (e são muitas!). A raça adora cavar, pular, correr e caçar, então passeios e brincadeiras são atividades ideais para colocar o cachorro para se exercitar.",
                petIMG = "https://cdn.britannica.com/16/236916-050-8B879535/West-Highland-white-terrier-dog.jpg", 
                pedHash = "a_c_westy_2", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = false,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/westy.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 1, list = true, addXP = 20
            },
            [3] = {
                id = 3, job = "", price = 6500, hungryRatio = 10, thirstRatio = 20, energyRatio = 50, healthRatio = 98, petAge = 5,
                hungryDecrase = 5, thirstDecrase = 5,
                petName = "Golden Retriever", petNickName = "Herói Dourado",
                petLabel = "O Golden Retriever é conhecido como um dos cachorros mais dóceis e companheiros que existe na atualidade. Ele é conhecido por ser naturalmente devoto à família, sempre gostando de agradar àqueles que ama.",
                petIMG = "https://www.petlove.com.br/https://santaimagens.roleplayrp.com/img/pets/breeds/193223/profile/original/golden_retriever-p.jpg?1532539102",
                pedHash = "A_C_Retriever_2", petTexureID = 0, petGender = "M", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/retriever.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 3, list = true, addXP = 30
            },
            [4] = {
                id = 4, job = "", price = 1000, hungryRatio = 80, thirstRatio = 20, energyRatio = 40, healthRatio = 50, petAge = 6,
                hungryDecrase = 2, thirstDecrase = 2,
                petName = "Pug", petNickName = "Nariz Curto",
                petLabel = "O Pug é um cachorro extremamente amigável, convivendo muito bem com crianças e outros animais de estimação. Muito amoroso e apegado aos tutores, ele se contenta apenas com o fato de ser parte de uma família!",
                petIMG = "https://www.petlove.com.br/https://santaimagens.roleplayrp.com/img/pets/breeds/192469/profile/original/pug-p.jpg?1532539387",
                pedHash = "a_c_pug", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = false,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/pug.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 2, list = true, addXP = 40
            },
            [5] = {
                id = 5, job = "", price = 5000, hungryRatio = 10, thirstRatio = 50, energyRatio = 30, healthRatio = 70, petAge = 5,
                hungryDecrase = 4, thirstDecrase = 2,
                petName = "Bulldog", petNickName = "Bolota",
                petLabel = "O Bulldog é uma das raças mais antigas, conhecida por suas características físicas distintas e natureza leal. Originalmente usado em lutas com touros, o Bulldog simboliza coragem e resiliência. Hoje, é um animal de estimação amado, valorizado por seu comportamento gentil e afetuoso.",
                petIMG = "https://www.thesprucepets.com/thmb/eQ1cC75tGlirBUUvnpahfagIvwQ=/750x0/filters:no_upscale():max_bytes(150000):strip_icc():format(webp)/bulldog-4584344-05-b05974de04be496aac87ff43f104b428.jpg",
                pedHash = "ft-fbulldog", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/bulldog.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 5, list = true, addXP = 60
            },
            [6] = {
                id = 6, job = "", price = 2000, hungryRatio = 30, thirstRatio = 80, energyRatio = 70, healthRatio = 90, petAge = 3,
                hungryDecrase = 3, thirstDecrase = 1,
                petName = "Greyhound", petNickName = "Corredor",
                petLabel = "O Greyhound é uma das raças mais antigas, conhecida por sua velocidade e visão aguçada. Renomados por suas habilidades de caça e corrida, são símbolos de graça e agilidade. Hoje, são companheiros gentis e afetuosos, admirados por sua aparência elegante.",
                petIMG = "https://cdn.britannica.com/97/235397-050-6964F653/Greyhound-dog.jpg",
                pedHash = "ft_greyhound", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/greyhound.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 5, list = true, addXP = 60
            },
            [7] = {
                id = 7, job = "", price = 3500, hungryRatio = 50, thirstRatio = 60, energyRatio = 40, healthRatio = 90, petAge = 5,
                hungryDecrase = 1, thirstDecrase = 2,
                petName = "Husky Siberiano", petNickName = "Nevasca",
                petLabel = "Os Huskys não são do tipo preguiçosos. A condição física é uma das virtudes desses pets. Portanto, não imagine que o cachorro ficará no seu colo por horas e horas, o negócio desta raça é praticar exercícios físicos.",
                petIMG = "https://blog.polipet.com.br/wp-content/uploads/2022/08/AdobeStock_100800827-445x445.jpeg",
                pedHash = "A_C_Husky_2", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/husky.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 8, list = true, addXP = 60
            },
            [8] = {
                id = 8, job = "", price = 7000, hungryRatio = 10, thirstRatio = 50, energyRatio = 90, healthRatio = 90, petAge = 6,
                hungryDecrase = 1, thirstDecrase = 1,
                petName = "Pastor Alemão", petNickName = "Einstein",
                petLabel = "Certamente um dos cães mais elegantes e ativos que existem, o Pastor-alemão pode ter uma fama de bravo, mas é, na verdade, um grande amigo da família. Com o treinamento correto, todas as características cativantes deste pet vêm à tona — e não são poucas!",
                petIMG = "https://www.petlove.com.br/https://santaimagens.roleplayrp.com/img/pets/breeds/193103/profile/original/pastor_alemao-p.jpg?1532539270",
                pedHash = "A_C_shepherd_2", petTexureID = 0, petGender = "M", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/shepherd.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 10, list = true, addXP = 60
            },
            [9] = {
                id = 9, job = "", price = 8000, hungryRatio = 25, thirstRatio = 35, energyRatio = 40, healthRatio = 80, petAge = 1,
                hungryDecrase = 1, thirstDecrase = 1,
                petName = "Poodle", petNickName = "Mimadinho",
                petLabel = "O cachorro Poodle possui muitas particularidades. Um dos seus maiores reconhecimentos é a sua inteligência: a raça está em segundo lugar no ranking. Somado esse talento à sua tradicional pelagem encaracolada, o cãozinho se tornou um dos mais famosos do Brasil e do mundo.",
                petIMG = "https://vidanimal.com.br/wp-content/uploads/poodle3.jpg",
                pedHash = "a_c_poodle_2", petTexureID = 0, petGender = "F", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/poodle.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 20, list = true, addXP = 60
            },
            [10] = {
                id = 10, job = "", price = 6000, hungryRatio = 80, thirstRatio = 80, energyRatio = 95, healthRatio = 100, petAge = 2,
                hungryDecrase = 3, thirstDecrase = 3,
                petName = "Cane Corso", petNickName = "Floco",
                petLabel = "O cachorro Poodle possui muitas particularidades. Um dos seus maiores reconhecimentos é a sua inteligência: a raça está em segundo lugar no ranking. Somado esse talento à sua tradicional pelagem encaracolada, o cãozinho se tornou um dos mais famosos do Brasil e do mundo.",
                petIMG = "https://www.petlove.com.br/https://santaimagens.roleplayrp.com/img/pets/breeds/197825/profile/original/cane-corso-p.jpg?1532539702",
                pedHash = "canecorso", petTexureID = 0, petGender = "M", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/canecorso.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 15, list = true, addXP = 60
            },
            [11] = {
                id = 11, job = "", price = 4000, hungryRatio = 70, thirstRatio = 70, energyRatio = 80, healthRatio = 90, petAge = 1,
                hungryDecrase = 2, thirstDecrase = 2,
                petName = "Doberman", petNickName = "Tarzan",
                petLabel = "O cachorro Poodle possui muitas particularidades. Um dos seus maiores reconhecimentos é a sua inteligência: a raça está em segundo lugar no ranking. Somado esse talento à sua tradicional pelagem encaracolada, o cãozinho se tornou um dos mais famosos do Brasil e do mundo.",
                petIMG = "https://www.petlove.com.br/https://santaimagens.roleplayrp.com/img/pets/breeds/197821/profile/original/doberman-p.jpg?1532539745",
                pedHash = "doberman", petTexureID = 0, petGender = "M", petLevel = 1, petBoughtAnim = true,
                listOf = "Dogs", img = "https://santaimagens.roleplayrp.com/img/pets/doberman.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 20, list = true, addXP = 60
            },
        },
        ["Cat"] = {
            [1] = {
                id = 1, job = "", price = 3000, hungryRatio = 10, thirstRatio = 20, energyRatio = 50, healthRatio = 98,
                hungryDecrase = 1, thirstDecrase = 1, petAge = 10,
                petName = "Siamês", petNickName = "Garfield",
                petLabel = "O gato doméstico é um pequeno mamífero carnívoro, geralmente peludo. Mantidos como animais de estimação, eles são valorizados pela companhia e habilidade de caçar pragas domésticas.",
                petIMG = "https://d2zp5xs5cp8zlg.cloudfront.net/image-79322-800.jpg", 
                pedHash = "a_c_cat_01", petTexureID = 0, petGender = "M", petBoughtAnim = true, petLevel = 1,
                listOf = "Cat", img = "https://santaimagens.roleplayrp.com/img/pets/siames.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 1, list = true, addXP = 70
            },
            [2] = {
                id = 2, job = "", price = 5000, hungryRatio = 10, thirstRatio = 20, energyRatio = 50, healthRatio = 98,
                hungryDecrase = 1, thirstDecrase = 1, petAge = 10,
                petName = "Sphynx", petNickName = "Roedor",
                petLabel = "O Sphynx é uma raça de gato conhecida por sua aparência única e ausência de pelos. Apesar de seu visual exótico, é extremamente afetuoso, sociável e adora atenção, sendo um excelente companheiro para a família.",
                petIMG = "https://static.ric.com.br/uploads/2021/05/pexels-photo-991831.jpeg", 
                pedHash = "sphynx", petTexureID = 0, petGender = "M", petBoughtAnim = true, petLevel = 1,
                listOf = "Cat", img = "https://santaimagens.roleplayrp.com/img/pets/sphynx.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 5, list = true, addXP = 100
            },
            [3] = {
                id = 2, job = "", price = 5000, hungryRatio = 10, thirstRatio = 20, energyRatio = 50, healthRatio = 98,
                hungryDecrase = 1, thirstDecrase = 1, petAge = 10,
                petName = "Rajah", petNickName = "Roedor",
                petLabel = "O Rajah é uma raça de gato conhecida por sua aparência única e ausência de pelos. Apesar de seu visual exótico, é extremamente afetuoso, sociável e adora atenção, sendo um excelente companheiro para a família.",
                petIMG = "https://static.ric.com.br/uploads/2021/05/pexels-photo-991831.jpeg", 
                pedHash = "Rajah", petTexureID = 0, petGender = "M", petBoughtAnim = true, petLevel = 1,
                listOf = "Cat", img = "images/Rajah.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 5, list = true, addXP = 100
            },
            [4] = {
                id = 2, job = "", price = 5000, hungryRatio = 10, thirstRatio = 20, energyRatio = 50, healthRatio = 98,
                hungryDecrase = 1, thirstDecrase = 1, petAge = 10,
                petName = "Tigor", petNickName = "Roedor",
                petLabel = "O Tigor é uma raça de gato conhecida por sua aparência única e ausência de pelos. Apesar de seu visual exótico, é extremamente afetuoso, sociável e adora atenção, sendo um excelente companheiro para a família.",
                petIMG = "https://static.ric.com.br/uploads/2021/05/pexels-photo-991831.jpeg", 
                pedHash = "Tigor", petTexureID = 0, petGender = "M", petBoughtAnim = true, petLevel = 1,
                listOf = "Cat", img = "images/Tigor.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 5, list = true, addXP = 100
            },
            [5] = {
                id = 2, job = "", price = 5000, hungryRatio = 10, thirstRatio = 20, energyRatio = 50, healthRatio = 98,
                hungryDecrase = 1, thirstDecrase = 1, petAge = 10,
                petName = "LoboSirius", petNickName = "Roedor",
                petLabel = "O LoboSirius é uma raça de gato conhecida por sua aparência única e ausência de pelos. Apesar de seu visual exótico, é extremamente afetuoso, sociável e adora atenção, sendo um excelente companheiro para a família.",
                petIMG = "https://static.ric.com.br/uploads/2021/05/pexels-photo-991831.jpeg", 
                pedHash = "LoboSirius", petTexureID = 0, petGender = "M", petBoughtAnim = true, petLevel = 1,
                listOf = "Cat", img = "images/LoboSirius.png",
                petHungryLevel = 100, petThirstLevel = 100, petHealthLevel = 100, petXP = 0, lastXP = 100,
                requiredLevel = 5, list = true, addXP = 100
            },
        },
    },
    
    -- ANIMAÇÕES GERAIS (não mexer se não souber o que está fazendo)
    RandomAnim = {
        ["dog"] = {
            {animName = "creatures@rottweiler@amb@world_dog_sitting@idle_a", animID = "idle_b"},
            {animName = "creatures@rottweiler@amb@world_dog_barking@idle_a", animID = "idle_a"},
            {animName = "creatures@rottweiler@amb@sleep_in_kennel@", animID = "sleep_in_kennel"}
        },
        ["cat"] = {
            {animName = "creatures@cat@amb@world_cat_sleeping_ground@base", animID = "base"},
            {animName = "creatures@cat@amb@world_cat_sleeping_ledge@base", animID = "base"}
        },
        ["bird"] = {
            {animName = "creatures@chickenhawk@amb@world_chickenhawk_feeding@base", animID = "base"},
            {animName = "creatures@cormorant@amb@world_cormorant_standing@base", animID = "base"}
        },
        ["coguar"] = {
            {animName = "creatures@cougar@amb@world_cougar_rest@idle_a", animID = "idle_a"}, -- rest
            {animName = "creatures@cougar@getup", animID = "idle_a"} -- getup
        }
    },

    -- CONFIGURAÇÕES DE NÍVEIS
    Levels = {
        [1] = {level = 1, xp = 0},
        [2] = {level = 2, xp = 100},
        [3] = {level = 3, xp = 200},
        [4] = {level = 4, xp = 300},
        [5] = {level = 5, xp = 400},
        [6] = {level = 6, xp = 500},
        [7] = {level = 7, xp = 600},
        [8] = {level = 8, xp = 700},
        [9] = {level = 9, xp = 800},
        [10] = {level = 10, xp = 900},
        [11] = {level = 11, xp = 1000},
        [12] = {level = 12, xp = 1100},
        [13] = {level = 13, xp = 1200},
        [14] = {level = 14, xp = 1300},
        [15] = {level = 15, xp = 1400},
        [16] = {level = 16, xp = 1500},
        [17] = {level = 17, xp = 1600},
        [18] = {level = 18, xp = 1700},
        [19] = {level = 19, xp = 1800},
        [20] = {level = 20, xp = 1900}
    },
    
    -- AÇÕES DO PET (não mexer se não souber o que está fazendo)
    Orders = {
        { label = "SEGUIR", listOf = { "Cat", "Dogs" }, args = "pets:client:followOwner", level = 0, dotStyle = "left:14.5rem;", textStyle = "left:15.5rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/follow.png' },
        { label = "SENTAR", listOf = { "Cat", "Dogs" }, args = "pets:client:sit", level = 0, dotStyle = "left:18rem;", textStyle = "left:19rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/sit.png' },
        { label = "LEVANTAR", listOf = { "Cat", "Dogs" }, args = "pets:client:getup", level = 0, dotStyle = "left:15.5rem;", textStyle = "left:16.5rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/bark.png' },
        { label = "DORMIR", listOf = { "Cat", "Dogs" }, args = "pets:client:sleep", level = 0, dotStyle = "left:16rem;", textStyle = "left:17rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/sleep.png' },
        { label = "GUARDAR", listOf = { "Cat", "Dogs" }, args = "pets:client:backPet", level = 0, dotStyle = "left:15rem;", textStyle = "left:16rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/attack.png' },
        { label = "ENTRAR CARRO", listOf = { "Cat", "Dogs" }, args = "pets:client:getIntoCar", level = 0, dotStyle = "left:14rem;", textStyle = "left:15rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/bark.png' },
        { label = "SAIR CARRO", listOf = { "Cat", "Dogs" }, args = "pets:client:getOutCar", level = 0, dotStyle = "left:14rem;", textStyle = "left:15rem;", svg = 'https://santaimagens.roleplayrp.com/img/pets/bark.png' },
    },

    -- ANIMAÇÕES DE AÇÕES (não mexer se não souber o que está fazendo)
    OrderAnim = {
        ["Dogs"] = {
            ["sex"] = { animName = "creatures@rottweiler@amb@", animID = "hump_loop_chop" },
            ["sit"] = { animName = "creatures@rottweiler@amb@world_dog_sitting@idle_a", animID = "idle_b" },
            ["bark"] = { animName = "creatures@rottweiler@amb@world_dog_barking@idle_a", animID = "idle_a" },
            ["sleep"] = { animName = "creatures@rottweiler@amb@sleep_in_kennel@", animID = "sleep_in_kennel" },
            ["getup"] = { animName = "creatures@rottweiler@amb@world_dog_sitting@exit", animID = "exit" }
        },
        ["Cat"] = {
            ["sleep"] = { animName = "creatures@cat@amb@world_cat_sleeping_ground@base", animID = "base" },
            ["getup"] = { animName = "creatures@cat@getup", animID = "getup_l" },
            ["sit"] = { animName = "creatures@cat@amb@world_cat_sleeping_ledge@base", animID = "base" }
        }
    },
    overWriteAnimationsByModel = {
        ['a_c_pug'] = {
            ["sleep"] = {
                animName = "creatures@pug@move",
                animID = "dead_left"
            },
        },
        ['a_c_poodle_2'] = {
            ["sleep"] = {
                animName = "creatures@pug@move",
                animID = "dead_left"
            },
        },
    }
}

-- TRADUÇÂO
Locales = {
    levelUP = "Seu pet subiu de nível: ",
    NotFoundAnyAnimal = "Nenhum pet encontrado por perto.",
    HealToAnimal = "Você conseguiu colocar seu animal de pé novamente!",
    NoAnimal = "Você não tem nenhum animal.",
    AnimalHealthMax = "Seu animal já está com a saúde cheia!",
    HungryToAnimal = "Você alimentou seu pet com sucesso!",
    AnimalHungryMax = "A fome do seu animal está quase cheia!",
    vehicleSeatFull = "Assento do carro está cheio",
    canNotAttack = "Este tipo de animal não é adequado para ataque",
    notSuported = "Erro de sistema"
}
