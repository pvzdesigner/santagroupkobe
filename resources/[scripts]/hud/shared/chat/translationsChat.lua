cityName = GetConvar("cityName", "")
language = GetConvar("language", "") or false

chatConfig = {
    ["en-us"] = {
        ["#applyBan"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}} {{msg2}} {{msg3}} was banned. Reason: {{msg4}} Description: {{msg5}} Banned by: {{msg6}} | {{msg7}}",
            ['mode'] = "🚫 Ban",
        },
        ["#applyBan2"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}} {{msg2}} was banned. Reason: {{msg3}} Description: {{msg4}} Banned by: {{msg5}} | {{msg6}}",
            ['mode'] = "🚫 Ban",
        },
        ["#consoleCommand"] = {
            ['author'] = "ID: ",
            ['message'] = "{{msg1}}", 
            ['mode'] = "warning",  
        },        
        ["#warningNoti"] = {
            ['author'] = "",
            ['message'] = "[{{msg1}} {{msg2}} {{msg3}} was warned for: {{msg4}} minutes. Reason: {{msg5}} Description: {{msg6}} Warned by: {{msg7}} | {{msg8}}",
            ['mode'] = "🚫 Warning",
        },        
        ["#remAdv"] = {
            ['author'] = "",
            ['message'] = "Passport: {{msg1}} | {{msg2}} removed adv from {{msg3}} | {{msg4}}",
            ['mode'] = "⛔️ RemoveAdv",
        },        
        ["#vipStoree"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "",
        },
        ["#arrivedNow"] = {
            ['author'] = "Just arrived?",
            ['message'] = "{{msg}}",
            ['mode'] = "👑 BE A LEADER",
        },        
        ["#playerKStreak"] = {
            ['author'] = "Player",
            ['message'] = "{{msg1}} {{msg2}} {{msg3}} is on a kill streak of {{msg4}}.",
            ['mode'] = "arena",
        },        
        ["#playerKStreakStop"] = {
            ['author'] = "Player",
            ['message'] = "{{msg1}} {{msg2}} {{msg3}} is on a kill streak of {{msg4}}, can anyone stop this machine?",
            ['mode'] = "arena",
        },        
        ["#ffaMap1Min"] = {
            ['author'] = "",
            ['message'] = "The FFA map will change in 1 minute",
            ['mode'] = "FFA",
        },        
        ["#ffaMap3Min"] = {
            ['author'] = "",
            ['message'] = "The FFA map will change in 3 minutes",
            ['mode'] = "FFA",
        },        
        ["#ffaMap5Min"] = {
            ['author'] = "",
            ['message'] = "The FFA map will change in 5 minutes",
            ['mode'] = "FFA",
        },        
        ["#playerWinFfa"] = {
            ['author'] = "",
            ['message'] = "ID [{{msg1}}] {{msg2}} has just won the FFA {{msg3}} with {{msg4}} Kills",
            ['mode'] = "FFA",
        },        
        ["#playerOneKStreak"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} is on a kill streak of {{msg4}}, is the SS team on?",
            ['mode'] = "arena",
        },        
        ["#playerOneKStreakCall"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} is on a kill streak of {{msg4}}, call the SS team",
            ['mode'] = "arena",
        },        
        ["#playerOneKStreakPuro"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} is on a kill streak of {{msg4}}, are you sure it's not pure?",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakTelem"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} is on a kill streak of {{msg4}}, teleport him urgently!!!",
            ['mode'] = "arena",
        },        
        ["#beguinnerEntered"] = {
            ['author'] = "",
            ['message'] = "A beginner just entered the city, ID: {{msg1}} | {{msg2}}",
            ['mode'] = "🚀 Beginner",
        },
        ["#admReport"] = {
            ['author'] = "Administrator",
            ['message'] = "{{msg}}",
            ['mode'] = "Reports",
        },
        ["#admTicket"] = {
            ['author'] = "Administrator",
            ['message'] = "{{msg}}",
            ['mode'] = "Tickets",
        },
        ["#playerAhiv"] = {
            ['author'] = "Player: ",
            ['message'] = "[{{msg1}}] {{msg2}} {{msg3}} completed the achievement [{{msg4}}]",
            ['mode'] = "",
        },
        ["#aliasOrgani"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🧲 Panel",
        },
        ["#startRelationship"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} started dating {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relationship",
        },
        ["#startEngaged"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} got engaged to {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relationship",
        },
        ["#startMarried"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} got married to {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relationship",
        },
        ["#endRelationship"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} and {{msg3}} {{msg4}} broke up, you can now say Hi to the ex!",
            ['mode'] = "🤲 Relationship",
        },
        ["#cheatingRelationship"] = {
            ['author'] = "",
            ['message'] = "Hello {{msg1}} {{msg2}} cheater, {{msg3}} {{msg4}} is trying to cheat on you.",
            ['mode'] = "🐂 Relationship",
        },
        ["#tryCheatingRelationship"] = {
            ['author'] = "",
            ['message'] = "Hello {{msg1}} {{msg2}} cheater, {{msg3}} {{msg4}} tried to cheat on you.",
            ['mode'] = "🐂 Relationship",
        },
        ["#lojaVip"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🏷️ VIP STORE",
        },
        ["#theDomi"] = {
            ['author'] = "",
            ['message'] = "THE DOMINATION [{{msg1}}] Was [STARTED] by the group {{msg2}} for [R${{msg3}}]",
            ['mode'] = "DOMINATION",
        },
        ["#cancelDomi"] = {
            ['author'] = "",
            ['message'] = "THE DOMINATION [{{msg}}] was [CANCELLED].",
            ['mode'] = "DOMINATION",
        },
        ["#accumulatedDomi"] = {
            ['author'] = "",
            ['message'] = "THE DOMINATION [{{msg1}}] has accumulated [$ {{msg2}}]",
            ['mode'] = "DOMINATION",
        },        
        ["#domiCompleted"] = {
            ['author'] = "",
            ['message'] = "THE DOMINATION [{{msg1}}] was [COMPLETED] by the group [{{msg2}}].",
            ['mode'] = "DOMINATION",
        },
        ["#teamWinEvent"] = {
            ['author'] = "",
            ['message'] = "The team {{msg1}} won the event {{msg2}}.",
            ['mode'] = "FFA",
        },
        ["#statusWar"] = {
            ['author'] = "WAR",
            ['message'] = "{{msg1}} {{msg2}} x {{msg3}} {{msg4}}",
            ['mode'] = "WAR",
        },
        ["#boughtCar"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}}] {{msg2}} {{msg3}} bought the car {{msg4}} at the dealership.",
            ['mode'] = "🚗 Dealership",
        },        
        ["#contratOrg"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🧲 Panel",
        },
        ["#megaPhone"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "📢 Megaphone",
        },
        ["#breakupNotice"] = {
            ['author'] = "",
            ['message'] = "Hello {{msg1}} {{msg2}}, apparently {{msg3}} {{msg4}} just broke up. It's time to ask if everything is okay, pm on instagram.",
            ['mode'] = "🤲 Relationship",
        },
        ["#algumNome"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "",
        },
        ["#chatBlack"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#chatTutor"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#chatDefault"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#algumNome2"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#algumNome3"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#gotCard"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "Tirou {{msg3}}{{msg4}} do baralho.",
            ['mode'] = "jogo",
        },
        ["#gotCard2"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "Tirou {{msg3}}{{msg4}} do baralho.",
            ['mode'] = "jogo",
        },
        ["#slideCoin"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "{{msg3}}",
            ['mode'] = "jogo",
        },
        ["#slideCoin2"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "{{msg3}}",
            ['mode'] = "jogo",
        },
        ["#policeServ"] = {
            ['author'] = "{{msg1}} | {{msg2}} ",
            ['message'] = "{{msg3}}",
            ['mode'] = "chamado",
        },



        
    },
    ["pt-br"] = {
        ["#applyBan"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}} {{msg2}} {{msg3}} foi banido. Motivo: {{msg4}} Descrição: {{msg5}} Banido por : {{msg6}} | {{msg7}}",
            ['mode'] = "🚫Banimento",
        },
        ["#applyBan2"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}} {{msg2}} foi banido. Motivo: {{msg3}} Descrição: {{msg4}} Banido por: {{msg5}} | {{msg6}}",
            ['mode'] = "🚫 Ban",
        },
        ["#consoleCommand"] = {
            ['author'] = "ID: ",
            ['message'] = "{{msg1}}", 
            ['mode'] = "aviso",  
        },
        ["#warningNoti"] = {
            ['author'] = "",
            ['message'] = "[{{msg1}} {{msg2}} {{msg3}} foi advertido por: {{msg4}} minutos. Motivo: {{msg5}} Descrição: {{msg6}} Advertido por: {{msg7}} | {{msg8}}",
            ['mode'] = "🚫 Advertência",
        },
        ["#remAdv"] = {
            ['author'] = "",
            ['message'] = "Passaporte: {{msg1}} | {{msg2}} retirou adv de {{msg3}} | {{msg4}}",
            ['mode'] = "⛔️ RemAdv",
        },
        ["#vipStoree"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "",
        },
        ["#arrivedNow"] = {
            ['author'] = "Chegou agora?",
            ['message'] = "{{msg}}",
            ['mode'] = "👑 SEJA LIDER",
        },
        ["#playerKStreak"] = {
            ['author'] = "Jogador",
            ['message'] = "{{msg1}} {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}.",
            ['mode'] = "arena",
        },
        ["#playerKStreakStop"] = {
            ['author'] = "Jogador",
            ['message'] = "{{msg1}} {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, Será que alguem consegue parar essa maquina ?",
            ['mode'] = "arena",
        },
        ["#ffaMap1Min"] = {
            ['author'] = "",
            ['message'] = "O mapa do FFA vai mudar em 1 minuto",
            ['mode'] = "FFA",
        },
        ["#ffaMap3Min"] = {
            ['author'] = "",
            ['message'] = "O mapa do FFA vai mudar em 3 minutos",
            ['mode'] = "FFA",
        },
        ["#ffaMap5Min"] = {
            ['author'] = "",
            ['message'] = "O mapa do FFA vai mudar em 3 minutos",
            ['mode'] = "FFA",
        },
        ["#playerWinFfa"] = {
            ['author'] = "",
            ['message'] = "O ID [{{msg1}}] {{msg2}} acabou de vencer o FFA {{msg3}} com {{msg4}} Kills",
            ['mode'] = "FFA",
        },
        ["#playerOneKStreak"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, equipe SS tá on?",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakCall"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, chamem a equipe de SS",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakPuro"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, certeza que não tá puro!",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakTelem"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, telem ele urgente!!!",
            ['mode'] = "arena",
        },
        ["#bguinnerEntered"] = {
            ['author'] = "",
            ['message'] = "Acabou de entrar um iniciante na cidade, ID: {{msg1}} | {{msg2}}",
            ['mode'] = "🚀 Iniciante",
        },
        ["#admReport"] = {
            ['author'] = "Administrador",
            ['message'] = "{{msg}}",
            ['mode'] = "Denuncias",
        },
        ["#admTicket"] = {
            ['author'] = "Administrador",
            ['message'] = "{{msg}}",
            ['mode'] = "Chamados",
        },
        ["#playerAhiv"] = {
            ['author'] = "O Jogador: ",
            ['message'] = "[{{msg1}}] {{msg2}} {{msg3}} concluiu a conquista [{{msg4}}]",
            ['mode'] = "",
        },
        ["#aliasOrgani"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🧲 Painel",
        },
        ["#startRelationship"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} começou a namorar com {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relacionamento",
        },
        ["#startEngaged"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} Noivou com {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relacionamento",
        },
        ["#startMarried"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} se casou com {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relacionamento",
        },
        ["#endRelationship"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} e {{msg3}} {{msg4}} se separaram, já podem mandar um Oi sumida(o)",
            ['mode'] = "🤲 Relacionamento",
        },
        ["#cheatingRelationship"] = {
            ['author'] = "",
            ['message'] = "Alo {{msg1}} {{msg2}} chifrudo(a), {{msg3}} {{msg4}} ta tentando te trair.",
            ['mode'] = "🐂 Relacionamento",
        },
        ["#tryCheatingRelationship"] = {
            ['author'] = "",
            ['message'] = "Alo {{msg1}} {{msg2}} chifrudo(a), {{msg3}} {{msg4}} tentou te meter gaia.",
            ['mode'] = "🐂 Relacionamento",
        },
        ["#lojaVip"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🏷️ LOJA VIP",
        },
        ["#theDomi"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg1}}] Foi [INÍCIADA] pelo grupo {{msg2}} valendo [R${{msg3}}]",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#cancelDomi"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg}}] foi [CANCELADA].",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#accumulatedDomi"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg1}}] está acumulada em [$ {{msg2}}]",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#domiCompleted"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg1}}] foi [CONCLUÍDA] pelo grupo [{{msg2}}].",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#teamWinEvent"] = {
            ['author'] = "",
            ['message'] = "O time {{msg1}} venceu o evento {{msg2}}.",
            ['mode'] = "FFA",
        },
        ["#statusWar"] = {
            ['author'] = "GUERRA",
            ['message'] = "{{msg1}} {{msg2}} x {{msg3}} {{msg4}}",
            ['mode'] = "GUERRA",
        },
        ["#boughtCar"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}}] {{msg2}} {{msg3}} comprou o carro {{msg4}} na concessionária.",
            ['mode'] = "🚗Concessionária",
        },
        ["#contratOrg"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🧲 Painel",
        },
        ["#megaPhone"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "📢 Megaphone",
        },
        ["#breakupNotice"] = {
            ['author'] = "",
            ['message'] = "Oi sumida(o)! Aparentemente o {{msg1}} {{msg2}} acabou de separar de {{msg3}} {{msg4}}. É hora de perguntar se tá tudo bem no pv do insta.",
            ['mode'] = "🤲 Relacionamento",
        },
        ["#algumNome"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "",
        },
        ["#chatBlack"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#chatTutor"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#chatDefault"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#algumNome2"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#algumNome3"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#gotCard"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "Tirou {{msg3}}{{msg4}} do baralho.",
            ['mode'] = "jogo",
        },
        ["#gotCard2"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "Tirou {{msg3}}{{msg4}} do baralho.",
            ['mode'] = "jogo",
        },
        ["#slideCoin"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "{{msg3}}",
            ['mode'] = "jogo",
        },
        ["#slideCoin2"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "{{msg3}}",
            ['mode'] = "jogo",
        },
        ["#policeServ"] = {
            ['author'] = "{{msg1}} | {{msg2}} ",
            ['message'] = "{{msg3}}",
            ['mode'] = "chamado",
        },
        ["#beguinnerEntered"] = {
            ['author'] = "",
            ['message'] = "Acabou de entrar um iniciante na cidade, ID: {{msg1}} | {{msg2}}",
            ['mode'] = "🚀 Iniciante",
        },
       
    },
    ["pt-pt"] = {
        ["#applyBan"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}} {{msg2}} {{msg3}} foi banido. Motivo: {{msg4}} Descrição: {{msg5}} Banido por : {{msg6}} | {{msg7}}",
            ['mode'] = "🚫Banimento",
        },
        ["#applyBan2"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}} {{msg2}} foi banido. Motivo: {{msg3}} Descrição: {{msg4}} Banido por: {{msg5}} | {{msg6}}",
            ['mode'] = "🚫Banimento",
        },
        ["#consoleCommand"] = {
            ['author'] = "ID: ",
            ['message'] = "{{msg1}}", 
            ['mode'] = "aviso",  
        },
        ["#warningNoti"] = {
            ['author'] = "",
            ['message'] = "[{{msg1}} {{msg2}} {{msg3}} foi advertido por: {{msg4}} minutos. Motivo: {{msg5}} Descrição: {{msg6}} Advertido por: {{msg7}} | {{msg8}}",
            ['mode'] = "🚫 Advertência",
        },
        ["#remAdv"] = {
            ['author'] = "",
            ['message'] = "Passaporte: {{msg1}} | {{msg2}} retirou adv de {{msg3}} | {{msg4}}",
            ['mode'] = "⛔️ RemAdv",
        },
        ["#vipStoree"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "",
        },
        ["#arrivedNow"] = {
            ['author'] = "Chegaste agora?",
            ['message'] = "{{msg}}",
            ['mode'] = "👑 SEJA LÍDER",
        },
        ["#playerKStreak"] = {
            ['author'] = "Jogador",
            ['message'] = "{{msg1}} {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}.",
            ['mode'] = "arena",
        },
        ["#playerKStreakStop"] = {
            ['author'] = "Jogador",
            ['message'] = "{{msg1}} {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, Será que alguém consegue parar essa máquina?",
            ['mode'] = "arena",
        },
        ["#ffaMap1Min"] = {
            ['author'] = "",
            ['message'] = "O mapa do FFA vai mudar em 1 minuto",
            ['mode'] = "FFA",
        },
        ["#ffaMap3Min"] = {
            ['author'] = "",
            ['message'] = "O mapa do FFA vai mudar em 3 minutos",
            ['mode'] = "FFA",
        },
        ["#ffaMap5Min"] = {
            ['author'] = "",
            ['message'] = "O mapa do FFA vai mudar em 3 minutos",
            ['mode'] = "FFA",
        },
        ["#playerWinFfa"] = {
            ['author'] = "",
            ['message'] = "O ID [{{msg1}}] {{msg2}} acabou de vencer o FFA {{msg3}} com {{msg4}} Kills",
            ['mode'] = "FFA",
        },
        ["#playerOneKStreak"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, equipa SS está on?",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakCall"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, chamem a equipa de SS",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakPuro"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, certeza que não está puro!",
            ['mode'] = "arena",
        },
        ["#playerOneKStreakTelem"] = {
            ['author'] = "",
            ['message'] = "ID: [{{msg1}}] {{msg2}} {{msg3}} Está com um kill streak de {{msg4}}, telem ele urgente!!!",
            ['mode'] = "arena",
        },
        ["#bguinnerEntered"] = {
            ['author'] = "",
            ['message'] = "Acabou de entrar um iniciante na cidade, ID: {{msg1}} | {{msg2}}",
            ['mode'] = "🚀 Iniciante",
        },
        ["#admReport"] = {
            ['author'] = "Administrador",
            ['message'] = "{{msg}}",
            ['mode'] = "Denúncias",
        },
        ["#admTicket"] = {
            ['author'] = "Administrador",
            ['message'] = "{{msg}}",
            ['mode'] = "Chamados",
        },
        ["#playerAhiv"] = {
            ['author'] = "O Jogador: ",
            ['message'] = "[{{msg1}}] {{msg2}} {{msg3}} concluiu a conquista [{{msg4}}]",
            ['mode'] = "",
        },
        ["#aliasOrgani"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🧲 Painel",
        },
        ["#startRelationship"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} começou a namorar com {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relacionamento",
        },
        ["#startEngaged"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} noivou com {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relacionamento",
        },
        ["#startMarried"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} se casou com {{msg3}} {{msg4}}",
            ['mode'] = "❤️ Relacionamento",
        },
        ["#endRelationship"] = {
            ['author'] = "",
            ['message'] = "{{msg1}} {{msg2}} e {{msg3}} {{msg4}} se separaram, já podem mandar um Oi sumido(a)",
            ['mode'] = "🤲 Relacionamento",
        },
        ["#cheatingRelationship"] = {
            ['author'] = "",
            ['message'] = "Alô {{msg1}} {{msg2}} corno(a), {{msg3}} {{msg4}} está a tentar trair-te.",
            ['mode'] = "🐂 Relacionamento",
        },
        ["#tryCheatingRelationship"] = {
            ['author'] = "",
            ['message'] = "Alô {{msg1}} {{msg2}} corno(a), {{msg3}} {{msg4}} tentou-te meter gaia.",
            ['mode'] = "🐂 Relacionamento",
        },
        ["#lojaVip"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🏷️ LOJA VIP",
        },
        ["#theDomi"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg1}}] Foi [INICIADA] pelo grupo {{msg2}} valendo [R${{msg3}}]",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#cancelDomi"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg}}] foi [CANCELADA].",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#accumulatedDomi"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg1}}] está acumulada em [$ {{msg2}}]",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#domiCompleted"] = {
            ['author'] = "",
            ['message'] = "A DOMINAÇÃO [{{msg1}}] foi [CONCLUÍDA] pelo grupo [{{msg2}}].",
            ['mode'] = "DOMINAÇÃO",
        },
        ["#teamWinEvent"] = {
            ['author'] = "",
            ['message'] = "A equipa {{msg1}} venceu o evento {{msg2}}.",
            ['mode'] = "FFA",
        },
        ["#statusWar"] = {
            ['author'] = "GUERRA",
            ['message'] = "{{msg1}} {{msg2}} x {{msg3}} {{msg4}}",
            ['mode'] = "GUERRA",
        },
        ["#boughtCar"] = {
            ['author'] = "ID: ",
            ['message'] = "[{{msg1}}] {{msg2}} {{msg3}} comprou o carro {{msg4}} na concessionária.",
            ['mode'] = "🚗Concessionária",
        },
        ["#contratOrg"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "🧲 Painel",
        },
        ["#megaPhone"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "📢 Megafone",
        },
        ["#breakupNotice"] = {
            ['author'] = "",
            ['message'] = "Oi sumido(a)! Aparentemente o {{msg1}} {{msg2}} acabou de separar-se de {{msg3}} {{msg4}}. É hora de perguntar se está tudo bem no PV do Insta.",
            ['mode'] = "🤲 Relacionamento",
        },
        ["#algumNome"] = {
            ['author'] = "",
            ['message'] = "{{msg}}",
            ['mode'] = "",
        },
        ["#chatBlack"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#chatTutor"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#chatDefault"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#algumNome2"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#algumNome3"] = {
            ['author'] = "{{msg1}}",
            ['message'] = "{{msg2}}",
            ['mode'] = "{{msg3}}",
        },
        ["#gotCard"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "Tirou {{msg3}}{{msg4}} do baralho.",
            ['mode'] = "jogo",
        },
        ["#gotCard2"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "Tirou {{msg3}}{{msg4}} do baralho.",
            ['mode'] = "jogo",
        },
        ["#slideCoin"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "{{msg3}}",
            ['mode'] = "jogo",
        },
        ["#slideCoin2"] = {
            ['author'] = "{{msg1}} {{msg2}}",
            ['message'] = "{{msg3}}",
            ['mode'] = "jogo",
        },
        ["#policeServ"] = {
            ['author'] = "{{msg1}} | {{msg2}} ",
            ['message'] = "{{msg3}}",
            ['mode'] = "chamado",
        },
        ["#beguinnerEntered"] = {
            ['author'] = "",
            ['message'] = "Acabou de entrar um iniciante na cidade, ID: {{msg1}} | {{msg2}}",
            ['mode'] = "🚀 Iniciante",
        },
    }

}

function parseString(str,args)
    local parsed = str
    if args then
        for k, v in pairs( args ) do
            parsed = parsed:gsub('{{'..k..'}}',v)
        end
    end
    return parsed
end