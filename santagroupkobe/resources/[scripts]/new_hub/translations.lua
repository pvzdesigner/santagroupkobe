lang = GetConvar("language", "pt-br") or "pt-br"

translations = {
    ["en-us"] = {
        ["group_1"] = "🔂 DAILY",
        ["group_2"] = "🎯 ACHIEVEMENTS",
        ["group_3"] = "⭐ POPULARITY",
        ["group_4"] = "🔥 OTHER",
        ["group_5"] = "💰 COMMERCIAL",
        ["group_6"] = "👑 LEGENDARY",
        
        ["achievement_1_name"] = "⏳ Connected for more than 1 hour (Today)",
        ["achievement_1_description"] = "Stay connected for more than 1 hour today to complete this mission.",
        
        ["achievement_2_name"] = "⏳ Connected for more than 2 hours (Today)",
        ["achievement_2_description"] = "Stay connected for more than 2 hours today to complete this mission.",
        
        ["achievement_3_name"] = "⏳ Connected for more than 5 hours (Today)",
        ["achievement_3_description"] = "Stay connected for more than 5 hours today to complete this mission.",
        
        ["achievement_4_name"] = "⏳ Connected for more than 8 hours (Today)",
        ["achievement_4_description"] = "Stay connected for more than 8 hours today to complete this mission.",
        
        ["achievement_5_name"] = "⏳ Play for more than 12 hours (Today)",
        ["achievement_5_description"] = "Stay connected for more than 12 hours today to complete this mission.",
        
        ["achievement_6_name"] = "📦 Deliver 1000x FARM",
        ["achievement_6_description"] = "Deliver 1000x using the /FARM command",
        
        ["achievement_7_name"] = "📦 Deliver 2000x FARM",
        ["achievement_7_description"] = "Deliver 2000x using the /FARM command",
        
        ["achievement_8_name"] = "📦 Deliver 5000x FARM",
        ["achievement_8_description"] = "Deliver 5000x using the /FARM command",
        
        ["achievement_9_name"] = "🤑 Get a job",
        ["achievement_9_description"] = "Be recruited by a legal or illegal organization",
        
        ["achievement_10_name"] = "🏎️ First Million Vehicle",
        ["achievement_10_description"] = "Buy your first vehicle worth over 1 million.",
        
        ["achievement_11_name"] = "🏠 Buy First House",
        ["achievement_11_description"] = "Buy your first house in the city.",
        
        ["achievement_12_name"] = "💸 First Million",
        ["achievement_12_description"] = "Have more than 1 million deposited in the bank.",
        
        ["achievement_13_name"] = "💸 Multimillionaire",
        ["achievement_13_description"] = "Have more than 5 million deposited in the bank.",
        
        ["achievement_14_name"] = "💸 Young and Wealthy",
        ["achievement_14_description"] = "Have more than 10 million deposited in the bank.",
        
        ["achievement_15_name"] = "💸 Loan Shark ON",
        ["achievement_15_description"] = "Have more than 50 million deposited in the bank.",
        
        ["achievement_16_name"] = "💸💸 Forbes List",
        ["achievement_16_description"] = "Have more than 100 million deposited in the bank.",
        
        ["achievement_17_name"] = "⭐ Good Habits",
        ["achievement_17_description"] = "Give a like to someone",
        
        ["achievement_18_name"] = "⭐ First Step to Fame",
        ["achievement_18_description"] = "Receive a like from someone",
        
        ["achievement_19_name"] = "⭐ Neighborhood Friend",
        ["achievement_19_description"] = "Receive 50 likes",
        
        ["achievement_20_name"] = "⭐ Top of the Tiktok",
        ["achievement_20_description"] = "Receive 100 likes",
        
        ["achievement_21_name"] = "⭐ Tiktok Celebrity",
        ["achievement_21_description"] = "Receive 300 likes",
        
        ["achievement_22_name"] = "⭐ Media Star",
        ["achievement_22_description"] = "Receive 500 likes",
        
        ["achievement_23_name"] = "⭐ Viral Superstar",
        ["achievement_23_description"] = "Receive 1000 likes",
        
        ["achievement_24_name"] = "⭐ On National TV",
        ["achievement_24_description"] = "Receive 2000 likes",
        
        ["achievement_25_name"] = "⭐⭐ More Famous than Neymar",
        ["achievement_25_description"] = "Receive 3000 likes",
        
        ["achievement_26_name"] = "✅ Whitelist (20Hrs On)",
        ["achievement_26_description"] = "Play for 20 hours",
        
        ["achievement_27_name"] = "✅ Decided to Stay",
        ["achievement_27_description"] = "Play for 72 hours",
        
        ["achievement_28_name"] = "✅ City Guardian",
        ["achievement_28_description"] = "Play for 720 hours",
        
        ["achievement_29_name"] = "✅ City Veteran",
        ["achievement_29_description"] = "Play for 1500 hours",
        
        ["achievement_30_name"] = "✅ Grandfather's Friend",
        ["achievement_30_description"] = "Play for 2500 hours",
        
        ["achievement_31_name"] = "💰 Grand Entrance",
        ["achievement_31_description"] = "Make your first purchase in the VIP store",
        
        ["achievement_32_name"] = "💰 Respect the Boss",
        ["achievement_32_description"] = "Spend more than R$ 200 in the VIP Store",
        
        ["achievement_33_name"] = "💰 High Roller",
        ["achievement_33_description"] = "Spend more than R$ 1000 in the VIP Store",
        
        ["achievement_34_name"] = "👑 VIP Customer",
        ["achievement_34_description"] = "Spend more than R$ 5000 in the VIP Store",
        
        ["achievement_35_name"] = "👑 Black Card Holder",
        ["achievement_35_description"] = "Spend more than R$ 20000 in the VIP Store",
        
        ["achievement_36_name"] = "👑 Ultimate Spender",
        ["achievement_36_description"] = "Spend more than R$ 50000 in the VIP Store",
        
        ["achievement_37_name"] = "👑 Old School",
        ["achievement_37_description"] = "Joined us in Season 1 or 2",

        ["settings"] = "Settings",
        ["battlePass"] = "Battle Pass",

        ["battlepass.congratulations"] = "Congratulations",
        ["battlepass.received"] = "You received",

        ["panel"] = "panel",

        ["notify.redeem.title"] = "Redeem",
        ["notify.redeem.already_in_progress"] = "You are already redeeming a pass, please wait for the process to finish",
        ["notify.redeem.received_item"] = "You received %s x%d",
        ["notify.redeem.received_vehicle"] = "You received vehicle %s",
        ["notify.redeem.received_group"] = "You received group %s",
        ["notify.redeem.received_garage"] = "You received %d garage(s)",
        ["notify.redeem.received_gems"] = "You received %d gem(s)",
        ["notify.redeem.received_skin"] = "You received skin %s",
        
        ["notify.battlepass.ongoing_reward"] = "You are already redeeming rewards",
        ["notify.battlepass.reset_pass"] = "Reset pass of user %s",
        ["notify.battlepass.reset_pass_no_perm"] = "You don't have permission to reset passes",
        ["notify.battlepass.pass_not_found"] = "Pass not found",
        ["notify.battlepass.set_pass"] = "Set pass of user %s to level %d with experience %d",
        ["notify.battlepass.level_up"] = "You reached level %d",

        ["keyboard.event.icon"] = "Icon:",
        ["keyboard.event.date"] = "Date (yyyy-mm-dd hh:mm:ss):",
        ["keyboard.event.description"] = "Description:",
        ["keyboard.event.coords"] = "Coordinates (x,y,z):",
        ["acceptPhoneRequest"] = "%s %s wants to see your phone number, do you accept?",
        ["acceptGroupRequest"] = "%s %s wants to see your group, do you accept?",
        ["notify.saveInfos.title"] = "Save Infos",
        ["notify.saveInfos.message"] = "Your information has been saved",
        ["notify.createEvent.title"] = "Create Event",
        ["notify.createEvent.message"] = "Event created successfully",

        ["relationship_1"] = "Dating",
        ["relationship_2"] = "Engaged",
        ["relationship_3"] = "Married",

        ["relationshipRequest"] = "%s %s wants to date you, do you accept?",
        ["relationshipRequest_2"] = "%s %s wants to get engaged with you, do you accept?",
        ["relationshipRequest_3"] = "%s %s wants to get married with you, do you accept?",
        ["yes"] = "Yes",
        ["no"] = "No",
        ["promotion_type"] = "Promotion Type",
        ["monthly_vip"] = "Monthly VIP",
        ["flash_offer"] = "Flash Offer",
        ["exclusive_link"] = "Exclusive Link",
        ["monthly_vip_name"] = "Monthly VIP Name",
        ["monthly_vip_coupon"] = "Monthly VIP Coupon",
        ["monthly_vip_description"] = "Monthly VIP Description",
        ["monthly_vip_validity"] = "Monthly VIP Validity",
        ["monthly_vip_link"] = "Monthly VIP Link",
        ["monthly_vip_image"] = "Monthly VIP Image",
        ["flash_offer_title"] = "Flash Offer Title",
        ["flash_offer_subtitle"] = "Flash Offer Subtitle",
        ["flash_offer_product"] = "Flash Offer Product",
        ["flash_offer_old_price"] = "Flash Offer Old Price",
        ["flash_offer_price"] = "Flash Offer Price",
        ["flash_offer_duration"] = "Flash Offer Duration",
        ["flash_offer_link"] = "Flash Offer Link",
        ["flash_offer_image"] = "Flash Offer Image",
        ["exclusive_link_url"] = "Exclusive Link URL",
        ["battlepass_info"] = "BattlePass Info",
        ["battlepass_image"] = "BattlePass Image",
        ["battlepass_name"] = "BattlePass Name",
        ["battlepass_description"] = "BattlePass Description",
        ["battlepass_url_button"] = "BattlePass URL Button",
        
    },
    ["pt-br"] = {
        ["group_1"] = "🔂 DIÁRIO",
        ["group_2"] = "🎯 CONQUISTAS",
        ["group_3"] = "⭐ POPULARIDADE",
        ["group_4"] = "🔥 OUTROS",
        ["group_5"] = "💰 COMERCIAL",
        ["group_6"] = "👑 LENDÁRIOS",
        
        ["achievement_1_name"] = "⏳ Conectado por + de 1 hora (Hoje)",
        ["achievement_1_description"] = "Fique conectado por + de 1 hora hoje para completar essa missão.",
        
        ["achievement_2_name"] = "⏳ Conectado por + de 2 horas (Hoje)",
        ["achievement_2_description"] = "Fique conectado por + de 2 horas hoje para completar essa missão.",
        
        ["achievement_3_name"] = "⏳ Conectado por + de 5 horas (Hoje)",
        ["achievement_3_description"] = "Fique conectado por + de 5 horas hoje para completar essa missão.",
        
        ["achievement_4_name"] = "⏳ Conectado por + de 8 horas (Hoje)",
        ["achievement_4_description"] = "Fique conectado por + de 8 horas hoje para completar essa missão.",
        
        ["achievement_5_name"] = "⏳ Jogue por + de 12 horas (Hoje)",
        ["achievement_5_description"] = "Fique conectado por + de 12 horas hoje para completar essa missão.",
        
        ["achievement_6_name"] = "📦 Entregue 1000x de FARM",
        ["achievement_6_description"] = "Entregue 1000x no comando /FARM",
        
        ["achievement_7_name"] = "📦 Entregue 2000x de FARM",
        ["achievement_7_description"] = "Entregue 2000x no comando /FARM",
        
        ["achievement_8_name"] = "📦 Entregue 5000x de FARM",
        ["achievement_8_description"] = "Entregue 5000x no comando /FARM",
        
        ["achievement_9_name"] = "🤑 Consiga um emprego",
        ["achievement_9_description"] = "Seja recrutado para uma organização legal ou ilegal",
        
        ["achievement_10_name"] = "🏎️ 1ª Nave (+1 Milhão)",
        ["achievement_10_description"] = "Compre seu primeiro veículo de + de 1 milhão.",
        
        ["achievement_11_name"] = "🏠 Compre Primeira Casa",
        ["achievement_11_description"] = "Compre sua primeira casa na cidade.",
        
        ["achievement_12_name"] = "💸 Primeiro Milhão",
        ["achievement_12_description"] = "Tenha + de 1 Milhão depositado no banco.",
        
        ["achievement_13_name"] = "💸 Multimilionário",
        ["achievement_13_description"] = "Tenha + de 5 Milhões depositados no banco.",
        
        ["achievement_14_name"] = "💸 Rico bem novinho",
        ["achievement_14_description"] = "Tenha + de 10 Milhões depositados no banco.",
        
        ["achievement_15_name"] = "💸 Agiota ON",
        ["achievement_15_description"] = "Tenha + de 50 Milhões depositados no banco.",
        
        ["achievement_16_name"] = "💸💸 Lista da Forbes",
        ["achievement_16_description"] = "Tenha + de 100 Milhões depositados no banco.",
        
        ["achievement_17_name"] = "⭐ Bons Costumes",
        ["achievement_17_description"] = "Dê um like em alguém",
        
        ["achievement_18_name"] = "⭐ Primeiro passo para a fama",
        ["achievement_18_description"] = "Receba um like de alguém",
        
        ["achievement_19_name"] = "⭐ Amigo da Vizinhança",
        ["achievement_19_description"] = "Consiga 50 likes",
        
        ["achievement_20_name"] = "⭐ Porque choras, Caio Castro?",
        ["achievement_20_description"] = "Consiga 100 Likes",
        
        ["achievement_21_name"] = "⭐ Famosinho do Tiktok",
        ["achievement_21_description"] = "Consiga 300 Likes",
        
        ["achievement_22_name"] = "⭐ Muita Mídia",
        ["achievement_22_description"] = "Consiga 500 Likes",
        
        ["achievement_23_name"] = "⭐ Estourado, Esqueece!",
        ["achievement_23_description"] = "Consiga 1000 Likes",
        
        ["achievement_24_name"] = "⭐ Mãe to na Globo",
        ["achievement_24_description"] = "Consiga 2000 Likes",
        
        ["achievement_25_name"] = "⭐⭐ Mais famoso que o Neymar",
        ["achievement_25_description"] = "Consiga 3000 Likes",
        
        ["achievement_26_name"] = "✅ Whitelist (20Hrs On)",
        ["achievement_26_description"] = "Jogue por 20 horas",
        
        ["achievement_27_name"] = "✅ Resolvi Ficar",
        ["achievement_27_description"] = "Jogue por 72 horas",
        
        ["achievement_28_name"] = "✅ Fechamento da Cidade",
        ["achievement_28_description"] = "Jogue por 720 horas",
        
        ["achievement_29_name"] = "✅ Antigo de Casa",
        ["achievement_29_description"] = "Jogue por 1500 horas",
        
        ["achievement_30_name"] = "✅ Amigo do Vovô",
        ["achievement_30_description"] = "Jogue por 2500 horas",
        
        ["achievement_31_name"] = "💰 Cheguei chegando...",
        ["achievement_31_description"] = "Faça sua primeira compra na loja vip",
        
        ["achievement_32_name"] = "💰 Respeita o Pai",
        ["achievement_32_description"] = "Gaste + de R$ 200 na Loja Vip",
        
        ["achievement_33_name"] = "💰 Tigrinho ta Pagando...",
        ["achievement_33_description"] = "Gaste + de R$ 1000 na Loja Vip",
        
        ["achievement_34_name"] = "👑 Cliente Especial",
        ["achievement_34_description"] = "Gaste + de R$ 5000 na Loja Vip",
        
        ["achievement_35_name"] = "👑 Cliente Black",
        ["achievement_35_description"] = "Gaste + de R$ 20000 na Loja Vip",
        
        ["achievement_36_name"] = "👑 Real Pai das Notas",
        ["achievement_36_description"] = "Gaste + de R$ 50000 na Loja Vip",
        
        ["achievement_37_name"] = "👑 Velhos Tempos",
        ["achievement_37_description"] = "Esteve conosco na Season 1 ou 2",

        ["settings"] = "Configurações",
        ["battlePass"] = "BattlePass",

        ["battlepass.congratulations"] = "Parabéns",
        ["battlepass.received"] = "Você recebeu",

        ["panel"] = "painel",

        ["notify.redeem.title"] = "Resgate",
        ["notify.redeem.already_in_progress"] = "Você já está resgatando um passe, aguarde o processo terminar",
        ["notify.redeem.received_item"] = "Você recebeu %s x%d",
        ["notify.redeem.received_vehicle"] = "Você recebeu o veículo %s",
        ["notify.redeem.received_group"] = "Você recebeu o grupo %s",
        ["notify.redeem.received_garage"] = "Você recebeu %d garage(ns)",
        ["notify.redeem.received_gems"] = "Você recebeu %d gema(s)",
        ["notify.redeem.received_skin"] = "Você recebeu a skin %s",
        
        ["notify.battlepass.ongoing_reward"] = "Você já está resgatando recompensas",
        ["notify.battlepass.reset_pass"] = "Pass resetado do usuário %s",
        ["notify.battlepass.reset_pass_no_perm"] = "Você não tem permissão para resetar passes",
        ["notify.battlepass.pass_not_found"] = "Pass não encontrado",
        ["notify.battlepass.set_pass"] = "Pass do usuário %s definido para nível %d com experiência %d",
        ["notify.battlepass.level_up"] = "Você alcançou o nível %d",

        ["keyboard.event.icon"] = "Ícone:",
        ["keyboard.event.date"] = "Data (yyyy-mm-dd hh:mm:ss):",
        ["keyboard.event.description"] = "Descrição:",
        ["keyboard.event.coords"] = "Coordenadas (x,y,z):",

        ["acceptPhoneRequest"] = "%s %s deseja ver seu número de telefone, deseja aceitar?",
        ["acceptGroupRequest"] = "%s %s deseja ver seu grupo, deseja aceitar?",


        ["notify.saveInfos.title"] = "Salvar Informações",
        ["notify.saveInfos.message"] = "Suas informações foram salvas", 

        ["notify.createEvent.title"] = "Criar Evento",
        ["notify.createEvent.message"] = "Evento criado com sucesso",
        ["relationship_1"] = "Namorando",
        ["relationship_2"] = "Noivado",
        ["relationship_3"] = "Casado",

        ["relationshipRequest"] = "%s %s quer namorar com você, deseja aceitar?",
        ["relationshipRequest_2"] = "%s %s quer noivar com você, deseja aceitar?",
        ["relationshipRequest_3"] = "%s %s quer casar com você, deseja aceitar?",
        ["yes"] = "Sim",
        ["no"] = "Não",
        ["promotion_type"] = "Tipo de Promoção",
        ["monthly_vip"] = "VIP Mensal",
        ["flash_offer"] = "Oferta Flash",
        ["exclusive_link"] = "Link Exclusivo",
        ["monthly_vip_name"] = "Nome do VIP Mensal",
        ["monthly_vip_coupon"] = "Cupom do VIP Mensal",
        ["monthly_vip_description"] = "Descrição do VIP Mensal",
        ["monthly_vip_validity"] = "Validade do VIP Mensal",
        ["monthly_vip_link"] = "Link do VIP Mensal",
        ["monthly_vip_image"] = "Imagem do VIP Mensal",
        ["flash_offer_title"] = "Título da Oferta Flash",
        ["flash_offer_subtitle"] = "Subtítulo da Oferta Flash",
        ["flash_offer_product"] = "Produto da Oferta Flash",
        ["flash_offer_old_price"] = "Preço Antigo da Oferta Flash",
        ["flash_offer_price"] = "Preço da Oferta Flash",
        ["flash_offer_duration"] = "Duração da Oferta Flash",
        ["flash_offer_link"] = "Link da Oferta Flash",
        ["flash_offer_image"] = "Imagem da Oferta Flash",
        ["exclusive_link_url"] = "URL do Link Exclusivo",
        ["battlepass_info"] = "BattlePass Informação",
        ["battlepass_image"] = "BattlePass Imagem",
        ["battlepass_name"] = "BattlePass Nome",
        ["battlepass_description"] = "BattlePass Descrição",
        ["battlepass_url_button"] = "BattlePass URL Botão",
    },
    ["pt-pt"] = {
        ["relationshipRequest"] = "%s %s quer namorar com você, deseja aceitar?",
        ["relationshipRequest_2"] = "%s %s quer noivar com você, deseja aceitar?",
        ["relationshipRequest_3"] = "%s %s quer casar com você, deseja aceitar?",
        ["group_1"] = "🔂 DIÁRIO",
        ["group_2"] = "🎯 CONQUISTAS",
        ["group_3"] = "⭐ POPULARIDADE",
        ["group_4"] = "🔥 OUTROS",
        ["group_5"] = "💰 COMERCIAL",
        ["group_6"] = "👑 LENDÁRIOS",
        
        ["achievement_1_name"] = "⏳ Conectado por + de 1 hora (Hoje)",
        ["achievement_1_description"] = "Fica conectado por + de 1 hora hoje para completar esta missão.",
        
        ["achievement_2_name"] = "⏳ Conectado por + de 2 horas (Hoje)",
        ["achievement_2_description"] = "Fica conectado por + de 2 horas hoje para completar esta missão.",
        
        ["achievement_3_name"] = "⏳ Conectado por + de 5 horas (Hoje)",
        ["achievement_3_description"] = "Fica conectado por + de 5 horas hoje para completar esta missão.",
        
        ["achievement_4_name"] = "⏳ Conectado por + de 8 horas (Hoje)",
        ["achievement_4_description"] = "Fica conectado por + de 8 horas hoje para completar esta missão.",
        
        ["achievement_5_name"] = "⏳ Joga por + de 12 horas (Hoje)",
        ["achievement_5_description"] = "Fica conectado por + de 12 horas hoje para completar esta missão.",
        
        ["achievement_6_name"] = "📦 Entrega 1000x de FARM",
        ["achievement_6_description"] = "Entrega 1000x no comando /FARM",
        
        ["achievement_7_name"] = "📦 Entrega 2000x de FARM",
        ["achievement_7_description"] = "Entrega 2000x no comando /FARM",
        
        ["achievement_8_name"] = "📦 Entrega 5000x de FARM",
        ["achievement_8_description"] = "Entrega 5000x no comando /FARM",
        
        ["achievement_9_name"] = "🤑 Consegue um emprego",
        ["achievement_9_description"] = "Seja recrutado para uma organização legal ou ilegal",
        
        ["achievement_10_name"] = "🏎️ 1ª Nave (+1 Milhão)",
        ["achievement_10_description"] = "Compra o teu primeiro veículo de + de 1 milhão.",
        
        ["achievement_11_name"] = "🏠 Compra Primeira Casa",
        ["achievement_11_description"] = "Compra a tua primeira casa na cidade.",
        
        ["achievement_12_name"] = "💸 Primeiro Milhão",
        ["achievement_12_description"] = "Tens + de 1 Milhão depositado no banco.",
        
        ["achievement_13_name"] = "💸 Multimilionário",
        ["achievement_13_description"] = "Tens + de 5 Milhões depositados no banco.",
        
        ["achievement_14_name"] = "💸 Rico bem novinho",
        ["achievement_14_description"] = "Tens + de 10 Milhões depositados no banco.",
        
        ["achievement_15_name"] = "💸 Agiota ON",
        ["achievement_15_description"] = "Tens + de 50 Milhões depositados no banco.",
        
        ["achievement_16_name"] = "💸💸 Lista da Forbes",
        ["achievement_16_description"] = "Tens + de 100 Milhões depositados no banco.",
        
        ["achievement_17_name"] = "⭐ Bons Costumes",
        ["achievement_17_description"] = "Dá um like em alguém",
        
        ["achievement_18_name"] = "⭐ Primeiro passo para a fama",
        ["achievement_18_description"] = "Recebe um like de alguém",
        
        ["achievement_19_name"] = "⭐ Amigo da Vizinhança",
        ["achievement_19_description"] = "Consegue 50 likes",
        
        ["achievement_20_name"] = "⭐ Porque choras, Caio Castro?",
        ["achievement_20_description"] = "Consegue 100 Likes",
        
        ["achievement_21_name"] = "⭐ Famosinho do Tiktok",
        ["achievement_21_description"] = "Consegue 300 Likes",
        
        ["achievement_22_name"] = "⭐ Muita Mídia",
        ["achievement_22_description"] = "Consegue 500 Likes",
        
        ["achievement_23_name"] = "⭐ Estourado, Esquece!",
        ["achievement_23_description"] = "Consegue 1000 Likes",
        
        ["achievement_24_name"] = "⭐ Mãe to na Globo",
        ["achievement_24_description"] = "Consegue 2000 Likes",
        
        ["achievement_25_name"] = "⭐⭐ Mais famoso que o Neymar",
        ["achievement_25_description"] = "Consegue 3000 Likes",
        
        ["achievement_26_name"] = "✅ Whitelist (20Hrs On)",
        ["achievement_26_description"] = "Joga por 20 horas",
        
        ["achievement_27_name"] = "✅ Resolvi Ficar",
        ["achievement_27_description"] = "Joga por 72 horas",
        
        ["achievement_28_name"] = "✅ Fechamento da Cidade",
        ["achievement_28_description"] = "Joga por 720 horas",
        
        ["achievement_29_name"] = "✅ Antigo de Casa",
        ["achievement_29_description"] = "Joga por 1500 horas",
        
        ["achievement_30_name"] = "✅ Amigo do Vovô",
        ["achievement_30_description"] = "Joga por 2500 horas",
        
        ["achievement_31_name"] = "💰 Cheguei chegando...",
        ["achievement_31_description"] = "Faz a tua primeira compra na loja vip",
        
        ["achievement_32_name"] = "💰 Respeita o Pai",
        ["achievement_32_description"] = "Gasta + de R$ 200 na Loja Vip",
        
        ["achievement_33_name"] = "💰 Tigrinho ta Pagando...",
        ["achievement_33_description"] = "Gasta + de R$ 1000 na Loja Vip",
        
        ["achievement_34_name"] = "👑 Cliente Especial",
        ["achievement_34_description"] = "Gasta + de R$ 5000 na Loja Vip",
        
        ["achievement_35_name"] = "👑 Cliente Black",
        ["achievement_35_description"] = "Gasta + de R$ 20000 na Loja Vip",
        
        ["achievement_36_name"] = "👑 Real Pai das Notas",
        ["achievement_36_description"] = "Gasta + de R$ 50000 na Loja Vip",
        
        ["achievement_37_name"] = "👑 Velhos Tempos",
        ["achievement_37_description"] = "Esteve connosco na Season 1 ou 2",
    
        ["settings"] = "Configurações",
        ["battlePass"] = "BattlePass",
    
        ["battlepass.congratulations"] = "Parabéns",
        ["battlepass.received"] = "Recebeste",
    
        ["panel"] = "painel",
    
        ["notify.redeem.title"] = "Resgatar",
        ["notify.redeem.already_in_progress"] = "Já estás a resgatar um passe, aguarda o processo terminar",
        ["notify.redeem.received_item"] = "Recebeste %s x%d",
        ["notify.redeem.received_vehicle"] = "Recebeste o veículo %s",
        ["notify.redeem.received_group"] = "Recebeste o grupo %s",
        ["notify.redeem.received_garage"] = "Recebeste %d garagem(ns)",
        ["notify.redeem.received_gems"] = "Recebeste %d gema(s)",
        ["notify.redeem.received_skin"] = "Recebeste a skin %s",
        
        ["notify.battlepass.ongoing_reward"] = "Já estás a resgatar recompensas",
        ["notify.battlepass.reset_pass"] = "Pass resetado do utilizador %s",
        ["notify.battlepass.reset_pass_no_perm"] = "Não tens permissão para resetar passes",
        ["notify.battlepass.pass_not_found"] = "Pass não encontrado",
        ["notify.battlepass.set_pass"] = "Pass do utilizador %s definido para nível %d com experiência %d",
        ["notify.battlepass.level_up"] = "Alcançaste o nível %d",
    
        ["keyboard.event.icon"] = "Ícone:",
        ["keyboard.event.date"] = "Data (aaaa-mm-dd hh:mm:ss):",
        ["keyboard.event.description"] = "Descrição:",
        ["keyboard.event.coords"] = "Coordenadas (x,y,z):",
    
        ["acceptPhoneRequest"] = "%s %s deseja ver o teu número de telefone, desejas aceitar?",
        ["acceptGroupRequest"] = "%s %s deseja ver o teu grupo, desejas aceitar?",
    
    
        ["notify.saveInfos.title"] = "Salvar Informações",
        ["notify.saveInfos.message"] = "As tuas informações foram salvas", 
    
        ["notify.createEvent.title"] = "Criar Evento",
        ["notify.createEvent.message"] = "Evento criado com sucesso",

        ["promotion_type"] = "Tipo de Promoção",
        ["monthly_vip"] = "VIP Mensal",
        ["flash_offer"] = "Oferta Flash",
        ["exclusive_link"] = "Link Exclusivo",
        ["monthly_vip_name"] = "Nome do VIP Mensal",
        ["monthly_vip_coupon"] = "Cupom do VIP Mensal",
        ["monthly_vip_description"] = "Descrição do VIP Mensal",
        ["monthly_vip_validity"] = "Validade do VIP Mensal",
        ["monthly_vip_link"] = "Link do VIP Mensal",
        ["monthly_vip_image"] = "Imagem do VIP Mensal",
        ["flash_offer_title"] = "Título da Oferta Flash",
        ["flash_offer_subtitle"] = "Subtítulo da Oferta Flash",
        ["flash_offer_product"] = "Produto da Oferta Flash",
        ["flash_offer_old_price"] = "Preço Antigo da Oferta Flash",
        ["flash_offer_price"] = "Preço da Oferta Flash",
        ["flash_offer_duration"] = "Duração da Oferta Flash",
        ["flash_offer_link"] = "Link da Oferta Flash",
        ["flash_offer_image"] = "Imagem da Oferta Flash",
        ["exclusive_link_url"] = "URL do Link Exclusivo",

        ["relationship_request_2"] = "%s %s quer noivar com você, deseja aceitar?",
        ["relationship_request_3"] = "%s %s quer casar com você, deseja aceitar?",

        ["battlepass_info"] = "BattlePass Informação",
        ["battlepass_image"] = "BattlePass Imagem",
        ["battlepass_name"] = "BattlePass Nome",
        ["battlepass_description"] = "BattlePass Descrição",
        ["battlepass_url_button"] = "BattlePass URL Botão",
    }
    
}

---@param key string The translation key to check
---@return boolean Returns true if translation exists, false otherwise
function CheckTranslation(key)
    if translations[lang][key] then
        return true
    else
        print("[DEBUG] Translation not found for key: " .. key.. " - Lang: " .. lang)
        return false
    end
end

---@param key string The translation key to retrieve
---@return string Returns the translated string or error message
function _t(key)
    if CheckTranslation(key) then
        return translations[lang][key]
    else
        return "Translation not found for key: " .. key.. " - Lang: " .. lang
    end
end

AchievementsGroups = {
    [1] = _t("group_1"),
    [2] = _t("group_2"),
    [3] = _t("group_3"),
    [4] = _t("group_4"),
    [5] = _t("group_5"),
    [6] = _t("group_6"),
}

Achievements = {
    { GroupID = 1, Group = AchievementsGroups[1], Type = "TodayPlayed", Name = _t("achievement_1_name"), Description = _t("achievement_1_description"), Rewards = {{ type = "Coins", name = "🪙", amount = 350 }}, Title = "", Progress = 1, Notify = false },
    { GroupID = 1, Group = AchievementsGroups[1], Type = "TodayPlayed", Name = _t("achievement_2_name"), Description = _t("achievement_2_description"), Rewards = {{ type = "Coins", name = "🪙", amount = 520 }}, Title = "", Progress = 2, Notify = false },
    -- Continue similarly for each achievement...
}

function GetAchievements()
    return Achievements, AchievementsGroups
end