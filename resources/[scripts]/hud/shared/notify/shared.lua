NotifyGroups = {
    ["Administration"] = 100,
    ["Warning"] = 75,
    ["Illegal"] = 75,
    ["Attention"] = 75,
    ["Mechanic"] = 50,
    ["Confirmed"] = 75,
    ["Hospital"] = 50,
    ["Information"] = 75,
    ["Vehicle"] = 50,
    ["Party"] = 85,
    ["Work"] = 25,
    ["Pets"] = 0,
    ["Payment"] = 75,
    ["PVP"] = 0,
    ["House"] = 50,
    ["Chest"] = 75,
    ["Family"] = 25,
    ["Police"] = 50,
    ["AntiCheat"] = 100,
}

AnnounceGroups = {
    ["police"] = 90,          
    ["mechanic"] = 70,        
    ["admin"] = 100,          
    ["policeNew"] = 85,       
    ["paramedicNew"] = 90,    
    ["bombeirosNew"] = 75,    
    ["bombeirosNew2"] = 75,   
    ["hireNew"] = 65,         
    ["mechanicNew"] = 70,     
    ["adminNew"] = 100,  
    ["adminAuto"] = 80,  
    ["eventsNew"] = 60,    
    ["crown"] = 50,           
    ["ilegalNew"] = 40,       
    ["anonymousNew"] = 30
}

AnnounceWithoutQueue = {
    ["admin"] = true,
}

-- https://ibb.co/1KKtmBF
notifyConfig = {
    ["en-us"] = {
        ["#insufficientFunds"] = {
            ['title'] = "Department",
            ['message'] = "Insufficient funds.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ['#cantUseSpecialCharMessage'] = {
            ['title'] = "Aviso",
            ['message'] = "You can't use special characters.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientItems"] = {
            ['title'] = "Department",
            ['message'] = "Insufficient items.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#relationshipCooldown"] = {
            ['title'] = "Relationship",
            ['message'] = "You can't interact on relationship system for{{msg}} seconds.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntActiveStatus"] = {
            ['title'] = "Hunt Event",
            ['message'] = "Easter Hunt Event is active! Time remaining: {{msg}} minutes and {{msg2}} seconds.<br>Use /easter to check the event status.<br>Use /myeaster to check your progress.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#huntInactiveStatus"] = {
            ['title'] = "Hunt Event",
            ['message'] = "Easter Hunt Event is inactive! It will start again in {{msg}} minutes and {{msg2}} seconds.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntEventStarted"] = {
            ['title'] = "Hunt Event",
            ['message'] = "Easter Hunt Event has started! You have 30 minutes to find all items.<br>Use /easter to check the event status.<br>Use /myeaster to check your progress.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#huntEventEnded"] = {
            ['title'] = "Hunt Event",
            ['message'] = "Easter Hunt Event has ended! It will start again in {{msg}} minutes and {{msg2}} seconds.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntCollected"] = {
            ['title'] = "Hunt Event",
            ['message'] = "You collected {{msg}} of {{msg2}} eggs.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#rateLimitWait"] = {
            ['title'] = "Aviso",
            ['message'] = "Wait {{msg}} seconds to do this again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#jumpIn"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump activated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#trabalhobombeiros"] = {
            ['title'] = "Fire Man",
            ['message'] = "You received $ {{msg}} dollars for putting out the fire.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#like"] = {
            ['title'] = "Like",
            ['message'] = "You gave 👍 LIKE!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#passMuteArea"] = {
            ['title'] = "MUTED PASSPORT",
            ['message'] = "Mute applied successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#respostarequest"] = {
            ['title'] = "Request response",
            ['message'] = "You cannot respond to this request!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notifyloginoff"] = {
            ['title'] = "Actions",
            ['message'] = "Login notification removed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#notifyloginon"] = {
            ['title'] = "Actions",
            ['message'] = "Login notification added successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#convertecoinssucesso"] = {
            ['title'] = "Coin conversion",
            ['message'] = "You converted {{msg}} Coins into {{msg2}} Diamonds.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#coinsinsuficientes"] = {
            ['title'] = "Coin conversion",
            ['message'] = "You don't have {{msg}} enough Coins.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamantesconvertidos"] = {
            ['title'] = "Diamonds conversion",
            ['message'] = "You converted {{msg}} Diamonds into {{msg2}} Coins.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#diamantesinsuficientes"] = {
            ['title'] = "Diamonds",
            ['message'] = "You don't have {{msg}} x Diamonds enough.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#aguardeconversaoanterior"] = {
            ['title'] = "Conversion",
            ['message'] = "Please wait for the previous conversion to finish.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockcameramundo"] = {
            ['title'] = "Camera",
            ['message'] = "You cannot use the camera while not in the PHOTOGRAPHY world.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockacao"] = {
            ['title'] = "Actions",
            ['message'] = "Action blocked.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#x1entroufila"] = {
            ['title'] = "Queue",
            ['message'] = "You entered the x1 queue.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#x1saiufila"] = {
            ['title'] = "Queue",
            ['message'] = "You left the x1 queue.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dogtagsdepositou"] = {
            ['title'] = "Deposit",
            ['message'] = "You deposited {{msg}} x dogtags. Total: {{msg2}} DOGTAGS.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#dogtagscooldown"] = {
            ['title'] = "Dogtag collection",
            ['message'] = "You must wait 30 seconds to collect dogtags from the same person.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagsvcntem"] = {
            ['title'] = "Dogtag",
            ['message'] = "You don't have dogtags to deposit.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagsnpossui"] = {
            ['title'] = "Dogtag",
            ['message'] = "This player doesn't have dogtags.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagscoletou"] = {
            ['title'] = "Dogtag",
            ['message'] = "You collected {{msg}} x dogtags.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#saiummundopvp"] = {
            ['title'] = "PVP World",
            ['message'] = "You left the PVP world.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#sempermmundopvp"] = {
            ['title'] = "PVP World",
            ['message'] = "You don't have permission to enter the PVP world.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#jaestamundopvp"] = {
            ['title'] = "PVP World",
            ['message'] = "You are already in the PVP world.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#entroumundopvp"] = {
            ['title'] = "PVP World",
            ['message'] = "You entered the PVP world.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#multiplicadorkill"] = {
            ['title'] = "PVP World",
            ['message'] = "Kill multiplier changed to {{msg}} x.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#arenaroyalewin"] = {
            ['title'] = "Royale Event",
            ['message'] = "Group {{msg}} won the Royale Event.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleeliminado"] = {
            ['title'] = "Royale Event",
            ['message'] = "You were eliminated from the <b>Royale Event</b>",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyalepause"] = {
            ['title'] = "Royale Event",
            ['message'] = "Royale area has been paused.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleremovido"] = {
            ['title'] = "Royale Event",
            ['message'] = "Royale area has been removed.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleliberada"] = {
            ['title'] = "Royale Event",
            ['message'] = "Royale area has been released.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#eventofinalizado"] = {
            ['title'] = "Royale Event",
            ['message'] = "Event successfully finished ID: {{msg}}",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#dominacaoemandamento"] = {
            ['title'] = "Domination",
            ['message'] = "Domination is on cooldown.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominacaocooldown"] = {
            ['title'] = "Domination",
            ['message'] = "Domination is on cooldown.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominacaoiniciada"] = {
            ['title'] = "Domination",
            ['message'] = "Domination of {{msg}} was started by {{msg2}}.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#wallantipika"] = {
            ['title'] = "Wall",
            ['message'] = "You activated the anti pika, now pika is invisible.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallon"] = {
            ['title'] = "Wall",
            ['message'] = "You activated the wall.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#walloff"] = {
            ['title'] = "Wall",
            ['message'] = "You have disabled the wall.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notveic"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle has no owner/spawned",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#dominacaoconcluida"] = {
            ['title'] = "Domination",
            ['message'] = "Dominance of {{msg}} was dominated by {{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#showowner"] = {
            ['title'] = "Owner",
            ['message'] = "Plate: {{msg}} Owner: {{msg2}} #{{msg3}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#getpurchased"] = {
            ['title'] = "Purchased",
            ['message'] = "Player {{msg}} {{msg2}}<br>spent <b>R${{msg3}}</b> on purchases.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#getwhats"] = {
            ['title'] = "Whats",
            ['message'] = "WhatsApp: {{msg}}\nCopied to clipboard",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#notbanned"] = {
            ['title'] = "Ban",
            ['message'] = "Player has no ban history",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#intagramadicionadosucesso"] = {
            ['title'] = "Instagram",
            ['message'] = "Instagram added successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#tiktokadicionadosucesso"] = {
            ['title'] = "TikTok",
            ['message'] = "TikTok added successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#coowldownreporte"] = {
            ['title'] = "Report",
            ['message'] = "Wait {{msg}} seconds to make a new report.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naopodereviver"] = {
            ['title'] = "Revive",
            ['message'] = "You cannot revive this person.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocancelado"] = {
            ['title'] = "Call",
            ['message'] = "Your call was canceled due to no response.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadofinalizado"] = {
            ['title'] = "Call",
            ['message'] = "You cannot make a call while it is finalized.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadomundoarena"] = {
            ['title'] = "Call",
            ['message'] = "You cannot make a call inside the arena.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadomundopadrao"] = {
            ['title'] = "Call",
            ['message'] = "You can only make calls in the world.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadosemdinheiro"] = {
            ['title'] = "Call",
            ['message'] = "You do not have enough money to make a call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocooldown"] = {
            ['title'] = "call",
            ['message'] = "Wait {{msg}} seconds to make a new call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#delnpc"] = {
            ['title'] = "NPC",
            ['message'] = "All NPCs were successfully deleted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#delobjeto"] = {
            ['title'] = "Object",
            ['message'] = "All objects were successfully deleted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#orgnotvip"] = {
            ['title'] = "VIP",
            ['message'] = "Your organization does not have an active VIP. VIP: {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rdmon"] = {
            ['title'] = "RDM",
            ['message'] = "You have activated RDM.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rdmoff"] = {
            ['title'] = "RDM",
            ['message'] = "You have deactivated RDM.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#avaliousucesso"] = {
            ['title'] = "Review",
            ['message'] = "Review submitted successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avalioujogador"] = {
            ['title'] = "Rewview",
            ['message'] = "You have already rated this player recently.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoperm"] = {
            ['title'] = "Screen",
            ['message'] = "You do not have permission to use this screen.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoadd"] = {
            ['title'] = "Screen",
            ['message'] = "You have added a new screen.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoaddperm"] = {
            ['title'] = "Screen",
            ['message'] = "You added permission for player {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoremover"] = {
            ['title'] = "Screen",
            ['message'] = "You have removed a screen.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaorem"] = {
            ['title'] = "Screen",
            ['message'] = "You removed permission for player {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoadd"] = {
            ['title'] = "Screen",
            ['message'] = "You added permission for player {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoselecionado"] = {
            ['title'] = "Screen",
            ['message'] = "No screen exists at this location.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoselecionado"] = {
            ['title'] = "Screen",
            ['message'] = "No screen exists at this location.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaonaoexiste"] = {
            ['title'] = "Screen",
            ['message'] = "No screen exists at this location.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recebersalariofac"] = {
            ['title'] = "Salary",
            ['message'] = "You received R$ {{msg}} for your Faction VIP.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#recebersalario"] = {
            ['title'] = "Salary",
            ['message'] = "You received R$ {{msg}} x for your position {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#caixajaestaroubando"] = {
            ['title'] = "Theft",
            ['message'] = "You are already robbing an ATM.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#caixavazio"] = {
            ['title'] = "Theft",
            ['message'] = "This ATM is empty.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#Desencriptacaoandamento"] = {
            ['title'] = "Theft",
            ['message'] = "Decryption in progress, please wait {{msg}} seconds.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubofaltaitem"] = {
            ['title'] = "Theft",
            ['message'] = "Oops, you do not have {{msg}} x {{msg2}}.. How about looking for a junkyard to get one and come back here?",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboparticipando"] = {
            ['title'] = "Theft",
            ['message'] = "You are participating in the robbery of {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboretirardinheiro"] = {
            ['title'] = "Theft",
            ['message'] = "Withdraw the money from the robbery at the blip.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboprogresso"] = {
            ['title'] = "Theft",
            ['message'] = "The holder of the robbery is dead, stay alive to withdraw the money when the robbery is completed.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboexit"] = {
            ['title'] = "Theft",
            ['message'] = "You left the robbery area, the robbery was canceled.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboemprogresso"] = {
            ['title'] = "Theft",
            ['message'] = "Decryption progress has started, it will be completed in {{msg}} seconds.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboparticipando"] = {
            ['title'] = "Theft",
            ['message'] = "You are participating in the robbery of {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubolimiteproximo"] = {
            ['title'] = "Theft",
            ['message'] = "The number of nearby bandits must be greater than {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubolimite"] = {
            ['title'] = "Theft",
            ['message'] = "The number of bandits must be greater than {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubonot"] = {
            ['title'] = "Theft",
            ['message'] = "You cannot receive money from this robbery.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#portedearmaremglock"] = {
            ['title'] = "POLICE",
            ['message'] = "Took out a glock.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmacooldown"] = {
            ['title'] = "POLICE",
            ['message'] = "Wait {{msg}} seconds to use again.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmacheck"] = {
            ['title'] = "POLICE",
            ['message'] = "Player {{msg}} has a weapons license level {{msg2}}",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmasem"] = {
            ['title'] = "POLICE",
            ['message'] = "You do not have a weapons license.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmarem"] = {
            ['title'] = "POLICE",
            ['message'] = "You removed a weapons license from the citizen.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmajaremovido"] = {
            ['title'] = "POLICE",
            ['message'] = "Player {{msg}} does not have a weapons license.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmaoff"] = {
            ['title'] = "POLICE",
            ['message'] = "Player is not online.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmajapossui"] = {
            ['title'] = "POLICE",
            ['message'] = "Player {{msg}} already has all the licenses.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmanivel"] = {
            ['title'] = "POLICE",
            ['message'] = "You added level {{msg}} license to citizen {{msg2}}",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmaadd"] = {
            ['title'] = "POLICE",
            ['message'] = "You gave a weapons license to the citizen.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#permarsenal"] = {
            ['title'] = "POLICE",
            ['message'] = "You do not have access to the arsenal.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#erroapreenderpolicia"] = {
            ['title'] = "POLICE",
            ['message'] = "You cannot seize items from another police officer.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#erroapreenderalgema"] = {
            ['title'] = "POLICE",
            ['message'] = "The suspect is not handcuffed.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#aprenderconcluido"] = {
            ['title'] = "POLICE",
            ['message'] = "Items removed.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#valorinvalido"] = {
            ['title'] = "Events",
            ['message'] = "Invalid value.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaocriado"] = {
            ['title'] = "Events",
            ['message'] = "You created a pension of R$ {{msg}} for {{msg2}}",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaodeletado"] = {
            ['title'] = "Events",
            ['message'] = "You deleted the pension of {{msg}}",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaorecebido"] = {
            ['title'] = "Events",
            ['message'] = "You received R$ {{msg}} as pension.",
            ['type'] = "Payment",
            ['duration'] = 15000
        },
        ["#facremovererro"] = {
            ['title'] = "Events",
            ['message'] = "Faction {{msg}} not found.",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#facremover"] = {
            ['title'] = "Events",
            ['message'] = "Faction {{msg}} unlinked from the group",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#movebaufacerroqi"] = {
            ['title'] = "Events",
            ['message'] = "Error moving items from chests (Invalid Group/Faction) Only use this command if your IQ is above 5.",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#movebaufacerro"] = {
            ['title'] = "Events",
            ['message'] = "Error moving items from chests (Chest already exists).",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#movebaufac"] = {
            ['title'] = "Events",
            ['message'] = "Items moved from chest {{msg}} to {{msg2}}",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#vinculadosucessofac"] = {
            ['title'] = "Events",
            ['message'] = "Faction {{msg}} already linked to group {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#javinculadofac"] = {
            ['title'] = "Events",
            ['message'] = "Faction {{msg}} already linked to faction {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#javinculadogrupo"] = {
            ['title'] = "Events",
            ['message'] = "Group {{msg}} already linked to faction {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#eventocriado"] = {
            ['title'] = "Events",
            ['message'] = "Event successfully created.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#coletacancel"] = {
            ['title'] = "Events",
            ['message'] = "Collection canceled.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#negouabraco"] = {
            ['title'] = "Actions",
            ['message'] = "The person rejected the hug.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#finalizar"] = {
            ['title'] = "Actions",
            ['message'] = "You finished {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#finalizarerro"] = {
            ['title'] = "Actions",
            ['message'] = "You cannot finish this person.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#familiajogadoroff"] = {
            ['title'] = "Family",
            ['message'] = "The player is not online.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiarecusou"] = {
            ['title'] = "Family",
            ['message'] = "The player rejected the invitation.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaexit"] = {
            ['title'] = "Family",
            ['message'] = "You left the family {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaremovido"] = {
            ['title'] = "Family",
            ['message'] = "You were removed from the family {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiadelete"] = {
            ['title'] = "Family",
            ['message'] = "You deleted the family {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaentrou"] = {
            ['title'] = "Family",
            ['message'] = "You joined the family {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiarem"] = {
            ['title'] = "Family",
            ['message'] = "You removed passport {{msg}} from family {{msg2}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaadd"] = {
            ['title'] = "Family",
            ['message'] = "You added passport {{msg}} to family {{msg2}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaconvite"] = {
            ['title'] = "Family",
            ['message'] = "The invitation was sent.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiacriada"] = {
            ['title'] = "Family",
            ['message'] = "You created the family {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaexistente"] = {
            ['title'] = "Family",
            ['message'] = "A family with this name already exists.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#vocelavou"] = {
            ['title'] = "Washed",
            ['message'] = "You washed ${{msg}} and had ${{msg2}} fee.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#vocemultou"] = {
            ['title'] = "Fine",
            ['message'] = "You fined ${{msg}} dollars.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aguarde"] = {
            ['title'] = "Actions",
            ['message'] = "You died to passport {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#vocemorreu"] = {
            ['title'] = "Actions",
            ['message'] = "You died to passport {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculomove"] = {
            ['title'] = "Vehicle",
            ['message'] = "The vehicle is in motion.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#blockcarregar2"] = {
            ['title'] = "Actions",
            ['message'] = "You cannot carry someone who is already being carried.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockcarregar"] = {
            ['title'] = "Actions",
            ['message'] = "You cannot carry this player.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#painelaliasalterar"] = {
            ['title'] = "LEADER",
            ['message'] = "Organization alias {{msg}} changed to {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelcargomaior"] = {
            ['title'] = "PANEL",
            ['message'] = "You cannot change the permission of someone with a higher rank than yours.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#painelsetradio"] = {
            ['title'] = "PANEL",
            ['message'] = "You changed the radio channel for organization {{msg}} to {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelerrolider"] = {
            ['title'] = "PANEL",
            ['message'] = "You are not the leader of the organization.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#errofacperm"] = {
            ['title'] = "PANEL",
            ['message'] = "You do not belong to any organization.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelwebhook"] = {
            ['title'] = "PANEL",
            ['message'] = "You changed the dismissal webhook for organization {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupamerro"] = {
            ['title'] = nil,
            ['message'] = "The male outfit for organization {{msg}} was not set.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupaferro"] = {
            ['title'] = nil,
            ['message'] = "The female outfit for organization {{msg}} was not set.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupam"] = {
            ['title'] = "PANEL",
            ['message'] = "The male outfit for organization {{msg}} was set.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupaf"] = {
            ['title'] = "PANEL",
            ['message'] = "The female outfit for organization {{msg}} was set.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupave"] = {
            ['title'] = "PANEL",
            ['message'] = "The outfit for vehicle {{msg}} was set.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#setroupaveerro"] = {
            ['title'] = "PANEL",
            ['message'] = "The outfit for vehicle {{msg}} was not set.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#setroupaveerro2"] = {
            ['title'] = "Panel",
            ['message'] = "The outfit for vehicle {{msg}} was not set.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#setroupaveerro3"] = {
            ['title'] = "PANEL",
            ['message'] = "The outfit for vehicle {{msg}} was not set.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#verificaregistrado"] = {
            ['title'] = "REGISTER",
            ['message'] = "You are already registered.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#verificaregistro"] = {
            ['title'] = "REGISTER",
            ['message'] = "Registration successful.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#registronome"] = {
            ['title'] = "REGISTER",
            ['message'] = "You cannot use this name.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#registronomecerto"] = {
            ['title'] = "REGISTER",
            ['message'] = "You successfully registered the name {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#registronomejaexiste"] = {
            ['title'] = "REGISTER",
            ['message'] = "This name already exists.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#registronomeerro"] = {
            ['title'] = "REGISTER",
            ['message'] = "Error registering name.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#corpoexpulsar"] = {
            ['title'] = "Actions",
            ['message'] = "You cannot expel a body.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#morreu"] = {
            ['title'] = "Actions",
            ['message'] = "You died.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#correndotoca"] = {
            ['title'] = "Escape",
            ['message'] = "You are running from the police.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#corposolicita"] = {
            ['title'] = "Request",
            ['message'] = "Body request has been sent.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#naoconsigo"] = {
            ['title'] = "Actions",
            ['message'] = "I can't do this.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoconsigoseg"] = {
            ['title'] = "Actions",
            ['message'] = "I can't do this right now.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emcursousuario"] = {
            ['title'] = "Actions",
            ['message'] = "Action is already in progress.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#comandosusuario"] = {
            ['title'] = "Command",
            ['message'] = "This command cannot be executed by you.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#veiculobloqueado"] = {
            ['title'] = "Vehicle",
            ['message'] = "This vehicle is locked.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#acessocai"] = {
            ['title'] = "Access",
            ['message'] = "Access denied.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naosim"] = {
            ['title'] = "Actions",
            ['message'] = "You cannot confirm this.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#pagamento"] = {
            ['title'] = "Payment",
            ['message'] = "Payment of ${{msg}} made.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aprovada"] = {
            ['title'] = "Approved",
            ['message'] = "Approved.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rejeitada"] = {
            ['title'] = "Rejected",
            ['message'] = "Rejected.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#apagarfamilia"] = {
            ['title'] = "Family",
            ['message'] = "Family {{msg}} deleted.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#editaralias"] = {
            ['title'] = "Alias",
            ['message'] = "You edited the alias to {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#notificar"] = {
            ['title'] = "Notify",
            ['message'] = "You have been notified.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#eventocriado"] = {
            ['title'] = "Events",
            ['message'] = "Event created successfully.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#cancelar"] = {
            ['title'] = "Actions",
            ['message'] = "Action canceled.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#veiculomotorizado"] = {
            ['title'] = "Vehicle",
            ['message'] = "The vehicle is motorized.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#checar"] = {
            ['title'] = "Check",
            ['message'] = "Check completed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#aceite"] = {
            ['title'] = "Accepted",
            ['message'] = "You accepted the invitation.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#setpasse"] = {
            ['title'] = "battlepass",
            ['message'] = "You set the Season Pass for passport {{msg}} to level {{msg2}} with experience {{msg3}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resetpassperm"] = {
            ['title'] = "Actions",
            ['message'] = "You do not have permission to use this command.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resetpassnivel"] = {
            ['title'] = "battlepass",
            ['message'] = "You reset the Season Pass for passport {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#receberskin"] = {
            ['title'] = "battlepass",
            ['message'] = "You received the skin {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#receberdiamante"] = {
            ['title'] = "battlepass",
            ['message'] = "You received {{msg}} diamond(s).",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recebergaragem"] = {
            ['title'] = "battlepass",
            ['message'] = "You received {{msg}} garage(s).",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#subinivelpasse"] = {
            ['title'] = "battlepass",
            ['message'] = "You leveled up to level {{msg}} of the battle pass.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#conquistaadd"] = {
            ['title'] = "Conquista",
            ['message'] = "Achievement successfully added!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#conquistanaoencontrada"] = {
            ['title'] = "Conquista",
            ['message'] = "Achievement not found!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#garagemadd"] = {
            ['title'] = "Garage",
            ['message'] = "Garage successfully added.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#garagemproxima"] = {
            ['title'] = "Garage",
            ['message'] = "The garage must be near the entrance.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#semdiamantes"] = {
            ['title'] = "Garage",
            ['message'] = "You do not have {{msg}} Diamonds.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#demitirpainel"] = {
            ['title'] = "PROMOTION",
            ['message'] = "You were fired by {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#contratadopainel"] = {
            ['title'] = "PROMOTION",
            ['message'] = "You were hired by {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#promotepainel"] = {
            ['title'] = "PROMOTION",
            ['message'] = "You were promoted to {{msg}} by {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#demitirpermmaior"] = {
            ['title'] = "PERMISSION",
            ['message'] = "You cannot fire someone with a higher rank than yours.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadorpermmaior"] = {
            ['title'] = "PERMISSION",
            ['message'] = "You cannot change the permission of someone with a higher rank than yours.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadoralterarperm"] = {
            ['title'] = "PERMISSION",
            ['message'] = "You cannot change the permission to a higher level than yours.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadorsemperm"] = {
            ['title'] = "PERMISSION",
            ['message'] = "The player does not have permission.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#alterarpropriaperm"] = {
            ['title'] = "PERMISSION",
            ['message'] = "You cannot change your own permission.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#selecttitulo"] = {
            ['title'] = "Title",
            ['message'] = "You selected the title",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#selectgaragem"] = {
            ['title'] = "Garage",
            ['message'] = "Select the garage location.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoinexistente"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle does not exist.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#sistemavendasdesativado"] = {
            ['title'] = "Garage",
            ['message'] = "Sales system deactivated.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#emrota"] = {
            ['title'] = "Routes",
            ['message'] = "You are already on a route!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#erroiniciarrota"] = {
            ['title'] = "Routes",
            ['message'] = "You cannot start a route here!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entregacarga"] = {
            ['title'] = "Load",
            ['message'] = "You successfully delivered the cargo.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#erroiniciarrota"] = {
            ['title'] = "Routes",
            ['message'] = "You cannot start a route here!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#garrafavazia"] = {
            ['title'] = "Load",
            ['message'] = "Empty bottle not found.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#pagamentomotorista"] = {
            ['title'] = "Driver",
            ['message'] = "You received R${{msg}} reais.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#erroacao"] = {
            ['title'] = "Actions",
            ['message'] = "It was not possible to perform this action!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#servidorreiniciando"] = {
            ['title'] = "Server",
            ['message'] = "Server is restarting.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#chamadoatendido"] = {
            ['title'] = "Request",
            ['message'] = "Request attended.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#chamadoenviado"] = {
            ['title'] = "Request",
            ['message'] = "Request sent, please wait.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cooldowncallmedic"] = {
            ['title'] = "Request",
            ['message'] = "Please wait {{msg}} seconds to make a new call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocancel"] = {
            ['title'] = "Report",
            ['message'] = "Your request was canceled due to lack of response.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciainvalido"] = {
            ['title'] = "Report",
            ['message'] = "Invalid passport.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciatime"] = {
            ['title'] = "Report",
            ['message'] = "Please wait a moment to make a new report.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciasimesmo"] = {
            ['title'] = "Report",
            ['message'] = "You cannot report yourself.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciaok"] = {
            ['title'] = "Report",
            ['message'] = "Report successfully filed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avaliarcityperm"] = {
            ['title'] = "Feedback",
            ['message'] = "You do not have permission to rate this request.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#avaliarcity"] = {
            ['title'] = "Feedback",
            ['message'] = "Thank you for your feedback, it is very important for the development of our STAFF.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#updatecodecache"] = {
            ['title'] = "Codiguin",
            ['message'] = "Cache updated successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#codigoerro501"] = {
            ['title'] = "Codiguin",
            ['message'] = "Error updating code (501).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoerro500"] = {
            ['title'] = "Codiguin",
            ['message'] = "Error updating code (500).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoexistente"] = {
            ['title'] = "Codiguin",
            ['message'] = "Code already exists.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoatt"] = {
            ['title'] = "Codiguin",
            ['message'] = "Code successfully updated. New Code: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#codigoerro"] = {
            ['title'] = "Code",
            ['message'] = "Invalid code.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoresgate"] = {
            ['title'] = "Code",
            ['message'] = "You redeemed the code {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#codigoads"] = {
            ['title'] = "Code",
            ['message'] = "You cannot redeem the ADS code.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoadsdias"] = {
            ['title'] = "Code",
            ['message'] = "You cannot redeem the ADS code (Days).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#PassaporteInvalido"] = {
            ['title'] = "Code",
            ['message'] = "Invalid passport.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vocerecebeugrupo"] = {
            ['title'] = "battlepass",
            ['message'] = "You received the group {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#Vehicle"] = {
            ['title'] = "Code",
            ['message'] = "You received a vehicle {{msg}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#arenadollars"] = {
            ['title'] = "Arena",
            ['message'] = "Insufficient dollars.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenainvalido"] = {
            ['title'] = "Arena",
            ['message'] = "Invalid team.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenatime"] = {
            ['title'] = "Arena",
            ['message'] = "You have already chosen a team. {{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#startareanaviso"] = {
            ['title'] = "Arena",
            ['message'] = "You can only access from the default world.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenafull"] = {
            ['title'] = "Arena",
            ['message'] = "Arena is full.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#wallstreerecruited"] = {
            ['title'] = "Code",
            ['message'] = "The recruited player redeemed your code {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallstreeresgate"] = {
            ['title'] = "Code",
            ['message'] = "You redeemed the code {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallstreetperm"] = {
            ['title'] = "wallstreet",
            ['message'] = "You do not have permission to do this.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wallstreetiniciante"] = {
            ['title'] = "wallstreet",
            ['message'] = "The player in question is not a beginner.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wallstreetstart"] = {
            ['title'] = "wallstreet",
            ['message'] = "WallStreet started for the player in question.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mensagemwallstreet"] = {
            ['title'] = "wallstreet",
            ['message'] = nil,
            ['type'] = "vermelho",
            ['duration'] = 5000
        },
        ["#forcarradio"] = {
            ['title'] = "Radio",
            ['message'] = "No player found.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#retencaoin"] = {
            ['title'] = "Check",
            ['message'] = "Check-in completed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#retencaoout"] = {
            ['title'] = "Check",
            ['message'] = "Check-out completed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avisoadmrem"] = {
            ['title'] = "Warning",
            ['message'] = "Notice removed successfully.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadmtimeexists"] = {
            ['title'] = "Warning",
            ['message'] = "Time already exists.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadmtimeprox"] = {
            ['title'] = "Warning",
            ['message'] = "Time already exists.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadm"] = {
            ['title'] = "Warning",
            ['message'] = "Time already exists.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Action",
            ['message'] = "You need to be on the ground to perform this action.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Action",
            ['message'] = "You need to be on the ground to perform this action.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Action",
            ['message'] = "You need to be on the ground to perform this action.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recok"] = {
            ['title'] = "RECRUITMENT",
            ['message'] = "You can now make another recruitment announcement.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recaviso"] = {
            ['title'] = "RECRUITMENT",
            ['message'] = "Your recruitment notification will appear at {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rectime"] = {
            ['title'] = "RECRUITMENT",
            ['message'] = "Please wait {{msg}} before sending another recruitment.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#notevento"] = {
            ['title'] = "EVENT",
            ['message'] = "You cannot enter the event world while the royale event is active.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#getsource"] = {
            ['title'] = "GETSOURCE",
            ['message'] = "Source: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#idarea"] = {
            ['title'] = "IDAREA",
            ['message'] = "{{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#idareatotal"] = {
            ['title'] = "IDAREA",
            ['message'] = "Total: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#setroupa"] = {
            ['title'] = "CLOTHES",
            ['message'] = "Clothes applied successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#setaudio"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Audio added successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#remaudio"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Audio removed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hud2in"] = {
            ['title'] = "HUD",
            ['message'] = "Hud2 activated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hud2out"] = {
            ['title'] = "HUD",
            ['message'] = "Hud2 deactivated.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#hud2perm"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "You do not have permission to do this.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dvp"] = {
            ['title'] = "Pds",
            ['message'] = "All peds have been deleted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#salarioprefeito"] = {
            ['title'] = "MAYOR",
            ['message'] = nil,
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#dvo"] = {
            ['title'] = "Dv",
            ['message'] = "All objects have been deleted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#checkout"] = {
            ['title'] = "CHECKOUT",
            ['message'] = "Checkout generated successfully, URL copied automatically!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#checkouterro"] = {
            ['title'] = "CHECKOUT",
            ['message'] = "Error generating checkout!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#delobjeto"] = {
            ['title'] = "ADMIN",
            ['message'] = "{{msg}} entities deleted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#license"] = {
            ['title'] = "License",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#discordid"] = {
            ['title'] = "Discord",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#sendoprocurado"] = {
            ['title'] = "Wanted",
            ['message'] = "You are being searched, please wait {{msg}} to perform this action again.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#procurado"] = {
            ['title'] = "Wanted",
            ['message'] = "You are being searched, please wait {{msg}} to perform this action again.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#roupascancel"] = {
            ['title'] = "CANCEL",
            ['message'] = "You cannot do this right now.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#robberycancel"] = {
            ['title'] = "ROBBERY",
            ['message'] = "You cannot do this right now.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#remadminternoout"] = {
            ['title'] = "WARNING",
            ['message'] = "Warnings blocked",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#remadminternoin"] = {
            ['title'] = "WARNING",
            ['message'] = "Warnings unblocked",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#dengineerro"] = {
            ['title'] = "ADMIN",
            ['message'] = "Player not found.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#dengine"] = {
            ['title'] = "ADMIN",
            ['message'] = "You need to provide the player's ID.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#tptomex1"] = {
            ['title'] = "ADMIN",
            ['message'] = "You cannot teleport a player who is in X1.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#speechin"] = {
            ['title'] = "SPEECH",
            ['message'] = "Speech activated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#speechout"] = {
            ['title'] = "SPEECH",
            ['message'] = "Speech deactivated.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#banglobal"] = {
            ['title'] = "Ban",
            ['message'] = "Player banned globally.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#banglobalerro"] = {
            ['title'] = "Ban",
            ['message'] = "Error banning player globally.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#purchased"] = {
            ['title'] = "purchased",
            ['message'] = "Player {{msg}} {{msg2}} spent R$ {{msg3}} on purchases.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#KickError"] = {
            ['title'] = "Message",
            ['message'] = "You did not enter a kick message.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#unvip"] = {
            ['title'] = "VIP",
            ['message'] = "Passport {{msg}} removed from group {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ItemAreaTime"] = {
            ['title'] = "Item",
            ['message'] = "Please wait {{msg}} seconds to use again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ItemAreadistance"] = {
            ['title'] = "Item",
            ['message'] = "You cannot give an item in an area larger than 40.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#createobject1"] = {
            ['title'] = "CREATEOBJECT",
            ['message'] = "You activated object creation.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#createobject2"] = {
            ['title'] = "CREATEOBJECT",
            ['message'] = "You deactivated object creation.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mudarnome1"] = {
            ['title'] = "Passport",
            ['message'] = "Passport updated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mudarnome2"] = {
            ['title'] = "Passport",
            ['message'] = "Names with emojis are not allowed.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#changeid"] = {
            ['title'] = "CHANGEID",
            ['message'] = "Passport changed to {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#jumpIn"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump activated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#jumpOut"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump deactivated.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#freezeIn"] = {
            ['title'] = "Freeze",
            ['message'] = "Freeze activated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#freezeOut"] = {
            ['title'] = "Freeze",
            ['message'] = "Freeze deactivated.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#godModeIn"] = {
            ['title'] = "Godmode",
            ['message'] = "Godmode activated successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#godModeOut"] = {
            ['title'] = "Godmode",
            ['message'] = "Godmode deactivated successfully.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#deathTimer"] = {
            ['title'] = "DEATHTIMER",
            ['message'] = "DeathTimer changed to {{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#peso"] = {
            ['title'] = "WEIGHT",
            ['message'] = "Weight changed to {{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ugroups"] = {
            ['title'] = "UGROUPS ({{Msg2}})",
            ['message'] = "{{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#clearinv"] = {
            ['title'] = "CLEARINV",
            ['message'] = "Cleanup completed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#gem"] = {
            ['title'] = "Diamonds",
            ['message'] = "Diamonds delivered.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#item2"] = {
            ['title'] = "item2",
            ['message'] = "You set {{msg}}x {{msg2}} on passport {{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#world"] = {
            ['title'] = "WORLD",
            ['message'] = "World: {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#delete"] = {
            ['title'] = "Delete",
            ['message'] = "Character {{msg}} deleted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wl"] = {
            ['title'] = "WHITELIST",
            ['message'] = "WHITELIST FOR LICENSE {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unwl"] = {
            ['title'] = "WHITELIST",
            ['message'] = "REMOVED WHITELIST FOR ID {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#soltar"] = {
            ['title'] = "PRISON",
            ['message'] = "Passport {{msg}} released.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#kick"] = {
            ['title'] = "Kick",
            ['message'] = "Passport {{msg}} kicked.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#kicksource"] = {
            ['title'] = "Kick",
            ['message'] = "Source {{msg}} kicked.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#applyBan"] = {
            ['title'] = "Ban",
            ['message'] = "Passport {{msg}} banned.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#applyAdv"] = {
            ['title'] = "Ban",
            ['message'] = "Passport {{msg}} {{msg2}} Reason: {{msg3}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#unban"] = {
            ['title'] = "UNBAN",
            ['message'] = "Passport {{msg}} unbanned.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#remadv"] = {
            ['title'] = "BAN",
            ['message'] = "Passport {{msg}} adv removed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#AdminUnban"] = {
            ['title'] = "Admin Unban",
            ['message'] = "Passport {{msg}} unbanned.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#unbanid"] = {
            ['title'] = "Unbanid",
            ['message'] = "Account ID {{msg}} unbanned.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#bansource"] = {
            ['title'] = "Ban Source",
            ['message'] = "Passport {{msg}} banned.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#addslot"] = {
            ['title'] = "SLOTS",
            ['message'] = "You increased the character slots for Passport {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#token"] = {
            ['title'] = "TOKEN",
            ['message'] = "You have already linked your token.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#group"] = {
            ['title'] = "GROUP",
            ['message'] = "You do not have permission to set this group.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#groupPass"] = {
            ['title'] = "GROUP PASSPORT",
            ['message'] = "Added {{msg}} to passport {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ungroup"] = {
            ['title'] = "UNGROUP",
            ['message'] = "Removed {{msg}} from passport {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#players"] = {
            ['title'] = "ONLINE",
            ['message'] = "Connected Players: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#itemall"] = {
            ['title'] = "ItemALL",
            ['message'] = "Delivery completed.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#lista"] = {
            ['title'] = "Online",
            ['message'] = "Total Online: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#id"] = {
            ['title'] = "ID",
            ['message'] = "ID: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#quake"] = {
            ['title'] = "earthquake",
            ['message'] = "Geologists reported to our government unit that an earthquake of magnitude 60 on the Richter Scale was detected, seek shelter until it passes.",
            ['type'] = "Warning",
            ['duration'] = 60000
        },
        ["#remcar"] = {
            ['title'] = "ADDCAR",
            ['message'] = "Vehicle successfully removed.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#mute"] = {
            ['title'] = "OFFLINE",
            ['message'] = "Player is not in the city.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passMute"] = {
            ['title'] = "MUTED PASSPORT",
            ['message'] = "Passport {{msg}} has been MUTED.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#muteAdv"] = {
            ['title'] = "MUTED PASSPORT ADV",
            ['message'] = "You have been muted.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passUnmute"] = {
            ['title'] = "UNMUTED PASSPORT",
            ['message'] = "Passport {{msg}} has been UNMUTED.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unmuteAdv"] = {
            ['title'] = "UNMUTED PASSPORT ADV",
            ['message'] = "You have been unmuted.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mundo"] = {
            ['title'] = "WORLD",
            ['message'] = "World: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#mundoNAO"] = {
            ['title'] = "CHANGE WORLD",
            ['message'] = "You cannot change to a dead world.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#testDriveMundoNAO"] = {
            ['title'] = "TEST DRIVE",
            ['message'] = "You cannot change worlds while in a test drive.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entrouAdv"] = {
            ['title'] = "Entered",
            ['message'] = "You entered world {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mundoNAGORA"] = {
            ['title'] = "WORLD",
            ['message'] = "You cannot change worlds right now.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mundotoxico"] = {
            ['title'] = "TOXIC WORLD",
            ['message'] = "You entered the toxic world.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#resetseasonpass"] = {
            ['title'] = "RESET PASS",
            ['message'] = "You reset the battle pass.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#skinstock"] = {
            ['title'] = "UPDATED SKIN STOCK",
            ['message'] = "You updated the stock for skin {{msg}} to {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#allstock"] = {
            ['title'] = "UPDATED SKIN STOCK",
            ['message'] = "You updated the stock of skins to {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mundopadrao"] = {
            ['title'] = "DEFAULT WORLD",
            ['message'] = "You entered the default world.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#toxico"] = {
            ['title'] = "TOXIC PASSPORT",
            ['message'] = "You set passport {{msg}} as toxic.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#verificar"] = {
            ['title'] = "VERIFY",
            ['message'] = "Discord: {{msg}} Characters: {{msg2}}",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#untoxico"] = {
            ['title'] = "SET TO NORMAL",
            ['message'] = "You set passport {{msg}} as normal.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#newblip"] = {
            ['title'] = "NEW BLIP",
            ['message'] = "You created the blip {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#removeblip"] = {
            ['title'] = "REMOVE BLIP",
            ['message'] = "You removed the blip {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#blipname"] = {
            ['title'] = "BLIP NAME",
            ['message'] = "You changed the name of the blip {{msg}} to {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#wipe"] = {
            ['title'] = "Wipe",
            ['message'] = "Passport {{msg}} wiped.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#ajudaRec"] = {
            ['title'] = "Recruitment Help",
            ['message'] = "{{msg}} Novices in the city! You need to help with recruitment!",
            ['type'] = "Attention",
            ['duration'] = 7500
        },
        ["#comandoNpermitido"] = {
            ['title'] = "Permission",
            ['message'] = "You don't have permission to use this command, get a VIP in our store.",
            ['type'] = "Warning",
            ['duration'] = 7500
        },
        ["#ney"] = {
            ['title'] = "Ney",
            ['message'] = "Did you really try to take down a GOD? MORE RESPECT MERE MORTAL",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#patrimonio"] = {
            ['title'] = "Wealth",
            ['message'] = "Player: {{msg}} Wealth: R$ {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 60000*2
        },
        ["#passNecontrado"] = {
            ['title'] = "Passport",
            ['message'] = "Passport not found.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#entrouArena"] = {
            ['title'] = "Arena",
            ['message'] = "You entered arena {{msg}} Number {{msg2}} on team {{msg3}}.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#arenaCheia"] = {
            ['title'] = "Arena",
            ['message'] = "Arena full.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#escolheuTime"] = {
            ['title'] = "Arena",
            ['message'] = "You already chose a team.{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#timeInvalido"] = {
            ['title'] = "Arena",
            ['message'] = "Invalid team",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#semdoletas"] = {
            ['title'] = "Money",
            ['message'] = "Insufficient dollars.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entrounoGun"] = {
            ['title'] = "GunGame",
            ['message'] = "You entered GunGame. Wait for {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#esperaPlayerGun"] = {
            ['title'] = "GunGame",
            ['message'] = "You entered GunGame. Wait for 7 more players.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#saiuGun"] = {
            ['title'] = "GunGame",
            ['message'] = "You left GunGame",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ganhouCorridaArmada"] = {
            ['title'] = "GunGame",
            ['message'] = "{{msg}} won the armed race.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#saiuCorridaArmada"] = {
            ['title'] = "GunGame",
            ['message'] = "You left the armed race.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#manuInvestimento"] = {
            ['title'] = "Investment",
            ['message'] = "Emergency Maintenance on Investments, Only withdrawals possible.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#sendCall"] = {
            ['title'] = "TICKETS",
            ['message'] = "The description cannot exceed 255 characters.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#msgLonga"] = {
            ['title'] = "CHAT",
            ['message'] = "Message too long.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#DeleteMessage"] = {
            ['title'] = "CHAT",
            ['message'] = "Message deleted.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#produAndamento"] = {
            ['title'] = "Production",
            ['message'] = "Production in progress.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#itemDanificado"] = {
            ['title'] = "Item",
            ['message'] = "Item damaged.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#mochilaFull"] = {
            ['title'] = "Backpack",
            ['message'] = "Backpack full.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#addbuff"] = {
            ['title'] = "ADDBUFF",
            ['message'] = "Buff successfully added.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rembuff"] = {
            ['title'] = "ADDBUFF",
            ['message'] = "Buff successfully removed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#startFarm"] = {
            ['title'] = "FARM",
            ['message'] = "You started AFK farming, just wait 5 minutes to receive your items.",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#suggFarm"] = {
            ['title'] = "FARM",
            ['message'] = "You can farm while AFK without dying from hunger or thirst!",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#condEntrega"] = {
            ['title'] = "Work",
            ['message'] = "You cannot be in a vehicle to make the delivery.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#cancelWork"] = {
            ['title'] = "Job",
            ['message'] = "Job canceled.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#startMining"] = {
            ['title'] = "MINING",
            ['message'] = "You started mining, press F6 to finish.",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#suggMining"] = {
            ['title'] = "MINING",
            ['message'] = "You can mine while AFK without dying from hunger or thirst!",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#recebeuItem"] = {
            ['title'] = "FARM",
            ['message'] = "You received {{msg}} x{{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#picaretaMissing"] = {
            ['title'] = "Pickaxe",
            ['message'] = "Pickaxe not found.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#axeMissing"] = {
            ['title'] = "Axe",
            ['message'] = "Axe not found.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#recebeMining"] = {
            ['title'] = "MINING",
            ['message'] = "You received R$ {{msg}}.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#nLocalEntrega"] = {
            ['title'] = "Delivery",
            ['message'] = "You are not at the delivery location.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#calmaEntrega"] = {
            ['title'] = "Delivery",
            ['message'] = "You are making deliveries too quickly.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#bonusfarm"] = {
            ['title'] = "FARM",
            ['message'] = "Bonus of {{msg}}x set successfully!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#semRota"] = {
            ['title'] = "Routes",
            ['message'] = "No route available for your job!",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#erroRotaCompart"] = {
            ['title'] = "Routes",
            ['message'] = "Shared routes have issues, try recreating the group.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#longeRota"] = {
            ['title'] = "Routes",
            ['message'] = "You are too far from the route!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vagaFull"] = {
            ['title'] = "GARAGE",
            ['message'] = "All spots are occupied.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#semCarroApreendido"] = {
            ['title'] = "Vehicle",
            ['message'] = "You don't have any impounded vehicles.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#tpGaragem"] = {
            ['title'] = "LIMBO",
            ['message'] = "You fell into the limbo and were teleported to the nearest garage.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#permisGaragem"] = {
            ['title'] = "Garage",
            ['message'] = "You don't have permission to access this garage.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#aluguelAtrasado"] = {
            ['title'] = "Garage",
            ['message'] = "Rent overdue, visit a Real Estate Broker.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculoVencido"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle {{msg}} expired.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#repNegativa"] = {
            ['title'] = "REPUTATION",
            ['message'] = "Your reputation is negative: {{msg}}. You will pay 20% more for the release.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#suggDesmanche"] = {
            ['title'] = "Garage",
            ['message'] = "Did you know that as a VIP you don't pay dismantling fees? Get it now in our store.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculoLiberado"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle released.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#pagamentoConcluido"] = {
            ['title'] = "Garage",
            ['message'] = "Payment completed.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#propertiesTax"] = {
            ['title'] = "Home",
            ['message'] = "Payment completed.<br>New tax date: <b>{{msg}}</b>",
            ['type'] = "House",
            ['duration'] = 15000
        },
        ["#blockPropertyTax"] = {
            ['title'] = "Home",
            ['message'] = "You can only advance the mortgage in the next 30 days",
            ['type'] = "House",
            ['duration'] = 15000
        },
        ["#taxaRenovada"] = {
            ['title'] = "Garage",
            ['message'] = "Fees renewed (VIP) successfully.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#jaPossuiVeiculo"] = {
            ['title'] = "Garage",
            ['message'] = "{{msg}} {{msg2}} already owns this model of vehicle.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#transfConcluida"] = {
            ['title'] = "Garage",
            ['message'] = "Transfer completed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#veiculoModificado"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle modified by {{msg}}% more speed, enjoy the new machine.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#suggCarroVelo"] = {
            ['title'] = "Garage",
            ['message'] = "Don't you have VIP? Did you know that with VIP your car gains up to 50% more speed? Get it now in our store.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#warningMulta"] = {
            ['title'] = "Garage",
            ['message'] = "You have R${{msg}} in fines to pay, settle all your debts in the bank to withdraw the vehicle.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aluguelConcluido"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle {{msg}} rental completed.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#rastreadorAtivado"] = {
            ['title'] = "Tracker",
            ['message'] = "The vehicle tracker has been activated for 30 seconds, remember that if the vehicle is moving, the location may be inaccurate.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#regasteVeiculo"] = {
            ['title'] = "Vehicle",
            ['message'] = "The insurer has recovered your vehicle and it is now available for pickup.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#esperaRastrear"] = {
            ['title'] = "Garage",
            ['message'] = "Tracker can only be activated every 60 seconds.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#rastreadorDesativado"] = {
            ['title'] = "Garage",
            ['message'] = "Tracker is deactivated.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#taxaAutomatica"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle fee paid automatically, remove the vehicle from the garage again.",
            ['type'] = "Vehicle",
            ['duration'] = 7500
        },
        ["#taxaAtrasada"] = {
            ['title'] = "Garage",
            ['message'] = "Vehicle fee overdue.",
            ['type'] = "Vehicle",
            ['duration'] = 7500
        },
        ["#completeTimer"] = {
            ['title'] = "Timer",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 1000
        },
        ["#addcar"] = {
            ['title'] = "ADDCAR",
            ['message'] = "Vehicle successfully added.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#totalVeD"] = {
            ['title'] = "VeD",
            ['message'] = "Total Vehicles: {{msg}} | Total Deleted: {{msg2}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#lockVeic"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle locked.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#openVeic"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle unlocked.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoEncontrado"] = {
            ['title'] = "Vehicle",
            ['message'] = "The vehicle from your contract has been sent to the Impound, and Lester said you can sign a new contract whenever you want.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#veiculoRegistrado"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle registered.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoJaLista"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle is already on the list.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#passaporteIdentity"] = {
            ['title'] = "Passport",
            ['message'] = "Passport: {{msg}} Name: {{msg2}} {{msg3}} No: {{msg4}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#passaporteNome"] = {
            ['title'] = "Passport",
            ['message'] = "Passport: 9.999 Name: {{msg}} No: {{msg2}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#veicArrest"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle seized.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veicArrested"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle is already seized.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#receivedGift"] = {
            ['title'] = "HUB",
            ['message'] = "You received a gift, go to the hub (ESC) to redeem it.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#semOrg"] = {
            ['title'] = "PANEL",
            ['message'] = "You are not in any organization yet, join one to open the panel.",
            ['type'] = "Work",
            ['duration'] = 10000
        },
        ["#recebeRecompensa"] = {
            ['title'] = "HUB",
            ['message'] = "You received {{msg}}x {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#novoChamado"] = {
            ['title'] = "Calls",
            ['message'] = "A new call has been opened! [F1] Total calls opened {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#notifyChamadasOff"] = {
            ['title'] = "Calls",
            ['message'] = "Call notifications disabled.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notifyChamadasOn"] = {
            ['title'] = "Calls",
            ['message'] = "Call notifications enabled.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#seuChamadoNao"] = {
            ['title'] = "Calls",
            ['message'] = "You cannot answer your own call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#playerOff"] = {
            ['title'] = "Calls",
            ['message'] = "Player offline.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#esperaChamado"] = {
            ['title'] = "Calls",
            ['message'] = "You need to wait {{msg}} to respond to another call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#esperaFinalizaChamado"] = {
            ['title'] = "Calls",
            ['message'] = "You need to wait {{msg}} seconds to finish the call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadoOutroAdmin"] = {
            ['title'] = "Calls",
            ['message'] = "You cannot finish another admin's call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#seuChamadoNao"] = {
            ['title'] = "Calls",
            ['message'] = "You cannot finish your own call.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamondRecivedAtendimento"] = {
            ['title'] = "Thank You",
            ['message'] = "You just received {{msg}} 💎 as a gift for answering {{msg2}}'s call!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#bonusFinalizacao"] = {
            ['title'] = "Calls",
            ['message'] = "You did not receive a bonus for finishing this call.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#acaoNEncontrada"] = {
            ['title'] = "Actions",
            ['message'] = "Action not found/Full.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#esperaAcao"] = {
            ['title'] = "PANEL",
            ['message'] = "Wait {{msg}} seconds to perform a new action.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#inicianteOuDesemp"] = {
            ['title'] = "RECRUITMENT",
            ['message'] = "The player must be a Beginner or Unemployed.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#tryContratar"] = {
            ['title'] = "Recruitment",
            ['message'] = "You tried to hire ID {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#orgRecivedDiamond"] = {
            ['title'] = "RECRUITMENT",
            ['message'] = "Your organization won 🟡 x{{msg}} points for recruiting a beginner!",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#contrataPassport"] = {
            ['title'] = "Passport",
            ['message'] = "You hired ID {{msg}} for {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naoPSubchefe"] = {
            ['title'] = "Promotion",
            ['message'] = "You cannot promote a Sub-Chief.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#promovePassport"] = {
            ['title'] = "Promotion",
            ['message'] = "You promoted ID: {{msg}} to {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rebaixaPassport"] = {
            ['title'] = "Passport",
            ['message'] = "You demoted ID: {{msg}} to {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naodDemitirVc"] = {
            ['title'] = "Passport",
            ['message'] = "You cannot dismiss yourself.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#demitiuPassport"] = {
            ['title'] = "Passport",
            ['message'] = "You dismissed ID: {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#vcSacou"] = {
            ['title'] = "Money",
            ['message'] = "You withdrew: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#qntInvalida"] = {
            ['title'] = "Money",
            ['message'] = "Invalid quantity.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vcRemoveu"] = {
            ['title'] = "Money",
            ['message'] = "You removed: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#vcDepositou"] = {
            ['title'] = "Money",
            ['message'] = "You deposited: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#perdeLimpar"] = {
            ['title'] = "Deposit",
            ['message'] = "By clearing the money in the transfer, you lost 5% of the total amount.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#setleader"] = {
            ['title'] = "LEADER",
            ['message'] = "You set {{msg}} as the leader of {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#orgNEncontrada"] = {
            ['title'] = "LEADER",
            ['message'] = "Organization not found.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setarpontosfac"] = {
            ['title'] = "PANEL",
            ['message'] = "You added {{msg}} points to the group {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nomeErradoGrupo"] = {
            ['title'] = "PANEL",
            ['message'] = "You didn't type the group name correctly, fool.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#limpouGrupo"] = {
            ['title'] = "PANEL",
            ['message'] = "You cleared the group {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#msgRecentemente"] = {
            ['title'] = "PANEL",
            ['message'] = "You already sent a message recently.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#msgPara"] = {
            ['title'] = "PANEL",
            ['message'] = "You sent a message to {{msg}} {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#discordParaGrupo"] = {
            ['title'] = "PANEL",
            ['message'] = "You added the discord {{msg}} to the group {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nomeGrupoIncorreto"] = {
            ['title'] = "PANEL",
            ['message'] = "You typed the group name incorrectly.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#deletesquad"] = {
            ['title'] = "Squad",
            ['message'] = "You successfully deleted the squad!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#maxPSquad"] = {
            ['title'] = "Squad",
            ['message'] = "Squad is at maximum member capacity!",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#entrouSquad"] = {
            ['title'] = "Squad",
            ['message'] = "You joined the {{msg}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#membroEntrouSquad"] = {
            ['title'] = "Squad",
            ['message'] = "Member {{msg}} joined the squad.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#nomeSquadAlterado"] = {
            ['title'] = "Squad",
            ['message'] = "The squad name has been changed to {{msg}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#cargoMembroAlterado"] = {
            ['title'] = "Squad",
            ['message'] = "The rank of member {{msg}} has been changed to {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#membroRetirado"] = {
            ['title'] = "Squad",
            ['message'] = "Member {{msg}} was removed from the squad {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#tempoMorteSquad"] = {
            ['title'] = "Squad",
            ['message'] = "The death timer for the squad {{msg}} has been changed to {{msg2}} seconds!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#controleCruzeiroDesativado"] = {
            ['title'] = "Cruise",
            ['message'] = "Cruise control deactivated.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#controleCruzeiroAtivado"] = {
            ['title'] = "Cruise",
            ['message'] = "Cruise control activated.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#embarcDesancorada"] = {
            ['title'] = "Cruise",
            ['message'] = "Ship unanchored.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#embarcAncorada"] = {
            ['title'] = "Cruise",
            ['message'] = "Ship anchored.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#esperaComando"] = {
            ['title'] = "CombatLog",
            ['message'] = "Please wait {{msg}} seconds before using the command again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#saiaPropriPrivada"] = {
            ['title'] = "Private property",
            ['message'] = "You are in a private property, leave immediately.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#usaBandage"] = {
            ['title'] = "Item",
            ['message'] = "Applied bandages to {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#semFerimento"] = {
            ['title'] = "Injuries",
            ['message'] = "No injuries found.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#injuries"] = {
            ['title'] = "Injuries",
            ['message'] = "{{msg}}",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#drogaNPura"] = {
            ['title'] = "DRUGS",
            ['message'] = "I think this drug wasn't pure...",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#marcacaoAtivada"] = {
            ['title'] = "Marks",
            ['message'] = "Markings activated.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#marcacaoDesativada"] = {
            ['title'] = "Robberies",
            ['message'] = "Markings deactivated.",
            ['type'] = "Illegal",
            ['duration'] = 3000
        },
        ["#roubarModoGuerra"] = {
            ['title'] = "Robberies",
            ['message'] = "You can only rob if you're in WAR MODE.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#naoRoubarSafe"] = {
            ['title'] = "SAFE MODE",
            ['message'] = "You can't rob while in safe mode.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#separar"] = {
            ['title'] = "Broke up",
            ['message'] = "{{msg}} {{msg2}} and {{msg3}} {{msg4}} broke up, come here, cattle.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#relationship"] = {
            ['title'] = "Relationship",
            ['message'] = "Please wait {{msg}} seconds.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#iniciouRelacionamento"] = {
            ['title'] = "Relationship",
            ['message'] = "{{msg}} {{msg2}} started a relationship with {{msg3}} {{msg4}}",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#solteiro"] = {
            ['title'] = "Relationship",
            ['message'] = "{{msg}} {{msg2}} and {{msg3}} {{msg4}} broke up, they can now say Hi, stranger.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#tentandoTrair"] = {
            ['title'] = "Relationship",
            ['message'] = "Hey {{msg}} {{msg2}} cheater, {{msg3}} {{msg4}} is trying to cheat on you.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#meterGaia"] = {
            ['title'] = "Relationship",
            ['message'] = "Hey {{msg}} {{msg2}} cheater, {{msg3}} {{msg4}} tried to put Gaia on you.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#repcheck"] = {
            ['title'] = "REPUTATION",
            ['message'] = "You gave a 👍 LIKE to {{msg}} {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repRecived"] = {
            ['title'] = "REPUTATION",
            ['message'] = "You just received a 👍 LIKE from {{msg}} {{msg2}}{{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repEmEspera"] = {
            ['title'] = "REPUTATION",
            ['message'] = "Reputation is on cooldown.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#likeDado"] = {
            ['title'] = "REPUTATION",
            ['message'] = "You gave a 👍 LIKE to {{msg}} {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#likeRecivedFrom"] = {
            ['title'] = "REPUTATION",
            ['message'] = "You just received a 👍 LIKE from {{msg}} {{msg2}}{{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#killNewbieTax"] = {
            ['title'] = "NEWBIE",
            ['message'] = "You paid a fee of R${{msg}} for killing a Newbie.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#repAdicionada"] = {
            ['title'] = "REPUTATION",
            ['message'] = "Reputation added.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unlikeRecived"] = {
            ['title'] = "REPUTATION",
            ['message'] = "You received a dislike from {{msg}} {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#me"] = {
            ['title'] = "REPUTATION",
            ['message'] = "Please wait {{msg}} seconds before using it again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#qruAtivado"] = {
            ['title'] = "QRU",
            ['message'] = "QRU activated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#qruDesativado"] = {
            ['title'] = "QRU",
            ['message'] = "QRU deactivated.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#roupaAplicada"] = {
            ['title'] = "Item",
            ['message'] = "Clothes applied.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#roupaNEncontrada"] = {
            ['title'] = "item",
            ['message'] = "Clothes not found.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#roupaSalva"] = {
            ['title'] = "item",
            ['message'] = "Clothes saved.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#morreuPara"] = {
            ['title'] = "Death",
            ['message'] = "You died from passport {{msg}}.",
            ['type'] = "Warning",
            ['duration'] = 60000*5
        },
        ["#aguarde"] = {
            ['title'] = "Wait",
            ['message'] = "Please wait {{msg}} seconds.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semPermissaoVip"] = {
            ['title'] = "Permission",
            ['message'] = "You do not have permission to use this command, get a VIP from our store.",
            ['type'] = "Warning",
            ['duration'] = 7500
        },
        ["#tpFarmAfk"] = {
            ['title'] = "AFK",
            ['message'] = "You have been teleported to the AFK farm.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#esperaNovoReport"] = {
            ['title'] = "REPORT",
            ['message'] = "You have reported recently, please wait {{msg}} seconds to report again.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#jogadorReportouX"] = {
            ['title'] = "REPORT",
            ['message'] = "Player {{msg}} reported player {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#vcReportouX"] = {
            ['title'] = "REPORT",
            ['message'] = "You reported player {{msg}}.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#comandoMorto"] = {
            ['title'] = "CUSTOM SPAM",
            ['message'] = "You cannot use this dead command.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#setCustomSpawn"] = {
            ['title'] = "CUSTOM SPAM",
            ['message'] = "You successfully set the custom spawn.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#vipMessage"] = {
            ['title'] = "VIP",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#alarme"] = {
            ['title'] = "ALARM",
            ['message'] = "{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#alarmeDesativado"] = {
            ['title'] = "ALARM",
            ['message'] = "Alarm deactivated.",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#alarmeAtivado"] = {
            ['title'] = "ALARM",
            ['message'] = "Alarm activated.",
            ['type'] = "Confirmed",
            ['duration'] = 7000
        },
        ["#permissaoAlarme"] = {
            ['title'] = "ALARM",
            ['message'] = "You do not have permission for this.",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#blipmark"] = {
            ['title'] = "blip",
            ['message'] = "{{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#airdrop"] = {
            ['title'] = "Drop",
            ['message'] = "An airdrop was launched and marked on your map!",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#airdropOpen"] = {
            ['title'] = "Please wait",
            ['message'] = "Please wait {{msg}} seconds before opening another airdrop!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#airdropOpening"] = {
            ['title'] = "Opening",
            ['message'] = "The airdrop is being opened!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#airdropOpened"] = {
            ['title'] = "Opened",
            ['message'] = "The airdrop has been opened!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#thisAirdrop"] = {
            ['title'] = "Please wait",
            ['message'] = "(Please wait %.0f seconds to open this airdrop!){{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#reposed"] = {
            ['title'] = "Wait",
            ['message'] = "You applied {{msg}} minutes of rest.",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#treatment"] = {
            ['title'] = "Treatment",
            ['message'] = "Treatment started.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#precisaGauze"] = {
            ['title'] = "Item",
            ['message'] = "Needs 1x {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#dmgResult"] = {
            ['title'] = "Result",
            ['message'] = "{{msg}}",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#removePlaster"] = {
            ['title'] = "Hospital",
            ['message'] = "You can now remove the plaster.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#needSyringe"] = {
            ['title'] = "Hospital",
            ['message'] = "Needs 3x {{msg}}.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#waitExtraction"] = {
            ['title'] = "Extraction",
            ['message'] = "Extraction is not possible right now, the player is either still recovering or has recently been injured.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#weakImmuSyst"] = {
            ['title'] = "Hospital",
            ['message'] = "The patient's immune system is too weak.",
            ['type'] = "Hospital",
            ['duration'] = 10000
        },
        ["#removedItens"] = {
            ['title'] = "Item",
            ['message'] = "Items removed.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#nothingFound"] = {
            ['title'] = "Item",
            ['message'] = "Nothing found.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#systemDecryption"] = {
            ['title'] = "Decryption",
            ['message'] = "System decryption progress started, it will be completed in {{msg}} seconds.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#damagedItem"] = {
            ['title'] = "Item",
            ['message'] = "{{msg}} damaged.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#needItemX"] = {
            ['title'] = "Item",
            ['message'] = "Need {{msg}}x {{msg2}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#contingentUnav"] = {
            ['title'] = "Contingent",
            ['message'] = "Contingent unavailable.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vaultEmpty"] = {
            ['title'] = "Vault",
            ['message'] = "Vault is empty, please wait {{msg}} seconds.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#decryptionInProg"] = {
            ['title'] = "Decryption",
            ['message'] = "Decryption in progress, please wait {{msg}} seconds.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#salary"] = {
            ['title'] = "salary",
            ['message'] = "You received R${{msg}} reais from {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#salaryVip"] = {
            ['title'] = "salary",
            ['message'] = "You received R${{msg}} reais from {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#noMoneyWallet"] = {
            ['title'] = "Wallet",
            ['message'] = "The player does not have money in their wallet.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#raceWinner"] = {
            ['title'] = "Race",
            ['message'] = "The race is over, the winner was {{msg}} #{{msg2}}.",
            ['type'] = "Party",
            ['duration'] = 10000
        },
        ["#dirtyFixMoney"] = {
            ['title'] = "RACE",
            ['message'] = "You received R$5000 for participating in the race.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#dirtyMoney"] = {
            ['title'] = "RACE",
            ['message'] = "You received R${{msg}} for participating in the race.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#clandestineRacer"] = {
            ['title'] = "RACE",
            ['message'] = "We detected an illegal racer on the streets.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#noRadio"] = {
            ['title'] = "RADIO",
            ['message'] = "You do not have a radio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enteredFrequency"] = {
            ['title'] = "RADIO",
            ['message'] = "You entered frequency {{msg}} MHz.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#leaveRadio"] = {
            ['title'] = "RADIO",
            ['message'] = "You left the radio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#maxCaracter"] = {
            ['title'] = "REGISTER",
            ['message'] = "You cannot exceed 255 characters.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#punished"] = {
            ['title'] = "PUNISHMENT",
            ['message'] = "You have been TEMPORARILY PUNISHED, you cannot leave the ISLAND.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#enteredSafeZ"] = {
            ['title'] = "Safezone",
            ['message'] = "You entered the safe zone.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#leaveSafeZ"] = {
            ['title'] = "Safezone",
            ['message'] = "You left the safe zone.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#enteredSafeMode"] = {
            ['title'] = "Safezone",
            ['message'] = "You entered safe mode.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#leaveSafeMode"] = {
            ['title'] = "Safezone",
            ['message'] = "You left safe mode, it has been canceled.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#safeModeOff"] = {
            ['title'] = "Safezone",
            ['message'] = "You are out of safe mode.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#onOffSafe"] = {
            ['title'] = "Safezone",
            ['message'] = "You can only turn on/off in a safe zone.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#goPier"] = {
            ['title'] = "Pier",
            ['message'] = "Go to the pier.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#fNewbie"] = {
            ['title'] = "NEWBIE",
            ['message'] = "Oh... What a shame! But don't worry, you haven't lost anything by still getting the hang of it! Don't give up, let's go again!",
            ['type'] = "Warning",
            ['duration'] = 35000
        },
        ["#safeModeWarning"] = {
            ['title'] = "SAFE MODE",
            ['message'] = "You are in safe mode for your protection. To leave this mode, just enter any job!",
            ['type'] = "Attention",
            ['duration'] = 15000
        },
        ["#leaveWarMode"] = {
            ['title'] = "WAR MODE",
            ['message'] = "You left war mode.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emptyFieldWarning"] = {
            ['title'] = "Field",
            ['message'] = "Do not leave any fields empty.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#safeZoneChange"] = {
            ['title'] = "SafeZone",
            ['message'] = "You need to be in a SAFEZONE to enter/leave the safe world.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enteredWarMode"] = {
            ['title'] = "WAR MODE",
            ['message'] = "You entered war mode.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#belowMinValue"] = {
            ['title'] = "Denied",
            ['message'] = "Value below the minimum value.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#playerXHaveSkin"] = {
            ['title'] = "Warning",
            ['message'] = "{{msg}} {{msg2}} already has this skin.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#playerHaveSkin"] = {
            ['title'] = "Attention",
            ['message'] = "You already have this skin.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#transferCTax"] = {
            ['title'] = "Success",
            ['message'] = "Transfer completed, you received {{msg}} Gems, fee charged {{msg2}} Gems.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#transferC"] = {
            ['title'] = "Success",
            ['message'] = "Transfer completed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#dontHaveGem"] = {
            ['title'] = "Denied",
            ['message'] = "{{msg}} {{msg2}} does not have enough Gems.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notEnoughGems"] = {
            ['title'] = "Denied",
            ['message'] = "Not enough gems.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#rejectedTransfer"] = {
            ['title'] = "Denied",
            ['message'] = "{{msg}} {{msg2}} did not accept the transfer.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emptyStock"] = {
            ['title'] = "Warning",
            ['message'] = "This skin is out of stock.",
            ['type'] = "Attention",
            ['duration'] = 1000
        },
        ["#haveXskin"] = {
            ['title'] = "Warning",
            ['message'] = "You already have a {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#completedPurchase"] = {
            ['title'] = "Success",
            ['message'] = "Purchase completed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#completedSale"] = {
            ['title'] = "Success",
            ['message'] = "Sale completed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#equipskinWeapon"] = {
            ['title'] = "Success",
            ['message'] = "Skin equipped.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unequipskinWeapon"] = {
            ['title'] = "Success",
            ['message'] = "Skin unequipped.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#fLoadCharacter"] = {
            ['title'] = "SPAM",
            ['message'] = "We encountered problems trying to load your character. Please wait 15 more seconds.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#relogWarning"] = {
            ['title'] = "Bugged",
            ['message'] = "Your character is having issues. To have a complete experience, please log out and log back in.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#maxCharacter"] = {
            ['title'] = "Limit",
            ['message'] = "Character limit reached.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#deathWarning"] = {
            ['title'] = "Beginner",
            ['message'] = "Oops, you fainted, right? Don't worry, I took care of your things! Be more careful next time and try not to get into trouble.",
            ['type'] = "Information",
            ['duration'] = 28000
        },
        ["#completedTreatment"] = {
            ['title'] = "Treatment",
            ['message'] = "Treatment completed.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#systemTempOff"] = {
            ['title'] = "REPORT BOX",
            ['message'] = "System temporarily disabled.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitReportBox"] = {
            ['title'] = "REPORT BOX",
            ['message'] = "You need to wait {{msg}} seconds to report again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitReportCD"] = {
            ['title'] = "REPORT",
            ['message'] = "You need to wait {{msg}} seconds to report again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitEnterWarMode"] = {
            ['title'] = "WAR MODE",
            ['message'] = "You need to wait {{msg}} seconds to use WAR MODE again.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#rescueVeicVip"] = {
            ['title'] = "VEHICLES",
            ['message'] = "You still have vehicles to rescue. Use the /vipcars command to rescue them.",
            ['type'] = "Vehicle",
            ['duration'] = 15000
        },
        ["#rescuedVeicVip"] = {
            ['title'] = "VEHICLES",
            ['message'] = "You have selected all your VIP vehicles.",
            ['type'] = "Vehicle",
            ['duration'] = 15000
        },
        ["#noVeicVip"] = {
            ['title'] = "VEHICLES",
            ['message'] = "You have no VIP vehicles to rescue.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#dominationAreaMarked"] = {
            ['title'] = "Domination",
            ['message'] = "Domination area has been marked on your map.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominationWinnerGroup"] = {
            ['title'] = "DOMINATION",
            ['message'] = "Group {{msg}} WON the domination of {{msg2}}.",
            ['type'] = "PVP",
            ['duration'] = 15000
        },
        ["#dominationZoneTimer"] = {
            ['title'] = "DOMINATION",
            ['message'] = "Domination of {{msg}} will start in {{msg2}}.{{msg3}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominationZoneStart"] = {
            ['title'] = "DOMINATION",
            ['message'] = "Domination of {{msg}} will start, everyone inside the area!{{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#createdEvent"] = {
            ['title'] = "Events",
            ['message'] = "Event successfully created with ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#eventStarted"] = {
            ['title'] = "Events",
            ['message'] = "Event successfully started with ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#eventNotFound"] = {
            ['title'] = "Events",
            ['message'] = "Event not found with ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#restartEvent"] = {
            ['title'] = "Events",
            ['message'] = "Event successfully restarted with ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#pausedEvent"] = {
            ['title'] = "Events",
            ['message'] = "Event successfully paused.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#resumeEvent"] = {
            ['title'] = "Events",
            ['message'] = "Success, event resumed with ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#addpointevent"] = {
            ['title'] = "Events",
            ['message'] = "Point added successfully.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#rempointevent"] = {
            ['title'] = "Events",
            ['message'] = "Point removed successfully.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#invasionGroupWinner"] = {
            ['title'] = "INVASION",
            ['message'] = "Group {{msg}} WON the invasion {{msg2}}.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#zoneInvasionWillStart"] = {
            ['title'] = "INVASION",
            ['message'] = "Invasion of {{msg}} will start in {{msg2}}.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#zoneInvasionStarted"] = {
            ['title'] = "INVASION",
            ['message'] = "Invasion of {{msg}} will start, everyone inside the area!{{msg2}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#kickinvasion"] = {
            ['title'] = "INVASION",
            ['message'] = "You kicked player {{msg}} from the event.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#testDrive"] = {
            ['title'] = "Test",
            ['message'] = "Test started, to finish exit the vehicle.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#alreadyHaveVehic"] = {
            ['title'] = "Vehicle",
            ['message'] = "You already have a {{msg}}",
            ['type'] = "Vehicle",
            ['duration'] = 3000
        },
        ["#notEnoughDiamond"] = {
            ['title'] = "Diamonds",
            ['message'] = "Not enough diamonds.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#theftTime"] = {
            ['title'] = "Theft",
            ['message'] = "Theft time set successfully.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#workFinished"] = {
            ['title'] = "Work",
            ['message'] = "Work finished.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#workStarted"] = {
            ['title'] = "Work",
            ['message'] = "Work started.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#cantDoAgain"] = {
            ['title'] = "Do it",
            ['message'] = "You cannot do this right now.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#attachsActivated"] = {
            ['title'] = "Attachs",
            ['message'] = "Attachs activated",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#attachsDisabled"] = {
            ['title'] = "Attachs",
            ['message'] = "Attachs disabled",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cantDisable"] = {
            ['title'] = "SAFE MODE",
            ['message'] = "You cannot unattach if you are in the safe world",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotEquipWeaponOnSafe"] = {
            ['title'] = "SAFE MODE",
            ['message'] = "You cannot equip weapons in the safe world",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enterWarModeToWeapon"] = {
            ['title'] = "WAR MODE",
            ['message'] = "You need to enter War Mode to use weapons -> F9/Others/War Mode",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantInSafe"] = {
            ['title'] = "SAFEZONE",
            ['message'] = "You cannot do this inside a safezone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantDropItem"] = {
            ['title'] = "DROP",
            ['message'] = "You cannot drop items right now.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantStoreItem"] = {
            ['title'] = "CHEST",
            ['message'] = "You cannot store this item.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#noPermissionWithdrawItem"] = {
            ['title'] = "CHEST",
            ['message'] = "You do not have permission to withdraw this item.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#cantStoreItemInChest"] = {
            ['title'] = "CHEST",
            ['message'] = "You cannot place this item in this chest.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#chestCreated"] = {
            ['title'] = "Chest",
            ['message'] = "Chest successfully created.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#chestRemoved"] = {
            ['title'] = "Chest",
            ['message'] = "Chest successfully removed.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#msgChest"] = {
            ['title'] = "Chest",
            ['message'] = "{{msg}}",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#addedPermission"] = {
            ['title'] = "Chest",
            ['message'] = "Permission successfully added.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#removedPermission"] = {
            ['title'] = "Chest",
            ['message'] = "Permission successfully removed.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#cantStealNewbie"] = {
            ['title'] = "Search",
            ['message'] = "You cannot steal from a newbie.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cantStealSafe"] = {
            ['title'] = "Theft",
            ['message'] = "You cannot steal from a newbie.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cannotSearch"] = {
            ['title'] = "Search",
            ['message'] = "Unable to conduct the search.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#itemBlocked"] = {
            ['title'] = "Item",
            ['message'] = "Item blocked.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#cannotSendItem"] = {
            ['title'] = "SEND",
            ['message'] = "You cannot send this item.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotLootItem"] = {
            ['title'] = "SEND",
            ['message'] = "You cannot loot this item.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#itensCollected"] = {
            ['title'] = "Item",
            ['message'] = "Items collected successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#itemBlockedPolice"] = {
            ['title'] = "Item",
            ['message'] = "Police item blocked.",
            ['type'] = "Police",
            ['duration'] = 3000
        },
        ["#itemLootBlocked"] = {
            ['title'] = "Item",
            ['message'] = "Item blocked from being looted.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#cannotTakeItem"] = {
            ['title'] = "PICK UP",
            ['message'] = "You cannot pick up this item.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#fullLifeKnocked"] = {
            ['title'] = "Life",
            ['message'] = "Cannot use with full health or knocked out.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#playerFree"] = {
            ['title'] = "Player",
            ['message'] = "Character freed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#passportAtt"] = {
            ['title'] = "Passport",
            ['message'] = "Passport updated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hammerNotFound"] = {
            ['title'] = "Hammer",
            ['message'] = "Hammer not found.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#waitUseDrug"] = {
            ['title'] = "Drugs",
            ['message'] = "Wait {{msg}} minutes to use again.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitArmor"] = {
            ['title'] = "Armour",
            ['message'] = "Wait {{msg}} seconds.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#evidence"] = {
            ['title'] = "Evidence",
            ['message'] = "Evidence of {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#info"] = {
            ['title'] = "Info",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#noResultFound"] = {
            ['title'] = "Info",
            ['message'] = "No results found.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#infoDrug"] = {
            ['title'] = "Info",
            ['message'] = "Chemicals: {{msg}} Alcohol: {{msg2}} Drugs: {{msg3}}",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#engineLimit"] = {
            ['title'] = "Vehicle",
            ['message'] = "Engine limit reached.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongEngineModel"] = {
            ['title'] = "Vehicle",
            ['message'] = "Wrong engine model.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#goToMechanics"] = {
            ['title'] = "Vehicle",
            ['message'] = "Go to a mechanic for an inspection.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#brakeLimit"] = {
            ['title'] = "Vehicle",
            ['message'] = "Brake limit reached.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongBrakeModel"] = {
            ['title'] = "Vehicle",
            ['message'] = "Wrong brake model.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#transmissionLimit"] = {
            ['title'] = "Vehicle",
            ['message'] = "Transmission limit reached.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongTransmissionModel"] = {
            ['title'] = "Vehicle",
            ['message'] = "Incorrect transmission model.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#suspensionLimit"] = {
            ['title'] = "Vehicle",
            ['message'] = "Suspension limit reached.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongSuspensionModel"] = {
            ['title'] = "Vehicle",
            ['message'] = "Incorrect suspension model.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#noSuspensionVeic"] = {
            ['title'] = "Vehicle",
            ['message'] = "The vehicle {{msg}} has no suspension.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#cannotUseItemLP"] = {
            ['title'] = "Lockpick",
            ['message'] = "You cannot use this item outside of War Mode.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#noPermissionMec"] = {
            ['title'] = "MECHANIC",
            ['message'] = "You do not have permission to do this.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#youMissed"] = {
            ['title'] = "Button",
            ['message'] = "You need to press the number that appears in the center at the right time!",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#signalBlockerInstalled"] = {
            ['title'] = "Signal",
            ['message'] = "Signal blocker installed.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#signalBlockerAlreadyInstalled"] = {
            ['title'] = "Signal",
            ['message'] = "Signal blocker already installed.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#uHaveActiveContract"] = {
            ['title'] = "Contract",
            ['message'] = "You have an active contract.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#notEnoughPolice"] = {
            ['title'] = "Police",
            ['message'] = "Not enough police officers.",
            ['type'] = "Police",
            ['duration'] = 5000
        },
        ["#spannerNotFound"] = {
            ['title'] = "Wrench",
            ['message'] = "Wrench not found.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#invalidPlateName"] = {
            ['title'] = "Plate",
            ['message'] = "The plate name definition is invalid.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#plateUsed"] = {
            ['title'] = "Plate",
            ['message'] = "The chosen plate is already on another vehicle.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#plateAtt"] = {
            ['title'] = "Plate",
            ['message'] = "Plate updated.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veicModelNotFound"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle model not found.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#hoodUsed"] = {
            ['title'] = "HOOD",
            ['message'] = "The hood has been used.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#notHandcuffed"] = {
            ['title'] = "HOOD",
            ['message'] = "The person is not handcuffed.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#itemUsed"] = {
            ['title'] = "Item",
            ['message'] = "{{msg}} used.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#communicationRemoved"] = {
            ['title'] = "Communications",
            ['message'] = "All communications have been removed.",
            ['type'] = "amarelo",
            ['duration'] = 5000
        },
        ["#cantDropThisItemMuni"] = {
            ['title'] = "DROP",
            ['message'] = "You cannot drop this item.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#limitReached"] = {
            ['title'] = "Limit",
            ['message'] = "Limit reached.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#sellDrugWarning"] = {
            ['title'] = "Drugs",
            ['message'] = "Did you know you can sell all 3 types of drugs at the same time? How about negotiating some?!",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#attVeicLumb"] = {
            ['title'] = "Vehicle",
            ['message'] = "You need to use the lumberjack vehicle.",
            ['type'] = "Vehicle",
            ['duration'] = 3000
        },
        ["#unsuppWeaponry"] = {
            ['title'] = "Armament",
            ['message'] = "The weapon does not support the component.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#weaponHasComponentEquipped"] = {
            ['title'] = "Armament",
            ['message'] = "The weapon already has the component equipped.",
            ['type'] = "amarelo",
            ['duration'] = 5000
        },
        ["#brokeAfterRemoving"] = {
            ['title'] = "Armament",
            ['message'] = "After removing it, it broke.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#crowbarNotFound"] = {
            ['title'] = "Armament",
            ['message'] = "Crowbar not found.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#protectedVeic"] = {
            ['title'] = "Vehicle",
            ['message'] = "Vehicle protected by the insurer.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#needItemQnt"] = {
            ['title'] = "Item",
            ['message'] = "You need {{msg}}x {{msg2}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#noPermission"] = {
            ['title'] = "Permission",
            ['message'] = "No permission.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#invalidPlate"] = {
            ['title'] = "Scrap",
            ['message'] = "Invalid plate.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#veicNotFound"] = {
            ['title'] = "Scrap",
            ['message'] = "Vehicle not found.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitToCarrySomeone"] = {
            ['title'] = "Carry",
            ['message'] = "Wait {{msg}} seconds to carry someone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#houseLimit"] = {
            ['title'] = "Houses",
            ['message'] = "You already have the maximum number of houses.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#lockedProperty"] = {
            ['title'] = "Property",
            ['message'] = "Property locked.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#unlockedProperty"] = {
            ['title'] = "Property",
            ['message'] = "Property unlocked.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#cloAdd"] = {
            ['title'] = "Clothes",
            ['message'] = "{{msg}} added.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nameAELocker"] = {
            ['title'] = "Name",
            ['message'] = "The chosen name already exists in your locker.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cloRemoved"] = {
            ['title'] = "Clothes",
            ['message'] = "{{msg}} removed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cloGonne"] = {
            ['title'] = "Clothes",
            ['message'] = "The saved outfit is no longer in your locker.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#skinApllyed"] = {
            ['title'] = "Clothes",
            ['message'] = "{{msg}} applied.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#invalidModel"] = {
            ['title'] = "Houses",
            ['message'] = "Invalid model.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#insideHouseCommand"] = {
            ['title'] = "houses",
            ['message'] = "You need to be inside a residence to execute this command.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#shopInsuf"] = {
            ['title'] = "Shop",
            ['message'] = "{{msg}} insufficient.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#shopWithDiamond"] = {
            ['title'] = "Shop",
            ['message'] = "Bought {{msg}}x {{msg2}} for {{msg3}} Diamonds.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#damagedItemCannotSell"] = {
            ['title'] = "Item",
            ['message'] = "Damaged items cannot be sold.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotPutItem"] = {
            ['title'] = "TRUNK",
            ['message'] = "You cannot put this item.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#noStorage"] = {
            ['title'] = "Storage",
            ['message'] = "Storage prohibited.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#notVeicOwner"] = {
            ['title'] = "TRUNK",
            ['message'] = "You are not the owner of the vehicle.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#servedTime"] = {
            ['title'] = "Prison",
            ['message'] = "You have served your sentence.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#uArrestedPlayer"] = {
            ['title'] = "Prison",
            ['message'] = "You arrested {{msg}} for {{msg2}} months and a fine of ${{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#prisonTime"] = {
            ['title'] = "Prison",
            ['message'] = "You have {{msg}} minutes of prison time.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitToWorkAgain"] = {
            ['title'] = "Work",
            ['message'] = "You need to wait {{msg}} seconds to work again.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#feedbackWarning"] = {
            ['title'] = "FEEDBACK",
            ['message'] = "Thank you for helping us improve the server, your feedback has been submitted.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#waitToFeedback"] = {
            ['title'] = "FEEDBACK",
            ['message'] = "You have already given feedback to this staff member this week.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wonMatch"] = {
            ['title'] = "MatchMaking",
            ['message'] = "You won the match and earned {{msg}} Points.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#loseMatch"] = {
            ['title'] = "MatchMaking",
            ['message'] = "You lost the match and lost {{msg}} Points.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#leaveQueue"] = {
            ['title'] = "Matchmaking",
            ['message'] = "You left the queue.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#customPeds"] = {
            ['title'] = "Skins",
            ['message'] = "You have no custom skins to use.",
            ['type'] = "vermelho",
            ['duration'] = 5000
        },
        ["#passAtt"] = {
            ['title'] = "Password",
            ['message'] = "Password updated.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#needRangeBT"] = {
            ['title'] = "Range",
            ['message'] = "You need between 4 and 20 numbers.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#wrongPass"] = {
            ['title'] = "Password",
            ['message'] = "Incorrect password.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#increaseCompleted"] = {
            ['title'] = "Increase",
            ['message'] = "Increase completed.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#AFK"] = {
            ['title'] = "AFK",
            ['message'] = "You are AFK.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#earthquake"] = {
            ['title'] = "earthquake",
            ['message'] = "Geologists have reported a 15 magnitude tremor on the Richter scale. Seek shelter until it passes.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#punishedTemp"] = {
            ['title'] = "PUNISHMENT",
            ['message'] = "You have been temporarily punished.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#banFinished"] = {
            ['title'] = "ban",
            ['message'] = "Your ban time has ended.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#punishmentTime"] = {
            ['title'] = "ban",
            ['message'] = "Remaining punishment time: {{msg}} minutes. Buy removal through the /removeradv command.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cameService"] = {
            ['title'] = "Service",
            ['message'] = "Entered service.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#leaveService"] = {
            ['title'] = "Service",
            ['message'] = "Left service.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#finishedService"] = {
            ['title'] = "Service",
            ['message'] = "Service completed.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#serviceRemai"] = {
            ['title'] = "Service",
            ['message'] = "{{msg}} services remaining.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#weightChange"] = {
            ['title'] = "WEIGHT",
            ['message'] = "Weight changed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repaired"] = {
            ['title'] = "Repair",
            ['message'] = "Repaired.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repairWith"] = {
            ['title'] = "Repair",
            ['message'] = "Can only be repaired with {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cardBlocked"] = {
            ['title'] = "Card",
            ['message'] = "Card blocked.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#addTotem"] = {
            ['title'] = "Totem",
            ['message'] = "Totem added successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#totemExist"] = {
            ['title'] = "Totem",
            ['message'] = "This Totem already exists.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#totemNotFound"] = {
            ['title'] = "Totem",
            ['message'] = "Totem not found.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#totemRemoved"] = {
            ['title'] = "Totem",
            ['message'] = "Totem removed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#resetBattlePass"] = {
            ['title'] = "BATTLEPASS",
            ['message'] = "You reset the Season Pass for {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#expBattlePass"] = {
            ['title'] = "BATTLEPASS",
            ['message'] = "You received {{msg}} XP in the BattlePass for being online for 30 minutes! Press F4 to claim rewards!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#battlePassRecived"] = {
            ['title'] = "BATTLEPASS",
            ['message'] = "You received a Season Pass.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#cannotCWCarried"] = {
            ['title'] = "GG",
            ['message'] = "You cannot use this command while being carried.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamondRecived"] = {
            ['title'] = "Diamonds",
            ['message'] = "You received 💎 {{msg}} diamonds that can be exchanged for VIP items! Every 10 minutes online, you receive diamonds for free [Even when AFK]. Use the command /diamonds to access the shop!",
            ['type'] = "Payment",
            ['duration'] = 10000
        },
        ["#commandAnswered"] = {
            ['title'] = "Calls",
            ['message'] = "This ticket has already been answered.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#hiringPendent"] = {
            ['title'] = "Panel",
            ['message'] = "Hiring pending.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#NewbieLogin"] = {
            ['title'] = "Panel",
            ['message'] = "Newbie {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ChangeChestLog"] = {
            ['title'] = "Chest",
            ['message'] = "Log successfully changed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ClearFines"] = {
            ['title'] = "FINES",
            ['message'] = "Fines cleared successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#FinishWar"] = {
            ['title'] = "WAR",
            ['message'] = "War successfully finished.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#FinishWarError"] = {
            ['title'] = "WAR",
            ['message'] = "Invalid war.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ListWar"] = {
            ['title'] = "War List",
            ['message'] = "{{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#createCode"] = {
            ['title'] = "Code",
            ['message'] = "Code {{msg}} created successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#redeemedCode"] = {
            ['title'] = "Code",
            ['message'] = "You have already redeemed a code.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codeNfound"] = {
            ['title'] = "Code",
            ['message'] = "Invalid code.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#redeemCode"] = {
            ['title'] = "Code",
            ['message'] = "You successfully redeemed code {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#pastDaysCode"] = {
            ['title'] = "Code",
            ['message'] = "You do not meet the minimum requirements to redeem a code.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#boost"] = {
            ['title'] = "Boost",
            ['message'] = "Boost applied successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unviableCommand"] = {
            ['title'] = "",
            ['message'] = "Command unavailable.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#RDM"] = {
            ['title'] = "NEW RDM REPORT",
            ['message'] = "Player {{msg}} reported player {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resgatePromo"] = {
            ['title'] = "Promo Redemption",
            ['message'] = "You successfully redeemed the promotion.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#nomeAdicionado"] = {
            ['title'] = "Name Added",
            ['message'] = "Name added successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#nomeRemovido"] = {
            ['title'] = "Name Removed",
            ['message'] = "Name removed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#marcaPontoFarm"] = {
            ['title'] = "Farm Point Marked",
            ['message'] = "You marked the <b>FARM</b> point on the map.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#tratorParaColetar"] = {
            ['title'] = "Tractor Required",
            ['message'] = "You need to be in a tractor to collect the items.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#apagueIncendios"] = {
            ['title'] = "Extinguish Fires",
            ['message'] = "Mission started, go to the marked location on the map and extinguish the fires.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#pertoLocalEntrega"] = {
            ['title'] = "Delivery Location",
            ['message'] = "You are very close to the delivery location.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naoNessaGaragem"] = {
            ['title'] = "Garage",
            ['message'] = "This vehicle cannot be retrieved from this garage.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#alias"] = {
            ['title'] = "Alias",
            ['message'] = "Group: <b>{{msg}}</b>",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#aliasNao"] = {
            ['title'] = "Alias Not Found",
            ['message'] = "Alias not found.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#marqueGPS"] = {
            ['title'] = "GPS",
            ['message'] = "Mark a location on the GPS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoAFK"] = {
            ['title'] = "AFK",
            ['message'] = "You are no longer AFK.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#blipOn"] = {
            ['title'] = "Talk",
            ['message'] = "Voice blip activated.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#blipOff"] = {
            ['title'] = "Not Talking",
            ['message'] = "Voice blip deactivated.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#apertaTecla"] = {
            ['title'] = "Press Key to Win",
            ['message'] = "To win, quickly press the 'E' key.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#vcGanhou"] = {
            ['title'] = "Won",
            ['message'] = "You won!",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#vcPerdeu"] = {
            ['title'] = "Lost",
            ['message'] = "You lost!",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#esperandoOponente"] = {
            ['title'] = "Waiting for Opponent",
            ['message'] = "Waiting for an opponent...",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#mesaCheia"] = {
            ['title'] = "Full Table",
            ['message'] = "The table is full.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#caboRompeu"] = {
            ['title'] = "Cables",
            ['message'] = "The cables holding the vehicle have broken.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoRebocado"] = {
            ['title'] = "Towed",
            ['message'] = "Vehicle successfully towed.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#semVeiculoReboque"] = {
            ['title'] = "No Tow Vehicle",
            ['message'] = "No vehicle is being towed.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#foraParaRebocar"] = {
            ['title'] = "Tow",
            ['message'] = "You need to be out of the vehicle to tow.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#caminhaoReboqueSemEquipamento"] = {
            ['title'] = "Tow Truck",
            ['message'] = "Your tow truck is not equipped to tow this vehicle.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoDescarregado"] = {
            ['title'] = "Tow Truck",
            ['message'] = "Vehicle successfully unloaded.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoReboqueSemRegistro"] = {
            ['title'] = "Tow Truck",
            ['message'] = "Your vehicle is not registered as an official tow truck.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#vipExpirado"] = {
            ['title'] = "VIP Expired",
            ['message'] = "VIP EXPIRED.",
            ['type'] = "Information",
            ['duration'] = 60000
        },
        ["#taxaCasas"] = {
            ['title'] = "Fee",
            ['message'] = "{{msg}}",
            ['type'] = "House",
            ['duration'] = 60000 * 1
        },
        ["#feedBack"] = {
            ['title'] = "Feedback",
            ['message'] = "{{msg}} <b>[Note: {{msg2}}]</b>",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#maxCaracteres"] = {
            ['title'] = "REGISTER",
            ['message'] = "Description cannot exceed 255 characters.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#safeZone"] = {
            ['title'] = "Safezone",
            ['message'] = "You entered the safe zone.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#foraSafeZone"] = {
            ['title'] = "Safezone",
            ['message'] = "You left the safe zone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#saiuRadio"] = {
            ['title'] = "RADIO",
            ['message'] = "You left the radio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#getSource2"] = {
            ['title'] = "Source2",
            ['message'] = "Source2:",
            ['type'] = "Information",
            ['duration'] = 30000
        },
        ["#chamouMedico"] = {
            ['title'] = "Called doctor",
            ['message'] = "You called a doctor, please wait: {{msg}}",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#naoPodeMexer"] = {
            ['title'] = "Inspect",
            ['message'] = "You cannot do that while being inspected by someone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoPodeChamarMed"] = {
            ['title'] = "Call",
            ['message'] = "You cannot call a doctor in a domination area.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#marcaGPS"] = {
            ['title'] = "GPS",
            ['message'] = "You marked a point on the GPS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#facProxima"] = {
            ['title'] = "FAC",
            ['message'] = "Nearest FAC: <b>{{msg}}</b><br>Distance: <b>{{msg2}}</b>m",
            ['type'] = "Confirmed",
            ['duration'] = 30000
        },
        ["#assumiuControle"] = {
            ['title'] = "Control",
            ['message'] = "You took control of the vehicle. Press <green>F</green> to exit.",
            ['type'] = "Vehicle",
            ['duration'] = 8000
        },
        ["#discordAcc"] = {
            ['title'] = "Discord",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 60000*1
        },
        ["#arenaSafeZone"] = {
            ['title'] = "Safezone arena",
            ['message'] = "You entered the safe zone of the arena.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#arenaSafeZoneOff"] = {
            ['title'] = "Safezone arena",
            ['message'] = "You left the safe zone of the arena.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#quantidadeDogtag"] = {
            ['title'] = "Clue",
            ['message'] = "You have <b> {{msg}} </b>x Dogtags in your inventory, be careful, a location has been marked on your map for a safe deposit of your DOGTAGS.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#iniciarDomi"] = {
            ['title'] = "Domination",
            ['message'] = "You can only start a domination in the default world.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#naoPodeRoubar"] = {
            ['title'] = "Steal",
            ['message'] = "You cannot rob this location.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#aguardeDominacao"] = {
            ['title'] = "Domination",
            ['message'] = "Wait {{msg}} seconds to start the domination, the boxes are still empty.",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#aguardeDominacaoTerminar"] = {
            ['title'] = "Domination",
            ['message'] = "Wait for the current domination to finish.",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#empate"] = {
            ['title'] = "Tie",
            ['message'] = "1x1",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dica"] = {
            ['title'] = "Tip",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#crimeGPS"] = {
            ['title'] = "Crime GPS",
            ['message'] = "You marked the crime location on your GPS.",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#notifAdm"] = {
            ['title'] = "Notification",
            ['message'] = "msg",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#reiniciaServ"] = {
            ['title'] = "Reboot",
            ['message'] = "Server is rebooting, please wait.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#iniciaTrabalho"] = {
            ['title'] = "Work",
            ['message'] = "Work started.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#finalizaTrabalho"] = {
            ['title'] = "Work",
            ['message'] = "Work completed.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#propOwned"] = {
            ['title'] = "Owner",
            ['message'] = "{{msg}}",
            ['type'] = "House",
            ['duration'] = 10000
        },
        ["#bauFechadoPadrao"] = {
            ['title'] = "Chest",
            ['message'] = "You cannot open this chest outside the DEFAULT world.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#permissaoResetada"] = {
            ['title'] = "Chest",
            ['message'] = "Permissions successfully reset.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#grupoInvalido"] = {
            ['title'] = "Chest",
            ['message'] = "Invalid group.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#naoPodeRevistar"] = {
            ['title'] = "Search",
            ['message'] = "You cannot search a person while being carried or carrying someone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#nitroAtivado"] = {
            ['title'] = "Nitro",
            ['message'] = "Nitro activated.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#numeroInvalido"] = {
            ['title'] = "Number",
            ['message'] = "Invalid number.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#adquiriuGoldenR"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Golden Retriever.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuRottw"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Rottweiler.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuWesty"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Westy.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPug"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Pug.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuBulldogF"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a French Bulldog.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuRajah"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Rajah.",
            ['type'] = "verde",
            ['duration'] = 5000
        },
        ["#adquiriuTigor"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Tigor.",
            ['type'] = "verde",
            ['duration'] = 5000
        },
        ["#adquiriuLoboSirius"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a LoboSirius.",
            ['type'] = "verde",
            ['duration'] = 5000
        },
        ["#adquiriuGalgo"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Greyhound.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPastorA"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a German Shepherd.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPoodle"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Poodle.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuCaneC"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Cane Corso.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuDoberman"] = {
            ['title'] = "Dog",
            ['message'] = "You acquired a Doberman.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuGato"] = {
            ['title'] = "Cat",
            ['message'] = "You acquired a Cat.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuSphynx"] = {
            ['title'] = "Cat",
            ['message'] = "You acquired a Sphynx.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#propNEncontrada"] = {
            ['title'] = "Properties",
            ['message'] = "Property not found.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#semPermissaoSafe"] = {
            ['title'] = "Lockpick",
            ['message'] = "You cannot use this item inside a Safe Zone.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#carregaMuni"] = {
            ['title'] = "Ammunition",
            ['message'] = "Once you equip the ammunition, you will not be able to remove it from the weapon.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#naoPodeDesmanche"] = {
            ['title'] = "Dismantle",
            ['message'] = "This vehicle cannot be dismantled.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#aguardeDesmanche"] = {
            ['title'] = "Dismantle",
            ['message'] = "Wait for the previous dismantling.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#checarPlaca"] = {
            ['title'] = "Dismantle",
            ['message'] = "Plate check error.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#aguardePescaria"] = {
            ['title'] = "World",
            ['message'] = "Wait <b> {{msg}} seconds</b> until the next fishing.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#possuiMochila"] = {
            ['title'] = "Backpack",
            ['message'] = "You already have this backpack.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mochilaAdc"] = {
            ['title'] = "Backpack",
            ['message'] = "Backpack added.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mochilaVip"] = {
            ['title'] = "Backpack",
            ['message'] = "It looks like you are VIP, your backpacks have been saved!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mochilaRemovida"] = {
            ['title'] = "Backpack",
            ['message'] = "Backpack removed.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nPossuiMochila"] = {
            ['title'] = "Backpack",
            ['message'] = "You do not own this backpack.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#aguardePRoubar"] = {
            ['title'] = "Robbery",
            ['message'] = "Wait a bit to rob again.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#nDonoProp"] = {
            ['title'] = "Property",
            ['message'] = "You are not the owner of this property.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#poliaNCompra"] = {
            ['title'] = "Police",
            ['message'] = "Police cannot buy/sell items in this store.",
            ['type'] = "Police",
            ['duration'] = 5000
        },
        ["#nCVFora"] = {
            ['title'] = "Default World",
            ['message'] = "You cannot buy/sell items outside the default world.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#veiculoInvalido"] = {
            ['title'] = "Vehicle",
            ['message'] = "Invalid vehicle.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#donoVeicAbrir"] = {
            ['title'] = "TRUNK",
            ['message'] = "Wait for the vehicle owner to open the trunk.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#longePrisao"] = {
            ['title'] = "Prison",
            ['message'] = "You are not close to the prison.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#playerSolto"] = {
            ['title'] = "Prison",
            ['message'] = "Citizen released from prison.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#playernPrisao"] = {
            ['title'] = "Prison",
            ['message'] = "Citizen not found in prison.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#paraEquipado"] = {
            ['title'] = "Parachute",
            ['message'] = "Parachute equipped.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#semDinheiroOrg"] = {
            ['title'] = "Organization",
            ['message'] = "You do not have enough money in your organization's bank to create the event.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#missionNotif"] = {
            ['title'] = "Mission",
            ['message'] = "{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#selecRival"] = {
            ['title'] = "Rival",
            ['message'] = "Select your rival",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#eventoInic"] = {
            ['title'] = "Event",
            ['message'] = "Event started.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#rivalSemDinheiroOrg"] = {
            ['title'] = "Event",
            ['message'] = "The rival does not have enough money in their organization's bank to create the event.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rivalAceitou"] = {
            ['title'] = "Event",
            ['message'] = "The rival accepted your request.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#semPets"] = {
            ['title'] = "Pets",
            ['message'] = "You don't have any pets!",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#resultsucesso"] = {
            ['title'] = "PETSHOP",
            ['message'] = "{{msg}}",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#resulterro"] = {
            ['title'] = "PETSHOP",
            ['message'] = "{{msg}}",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#nomeAlterado"] = {
            ['title'] = "Name",
            ['message'] = "Name changed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#grupoAtt"] = {
            ['title'] = "Group",
            ['message'] = "Group updated successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#segGrupo"] = {
            ['title'] = "Group",
            ['message'] = "You did not enter the group segment.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#tipoGrupo"] = {
            ['title'] = "Group",
            ['message'] = "You did not enter the group type.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#urlInvalida"] = {
            ['title'] = "URL",
            ['message'] = "Invalid URL (Do not use Discord URLs).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recrutCriado"] = {
            ['title'] = "Recruitment",
            ['message'] = "Recruitment created successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nGrupoLider"] = {
            ['title'] = "Group",
            ['message'] = "You are not the leader of the group.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#nenhumGrupoL"] = {
            ['title'] = "Group",
            ['message'] = "You are not the leader of any group.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recrutRemovido"] = {
            ['title'] = "Recruitment",
            ['message'] = "Recruitment removed successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recrutAtt"] = {
            ['title'] = "Recruitment",
            ['message'] = "Recruitment updated successfully.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#semGrupo"] = {
            ['title'] = "Group",
            ['message'] = "You are not in any group.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semPermiGrupo"] = {
            ['title'] = "Group",
            ['message'] = "You do not have permission in a group.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#localMarcaOrg"] = {
            ['title'] = "LOCATION",
            ['message'] = "Player {{msg}} just marked the location of their organization via recruitment.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#fome"] = {
            ['title'] = "HUNGER",
            ['message'] = "Suffering from hunger.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#sede"] = {
            ['title'] = "THIRST",
            ['message'] = "Suffering from thirst.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#deuAzar"] = {
            ['title'] = "Unlucky",
            ['message'] = "You got unlucky and didn't win anything.",
            ['type'] = "Warning",
            ['duration'] = 1000
        },
        ["#apostaMin"] = {
            ['title'] = "Bet",
            ['message'] = "Minimum bet of <b>${{msg}}</b>.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semFichas"] = {
            ['title'] = "Bet",
            ['message'] = "Not enough chips.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#apostaIndisponivel"] = {
            ['title'] = "Bet",
            ['message'] = "Bet unavailable.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#limiteDiario"] = {
            ['title'] = "Limit",
            ['message'] = "You have reached the daily limit.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#dicaMarcar"] = {
            ['title'] = "Mark",
            ['message'] = "You can also use (/fac {{msg}}) to mark.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#playerProxFac"] = {
            ['title'] = "RECRUITMENT",
            ['message'] = "The player needs to be close to your faction.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#noSelfPromo"] = {
            ['title'] = "Promotion",
            ['message'] = "You cannot promote yourself.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#noDemoBoss"] = {
            ['title'] = "Promotion",
            ['message'] = "You cannot demote a Boss.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#entregaFarm"] = {
            ['title'] = "DELIVERY FARM",
            ['message'] = "You delivered {{msg}}x {{msg2}} for {{msg3}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#faltaFarm"] = {
            ['title'] = "DELIVERY FARM",
            ['message'] = "You don't have {{msg}} x {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#faltaDinGrupo"] = {
            ['title'] = "DELIVERY FARM",
            ['message'] = "Your group does not have enough money to buy {{msg}} x {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#minEntrega"] = {
            ['title'] = "DELIVERY FARM",
            ['message'] = "You need to deliver at least 10x {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#semConfigEntrega"] = {
            ['title'] = "DELIVERY FARM",
            ['message'] = "Your group does not have a farm delivery configuration.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#precoAlterado"] = {
            ['title'] = "DELIVERY FARM",
            ['message'] = "The price for each 10x farm has been changed to R${{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#restartSoon"] = {
            ['title'] = "RESTART",
            ['message'] = "The server will restart soon.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#orgJaAvaliada"] = {
            ['title'] = "Review",
            ['message'] = "You have already reviewed the organization <b>{{msg}}</b>, please wait <b>{{msg2}}</b> to review again.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#orgAvaliada"] = {
            ['title'] = "PANEL",
            ['message'] = "You reviewed the organization {{msg}} with {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#setClothesEqualOrgM"] = {
            ['title'] = "PANEL",
            ['message'] = "You changed your clothes to the male outfit of the organization {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#setClothesEqualOrgF"] = {
            ['title'] = "PANEL",
            ['message'] = "You changed your clothes to the female outfit of the organization {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#postPassaporte"] = {
            ['title'] = "Passport",
            ['message'] = "Passport Post-It {{msg}} removed.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#sistemaOff"] = {
            ['title'] = "System",
            ['message'] = "System is unavailable at the moment, try again later.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#sistemaViolado"] = {
            ['title'] = "System",
            ['message'] = "System breached and authorities have been notified.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#naoPossuiX"] = {
            ['title'] = "Item",
            ['message'] = "You do not own a <b>{{msg}}</b>.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#dinheiroNEncontrado"] = {
            ['title'] = "Money",
            ['message'] = "No money found.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#ecAbobora"] = {
            ['title'] = "Halloween",
            ['message'] = "Halloween event <b>ACTIVE<b> <br><b>Find and collect all the Halloween pumpkins</b> scattered around the city.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#coletouTodasAb"] = {
            ['title'] = "Halloween",
            ['message'] = "You collected all the Halloween pumpkins.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#halloweenStart"] = {
            ['title'] = "Halloween",
            ['message'] = "The Halloween event has started, collect pumpkins to win prizes.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#vcColetouAb"] = {
            ['title'] = "Halloween",
            ['message'] = "The Halloween event has ended, next event in {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 60000
        },
        ["#moveSuspeita"] = {
            ['title'] = "Movement",
            ['message'] = "Suspicious movement.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#launcher"] = {
            ['title'] = "Launcher",
            ['message'] = "Thank you for using the Launcher, you now have access to all benefits.",
            ['type'] = "Confirmed",
            ['duration'] = 60000
        },
        ["#ticketParamedic"] = {
            ['title'] = "Paramedic",
            ['message'] = "{{msg}}",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#ticketAdmin"] = {
            ['title'] = "Ticket",
            ['message'] = "{{msg}}",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#notifyAdmin"] = {
            ['title'] = "Notify",
            ['message'] = "{{msg}}",
            ['type'] = "Administration",
            ['duration'] = 15000
        },
        ["#invalidLocation"] = {
            ['title'] = "Location",
            ['message'] = "Invalid location",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#noAvailableSeats"] = {
            ['title'] = "Vehicle",
            ['message'] = "No available seats.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#ongoingReward"] = {
            ['title'] = "Claim",
            ['message'] = "You are already claiming a pass, please wait for the process to finish.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#noPermission"] = {
            ['title'] = "Permission",
            ['message'] = "You do not have permission to do this.",
            ['type'] = "Party",
            ['duration'] = 10000
        },
        ["#createevent"] = {
            ['title'] = "Evento",
            ['message'] = "Event generated successfully.",
            ['type'] = "Work",
            ['duration'] = 10000
        },
        ["#errofacradio"] = {
            ['title'] = "PANEL",
            ['message'] = "This organization does not have a radio frequency.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#noLockpick"] = {
            ['title'] = "Property",
            ['message'] = "You do not have a lockpick.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cooldownRequests"] = {
            ['title'] = "Cooldown",
            ['message'] = "You must wait {{msg}} seconds before making a new request.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientBankFunds"] = {
            ['title'] = "Bank",
            ['message'] = "You do not have enough funds to pay the fine.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#vehicleblacklisted"] = {
            ['title'] = "Vehicle",
            ['message'] = "This vehicle is blacklisted.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#comeback"] = {
            ['title'] = "Comeback",
            ['message'] = "You have received a comeback reward.",
            ['type'] = "Payment",
            ['duration'] = 10000
        },
        ["#comeback_already"] = {
            ['title'] = "Comeback",
            ['message'] = "You have already received a comeback reward.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#comeback_expired"] = {
            ['title'] = "Comeback",
            ['message'] = "This command is no longer available.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#garage_created"] = {
            ['title'] = "Garage",
            ['message'] = "Garage created successfully and copied to clipboard.",
            ['type'] = "Work",
            ['duration'] = 10000
        },
        ["#alreadyInRelationship"] = {
            ['title'] = "Relationship",
            ['message'] = "This person is already in a relationship with another person.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#ticketAccepted"] = {
            ['title'] = "Ticket",
            ['message'] = "Your ticket has been accepted by {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_health"] = {
            ['title'] = "Ticket",
            ['message'] = "Your ticket for the <b>Hospital</b> has been accepted by {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_police"] = {
            ['title'] = "Ticket",
            ['message'] = "Your ticket for the <b>Police</b> has been accepted by {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_mechanic"] = {
            ['title'] = "Ticket",
            ['message'] = "Your ticket for the <b>Mechanic</b> has been accepted by {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_purchases"] = {
            ['title'] = "Ticket",
            ['message'] = "Your ticket for the <b>Purchases</b> has been accepted by {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_rdm"] = {
            ['title'] = "Ticket",
            ['message'] = "Your ticket for the <b>RDM</b> team has been accepted by {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
    },
    ["pt-br"] = {
        ['#cantUseSpecialCharMessage'] = {
            ['title'] = "Aviso",
            ['message'] = "Você não pode usar caracteres especiais.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientFunds"] = {
            ['title'] = "Departamento",
            ['message'] = "Você não tem dinheiro suficiente.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        
        ["#insufficientItems"] = {
            ['title'] = "Department",
            ['message'] = "Itens insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#relationshipCooldown"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Você não pode interagir no sistema de relacionamentos por {{msg}} segundos.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntActiveStatus"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "Evento de caça ativo! Tempo restante: {{msg}} minutos e {{msg2}} segundos.<br>Use /pascoa para verificar o status do evento.<br>Use /minhapascoa para verificar seu progresso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#huntInactiveStatus"] = {
            ['title'] = "Evento de Caça",   
            ['message'] = "Evento de caça inativo! Próximo evento em {{msg}} minutos e {{msg2}} segundos.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntEventStarted"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "O evento de caça foi iniciado! Você tem 30 minutos para encontrar todos os itens.<br>Use /pascoa para verificar o status do evento.<br>Use /minhapascoa para verificar seu progresso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#huntEventEnded"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "O evento de caça foi encerrado! Próximo evento em {{msg}} minutos e {{msg2}} segundos.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntCollected"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "Você coletou {{msg}} de {{msg2}} ovos.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#trabalhobombeiros"] = {
            ['title'] = "Bombeiro",
            ['message'] = "Você recebeu  $ {{msg}} dólares por apagar o incêndio.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#like"] = {
            ['title'] = "Like",
            ['message'] = "Você deu 👍 LIKE!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#passMuteArea"] = {
            ['title'] = "PASSAPORTE MUTADO",
            ['message'] = "Mute aplicado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#respostarequest"] = {
            ['title'] = "Resposta Request",
            ['message'] = "Você não pode responder a este request!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notifyloginoff"] = {
            ['title'] = "Acoes",
            ['message'] = "Notificação de login removida com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#notifyloginon"] = {
            ['title'] = "Acoes",
            ['message'] = "Notificação de login adicionada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#convertecoinssucesso"] = {
            ['title'] = "Conversão Coins",
            ['message'] = "Você converteu {{msg}} Coins em  {{msg2}} Diamantes.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#coinsinsuficientes"] = {
            ['title'] = "Conversão Coins",
            ['message'] = "Você não tem {{msg}} Coins suficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamantesconvertidos"] = {
            ['title'] = "Conversão Diamantes",
            ['message'] = "Você converteu {{msg}} Diamantes em {{msg2}} Coins.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#diamantesinsuficientes"] = {
            ['title'] = "Diamantes",
            ['message'] = "Você não tem {{msg}} x Diamantes suficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#aguardeconversaoanterior"] = {
            ['title'] = "Conversão",
            ['message'] = "Aguarde a finalização da conversão anterior.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#blockcameramundo"] = {
            ['title'] = "Câmera",
            ['message'] = "Você não pode usar a câmera enquanto estiver nao estiver no mundo FOTOGRAFIA",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockacao"] = {
            ['title'] = "Acoes",
            ['message'] = "Ação bloqueada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#x1entroufila"] = {
            ['title'] = "Fila",
            ['message'] = "Você entrou na fila do x1.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#x1saiufila"] = {
            ['title'] = "Fila",
            ['message'] = "Você saiu da fila do x1.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dogtagsdepositou"] = {
            ['title'] = "Depósito",
            ['message'] = "Você depositou {{msg}} x dogtags  Total: {{msg2}} DOGTAGS.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#dogtagscooldown"] = {
            ['title'] = "Coleta Dogtags",
            ['message'] = "Você deve esperar 30 segundos para coletar dogtags da mesma pessoa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagsvcntem"] = {
            ['title'] = "Dogtags",
            ['message'] = "Você não tem dogtags para depositar.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagsnpossui"] = {
            ['title'] = "Dogtags",
            ['message'] = "Este jogador não possui dogtags.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagscoletou"] = {
            ['title'] = "DogTags",
            ['message'] = "Você coletou {{msg}} x dogtags",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#saiummundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Você saiu do mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#sempermmundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Você não tem permissão para entrar no mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#jaestamundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Você já está no mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#entroumundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Você entrou no mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#multiplicadorkill"] = {
            ['title'] = "Kills",
            ['message'] = "Multiplicador de kills alterado para {{msg}} x.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#arenaroyalewin"] = {
            ['title'] = "Evento Royale",
            ['message'] = "O Grupo {{msg}} venceu o Evento Royale",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleeliminado"] = {
            ['title'] = "Evento Royale",
            ['message'] = "Você foi eliminado do <b>Evento Royale</b>",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyalepause"] = {
            ['title'] = "Evento Royale",
            ['message'] = "A Area Royale foi pausada.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleremovido"] = {
            ['title'] = "Evento Royale",
            ['message'] = "A Area Royale foi removida.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleliberada"] = {
            ['title'] = "Evento Royale",
            ['message'] = "A Area Royale foi liberada.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#eventofinalizado"] = {
            ['title'] = "Evento",
            ['message'] = "Evento finalizado com sucesso ID: {{msg}}",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#dominacaoemandamento"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação está em cooldown.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominacaocooldown"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação está em cooldown.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominacaoiniciada"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação de {{msg}} foi iniciada por {{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#wallantipika"] = {
            ['title'] = "Wall",
            ['message'] = "Você ativou o anti pika, agora a pika esta invisivel.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallon"] = {
            ['title'] = "Wall",
            ['message'] = "Você ativou o wall.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#walloff"] = {
            ['title'] = "Wall",
            ['message'] = "Você desativou o wall.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notveic"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo não possui proprietário/spawnado",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#dominacaoconcluida"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação de {{msg}} foi dominada por {{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#showowner"] = {
            ['title'] = "Proprietario",
            ['message'] = "Placa:  {{msg}} Proprietario: {{msg2}} #{{msg3}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#getpurchased"] = {
            ['title'] = "Compra",
            ['message'] = "O jogador {{msg}} {{msg2}}<br>gastou <b>R${{msg3}}</b> em compras.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#getwhats"] = {
            ['title'] = "Whats",
            ['message'] = "WhatsApp: {{msg}}\nCopiado para area de transferencia",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#notbanned"] = {
            ['title'] = "Ban",
            ['message'] = "Jogador não possui histórico de banimentos",
            ['type'] = "Warning",
            ['duration'] = 5000
        },

        ["#intagramadicionadosucesso"] = {
            ['title'] = "Instagram",
            ['message'] = "Instagram adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#tiktokadicionadosucesso"] = {
            ['title'] = "TikTok",
            ['message'] = "TikTok adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#coowldownreporte"] = {
            ['title'] = "Reporte",
            ['message'] = "Aguarde {{msg}} segundos para fazer um novo report.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naopodereviver"] = {
            ['title'] = "Reviver",
            ['message'] = "Você não pode reviver essa pessoa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocancelado"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado foi cancelado por falta de resposta.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadofinalizado"] = {
            ['title'] = "Chamado",
            ['message'] = "Você não pode fazer um chamado enquanto estiver finalizado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadomundoarena"] = {
            ['title'] = "Chamado",
            ['message'] = "Você não pode fazer um chamado dentro da arena.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadomundopadrao"] = {
            ['title'] = "Chamado",
            ['message'] = "Você só pode realizar chamados no mundo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadosemdinheiro"] = {
            ['title'] = "Chamado",
            ['message'] = "Você não tem dinheiro suficiente para fazer um chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocooldown"] = {
            ['title'] = "Chamado",
            ['message'] = "Aguarde {{msg}} segundos para fazer um novo chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#delnpc"] = {
            ['title'] = "NPC",
            ['message'] = "Todos os npcs foram deletados com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#delobjeto"] = {
            ['title'] = "Objeto",
            ['message'] = "Todos os objetos foram deletados com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#orgnotvip"] = {
            ['title'] = "VIP",
            ['message'] = "Sua organização não tem VIP ativo. VIP: {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rdmon"] = {
            ['title'] = "RDM",
            ['message'] = "Você ativou o RDM.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rdmoff"] = {
            ['title'] = "RDM",
            ['message'] = "Você desativou o RDM.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#avaliousucesso"] = {
            ['title'] = "Avaliação",
            ['message'] = "Avaliação enviada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avalioujogador"] = {
            ['title'] = "Avaliação",
            ['message'] = "Você já avaliou este jogador recentemente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoperm"] = {
            ['title'] = "Telão",
            ['message'] = "Você não tem permissão para usar este telão.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoadd"] = {
            ['title'] = "Telão",
            ['message'] = "Você adicionou um novo telão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoaddperm"] = {
            ['title'] = "Telão",
            ['message'] = "Você adicionou permissão para o jogador {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoremover"] = {
            ['title'] = "Telão",
            ['message'] = "Você removeu um telão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaorem"] = {
            ['title'] = "Telão",
            ['message'] = "Você removeu permissão para o jogador  {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoadd"] = {
            ['title'] = "Telão",
            ['message'] = "Você adicionou permissão para o jogador {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoselecionado"] = {
            ['title'] = "Telão",
            ['message'] = "Não existe um telão neste local.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoselecionado"] = {
            ['title'] = "Telão",
            ['message'] = "Não existe um telão neste local.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaonaoexiste"] = {
            ['title'] = "Telão",
            ['message'] = "Não existe um telão neste local.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recebersalariofac"] = {
            ['title'] = "Salário",
            ['message'] = "Você recebeu R$ {{msg}} referente ao seu VIP Facção.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#recebersalario"] = {
            ['title'] = "Salário",
            ['message'] = "Você recebeu R$ {{msg}} x referente ao seu Cargo {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#caixajaestaroubando"] = {
            ['title'] = "Roubo",
            ['message'] = "Você já está roubando um caixa eletrônico.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#caixavazio"] = {
            ['title'] = "Roubo",
            ['message'] = "Esse caixa está vazio.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#Desencriptacaoandamento"] = {
            ['title'] = "Roubo",
            ['message'] = "Desencriptação em andamento, aguarde {{msg}} segundos.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubofaltaitem"] = {
            ['title'] = "Roubo",
            ['message'] = "Opa, você não tem  {{msg}} x {{msg2}}.. Que tal procurar um desmanche para conseguir um e voltar aqui?",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboparticipando"] = {
            ['title'] = "Roubo",
            ['message'] = "Você esta participando do roubo a {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboretirardinheiro"] = {
            ['title'] = "Roubo",
            ['message'] = "Retire o dinheiro do roubo no blip.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboprogresso"] = {
            ['title'] = "Roubo",
            ['message'] = "O portador do roubo morreu, fique vivo para retirar o dinheiro quando o roubo for finalizado.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboexit"] = {
            ['title'] = "Roubo",
            ['message'] = "Você saiu da area do roubo, o roubo foi cancelado.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboemprogresso"] = {
            ['title'] = "Roubo",
            ['message'] = "Progresso de desencriptação do sistema iniciado, o mesmo vai estar concluído em {{msg}} segundos.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#rouboparticipando"] = {
            ['title'] = "Roubo",
            ['message'] = "Você esta participando do roubo a {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubolimiteproximo"] = {
            ['title'] = "Roubo",
            ['message'] = "Número de bandidos proximos precisa ser maior que {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000

        },
        ["#roubolimite"] = {
            ['title'] = "Roubo",
            ['message'] = "Número de bandidos precisa ser maior que {{msg}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#roubonot"] = {
            ['title'] = "Roubo",
            ['message'] = "Você não pode receber o dinheiro desse roubo.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#portedearmaremglock"] = {
            ['title'] = "POLICIA",
            ['message'] = "Retirou uma glock.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmacooldown"] = {
            ['title'] = "POLICIA",
            ['message'] = "Aguarde {{msg}} segundos para usar novamente.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmacheck"] = {
            ['title'] = "POLICIA",
            ['message'] = "O jogador {{msg}}  possui porte de armas nivel {{msg2}} ",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmasem"] = {
            ['title'] = "POLICIA",
            ['message'] = "Você não possui porte de armas.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmarem"] = {
            ['title'] = "POLICIA",
            ['message'] = "Você removeu um porte de armas do cidadão.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmajaremovido"] = {
            ['title'] = "POLICIA",
            ['message'] = "O jogador {{msg}}  não possui porte de armas.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmaoff"] = {
            ['title'] = "POLICIA",
            ['message'] = "O jogador não está online.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmajapossui"] = {
            ['title'] = "POLICIA",
            ['message'] = "O jogador {{msg}} já possui todas as licenças.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmanivel"] = {
            ['title'] = "POLICIA",
            ['message'] = "Você adicionou licença nivel {{msg}} para o cidadão {{msg2}}",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#portedearmaadd"] = {
            ['title'] = "POLICIA",
            ['message'] = "Você deu um porte de armas para o cidadão.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#permarsenal"] = {
            ['title'] = "POLICIA",
            ['message'] = "Você não tem acesso ao arsenal.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#erroapreenderpolicia"] = {
            ['title'] = "POLICIA",
            ['message'] = "Você não pode apreender itens de outro policial.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#erroapreenderalgema"] = {
            ['title'] = "POLICIA",
            ['message'] = "O suspeito não está algemado.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#aprenderconcluido"] = {
            ['title'] = "POLICIA",
            ['message'] = "Itens removidos.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        --- daqui p baixo traduzido norris 10/10
        ["#valorinvalido"] = {
            ['title'] = "Eventos",
            ['message'] = "Valor inválido.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaocriado"] = {
            ['title'] = "Eventos",
            ['message'] = "voce criou uma pensão de R$ {{msg}} Reais de pensão para {{msg2}}",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaodeletado"] = {
            ['title'] = "Eventos",
            ['message'] = "Você deletou a pensão de {{msg}}",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaorecebido"] = {
            ['title'] = "Eventos",
            ['message'] = "Você recebeu R$ {{msg}}  Reais de pensão.",
            ['type'] = "Payment",
            ['duration'] = 15000
        },
        ["#facremovererro"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} não encontrada.",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#facremover"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} desvinculada do grupo",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#movebaufacerroqi"] = {
            ['title'] = "Eventos",
            ['message'] = "Erro ao mover itens dos baus (Grupo/Facção inválida) Somente use esse comando se seu QI for acima de 5.",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#movebaufacerro"] = {
            ['title'] = "Eventos",
            ['message'] = "Erro ao mover itens dos baus (Baú já existente).",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#movebaufac"] = {
            ['title'] = "Eventos",
            ['message'] = "Itens dos baus movidos de {{msg}} para {{msg2}}",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#vinculadosucessofac"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} já vinculada ao grupo {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#javinculadofac"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} já vinculado a facção {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#javinculadogrupo"] = {
            ['title'] = "Eventos",
            ['message'] = "Grupo {{msg}} já vinculado a facção {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#eventocriado"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento criado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#coletacancel"] = {
            ['title'] = "Eventos",
            ['message'] = "Coleta cancelada.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#negouabraco"] = {
            ['title'] = "Acoes",
            ['message'] = "A pessoa negou o abraço.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#finalizar"] = {
            ['title'] = "Acoes",
            ['message'] = "Você finalizou o {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#finalizarerro"] = {
            ['title'] = "Acoes",
            ['message'] = "Voce não pode finalizar essa pessoa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#familiajogadoroff"] = {
            ['title'] = "Familia",
            ['message'] = "O Jogador nao esta online.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiarecusou"] = {
            ['title'] = "Familia",
            ['message'] = "O Jogador recusou o convite.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaexit"] = {
            ['title'] = "Familia",
            ['message'] = "Você saiu da família {{msg}} ",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaremovido"] = {
            ['title'] = "Familia",
            ['message'] = "Você foi removido da família {{msg}} ",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiadelete"] = {
            ['title'] = "Familia",
            ['message'] = "Você deletou a família {{msg}} ",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaentrou"] = {
            ['title'] = "Familia",
            ['message'] = "Você entrou na família {{msg}} ",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiarem"] = {
            ['title'] = "Familia",
            ['message'] = "Você removeu o passaporte {{msg}} da família {{msg2}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaadd"] = {
            ['title'] = "Familia",
            ['message'] = "Você adicionou o passaporte {{msg}} na família {{msg2}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaconvite"] = {
            ['title'] = "Familia",
            ['message'] = "O Convite foi enviado.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiacriada"] = {
            ['title'] = "Familia",
            ['message'] = "Você criou a família {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaexistente"] = {
            ['title'] = "Familia",
            ['message'] = "Já existe uma família com esse nome.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#vocelavou"] = {
            ['title'] = "Lavagem",
            ['message'] = "Você lavou $ {{msg}} e teve ${{msg2}} de taxa.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#vocemultou"] = {
            ['title'] = "Multa",
            ['message'] = "Você multou em $ {{msg}} dólares.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aguarde"] = {
            ['title'] = "Acoes",
            ['message'] = "Você morreu para o passaporte {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#vocemorreu"] = {
            ['title'] = "Acoes",
            ['message'] = "Você morreu para o passaporte {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculomove"] = {
            ['title'] = "Veiculo",
            ['message'] = "O veículo está em movimento.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#blockcarregar2"] = {
            ['title'] = "Acoes",
            ['message'] = "Voce nao pode carregar alguem que ja esta sendo carregada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockcarregar"] = {
            ['title'] = "Acoes",
            ['message'] = "Você não pode carregar este jogador.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#player_attachment_error_has_pending_attachment_self"] = {
            ['title'] = "Acoes",
            ['message'] = "Você já está carregando alguém ou sendo carregado!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#player_attachment_error_has_pending_attachment_other"] = {
            ['title'] = "Acoes",
            ['message'] = "Este jogador já está sendo carregado ou carregando alguém!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#painelaliasalterar"] = {
            ['title'] = "LIDER",
            ['message'] = "Alias da organização {{msg}} alterado para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelcargomaior"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não pode alterar a permissão de alguém com cargo maior que o seu.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#painelsetradio"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou o canal de rádio da organização {{msg}} para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelerrolider"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não é o líder da organização.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#errofacperm"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não pertence a nenhuma organização.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelwebhook"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou o webhook de demissão da organização {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupamerro"] = {
            ['title'] = "PAINEL",
            ['message'] = "A roupa masculina da organização {{msg}} não foi definida.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupaferro"] = {
            ['title'] = "Roupa",
            ['message'] = "A roupa feminina da organização {{msg}} não foi definida.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupam"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou a roupa masculina da organização {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupaf"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou a roupa feminina da organização {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setpasse"] = {
            ['title'] = "Battlepass",
            ['message'] = "Voce setou o Season Pass para o passaporte {{msg}} para o nivel {{msg2}} com experiencia {{msg3}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resetpassperm"] = {
            ['title'] = "Acoes",
            ['message'] = "Voce não tem permissão para usar esse comando.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resetpassnivel"] = {
            ['title'] = "battlepass",
            ['message'] = "Voce resetou o Season Pass para o passaporte {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#receberskin"] = {
            ['title'] = "battlepass",
            ['message'] = "Você recebeu a skin {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#receberdiamante"] = {
            ['title'] = "battlepass",
            ['message'] = "Você recebeu {{msg}} diamante(s).",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recebergaragem"] = {
            ['title'] = "battlepass",
            ['message'] = "Você recebeu  {{msg}}  garagem(s).",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#subinivelpasse"] = {
            ['title'] = "battlepass",
            ['message'] = "Você subiu para o nível {{msg}} do passe de batalha.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#conquistaadd"] = {
            ['title'] = "Conquista",
            ['message'] = "Conquista adicionada com sucesso!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#conquistanaoencontrada"] = {
            ['title'] = "Conquista",
            ['message'] = "Conquista não encontrada!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#garagemadd"] = {
            ['title'] = "Garagem",
            ['message'] = "Garagem adicionada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#garagemproxima"] = {
            ['title'] = "Garagem",
            ['message'] = "A garagem precisa ser próximo da entrada.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#semdiamantes"] = {
            ['title'] = "Garagem",
            ['message'] = "Você não tem  {{msg}} Diamantes",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#demitirpainel"] = {
            ['title'] = "PROMOCAO",
            ['message'] = "Você foi demitido por  {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#contratadopainel"] = {
            ['title'] = "PROMOCAO",
            ['message'] = "Você foi contratado por  {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#promotepainel"] = {
            ['title'] = "PROMOCAO",
            ['message'] = "Você foi promovido para {{msg}} por  {{msg2}} ",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#demitirpermmaior"] = {
            ['title'] = "PERMISSAO",
            ['message'] = "Você não pode demitir alguém com cargo maior que o seu.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadorpermmaior"] = {
            ['title'] = "PERMISSAO",
            ['message'] = "Você não pode alterar a permissão de alguém com cargo maior que o seu.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadoralterarperm"] = {
            ['title'] = "PERMISSAO",
            ['message'] = "Você não pode alterar a permissão para uma permissão maior que a sua.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadorsemperm"] = {
            ['title'] = "PERMISSAO",
            ['message'] = "O Jogador não possui permissão.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#alterarpropriaperm"] = {
            ['title'] = "PERMISSAO",
            ['message'] = "Você não pode alterar a sua própria permissão. ",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#selecttitulo"] = {
            ['title'] = "Titulo",
            ['message'] = "Você selecionou o título ",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#selectgaragem"] = {
            ['title'] = "Garagem",
            ['message'] = "Selecione o local da garagem.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoinexistente"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo inexistente.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#sistemavendasdesativado"] = {
            ['title'] = "Garagem",
            ['message'] = "Sistema de venda desativado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#emrota"] = {
            ['title'] = "Rotas",
            ['message'] = "Você já está em uma rota!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#erroiniciarrota"] = {
            ['title'] = "Rotas",
            ['message'] = "Você não pode iniciar uma rota aqui!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entregacarga"] = {
            ['title'] = "Carga",
            ['message'] = "Você entregou a carga com sucesso.",
            ['type'] = "Work",
            ['duration'] = 8000

        },
        ["#erroiniciarrota"] = {
            ['title'] = "Rotas",
            ['message'] = "Você não pode iniciar uma rota aqui!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#garrafavazia"] = {
            ['title'] = "Carga",
            ['message'] = "Garrafa vazia não encontrada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#pagamentomotorista"] = {
            ['title'] = "Motorista",
            ['message'] = "Você recebeu R${{msg}} reais.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#erroacao"] = {
            ['title'] = "Acoes",
            ['message'] = "Nao foi possivel realizar essa ação!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },

        ["#servidorreiniciando"] = {
            ['title'] = "Server",
            ['message'] = "Servidor em reinicialização.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#chamadoatendido"] = {
            ['title'] = "Chamado",
            ['message'] = "Chamado atendido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },

        ["#chamadoenviado"] = {
            ['title'] = "Chamado",
            ['message'] = "Chamado enviado aguarde.",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#cooldowncallmedic"] = {
            ['title'] = "Chamado",
            ['message'] = "Aguarde {{msg}} segundos para fazer um novo chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#chamadocancel"] = {
            ['title'] = "Denúncia",
            ['message'] = "Seu chamado foi cancelado por falta de resposta.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#denunciainvalido"] = {
            ['title'] = "Denúncia",
            ['message'] = "Passaporte inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#denunciatime"] = {
            ['title'] = "Denúncia",
            ['message'] = "Aguarde um pouco para fazer uma nova denúncia.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#denunciasimesmo"] = {
            ['title'] = "Denúncia",
            ['message'] = "Você não pode denunciar a si mesmo.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#denunciaok"] = {
            ['title'] = "Denúncia",
            ['message'] = "Denúncia realizada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#avaliarcityperm"] = {
            ['title'] = "Feedback",
            ['message'] = "Você não tem permissão para avaliar este chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#avaliarcity"] = {
            ['title'] = "Feedback",
            ['message'] = "Agradecemos pela sua avaliação, ela é muito importante para o desenvolvimento da nossa STAFF.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#updatecodecache"] = {
            ['title'] = "Codiguin",
            ['message'] = "Cache atualizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#codigoerro501"] = {
            ['title'] = "Codiguin",
            ['message'] = "Erro ao atualizar código (501).",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#codigoerro500"] = {
            ['title'] = "Codiguin",
            ['message'] = "Erro ao atualizar código (500).",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#codigoexistente"] = {
            ['title'] = "Codiguin",
            ['message'] = "Código já existe.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#codigoatt"] = {
            ['title'] = "Codiguin",
            ['message'] = "Código atualizado com sucesso Novo Codigo: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#codigoerro"] = {
            ['title'] = "Codiguin",
            ['message'] = "Código inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#codigoresgate"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você resgatou o código {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#codigoads"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você não pode resgatar o código ADS.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#codigoadsdias"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você não pode resgatar o código ADS (Dias).",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#PassaporteInvalido"] = {
            ['title'] = "Codiguin",
            ['message'] = "Passaporte inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#vocerecebeugrupo"] = {
            ['title'] = "battlepass",
            ['message'] = "Você recebeu o grupo {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000

        },
        ["#Vehicle"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você recebeu um veículo {{msg}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#arenadollars"] = {
            ['title'] = "Arena",
            ['message'] = "Dólares insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#arenainvalido"] = {
            ['title'] = "Arena",
            ['message'] = "Time inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000

        },
        ["#arenatime"] = {
            ['title'] = "Arena",
            ['message'] = "Você já escolheu um time. {{msg}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#startareanaviso"] = {
            ['title'] = "Arena",
            ['message'] = "Você so pode acessar do mundo padrao.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenafull"] = {
            ['title'] = "Arena",
            ['message'] = "Arena cheia.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#wallstreerecruited"] = {
            ['title'] = "Codiguin",
            ['message'] = "O jogador recrutado resgatou seu codigo {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallstreeresgate"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você resgatou o código {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallstreetperm"] = {
            ['title'] = "wallstreet",
            ['message'] = "Você não tem permissão para fazer isso.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wallstreetiniciante"] = {
            ['title'] = "wallstreet",
            ['message'] = "O jogador em questao não é um iniciante.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wallstreetstart"] = {
            ['title'] = "wallstreet",
            ['message'] = "WallStreet Iniciado para o jogador em questão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mensagemwallstreet"] = {
            ['title'] = "wallstreet",
            ['message'] = nil,
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#forcarradio"] = {
            ['title'] = "Radio",
            ['message'] = "Nenhum jogador encontrado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#retencaoin"] = {
            ['title'] = "Check",
            ['message'] = "Check-in realizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#retencaoout"] = {
            ['title'] = "Check",
            ['message'] = "Check-out realizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avisoadmrem"] = {
            ['title'] = "Aviso",
            ['message'] = "Aviso removido com sucesso.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadmtimeexists"] = {
            ['title'] = "Aviso",
            ['message'] = "Tempo já existente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadmtimeprox"] = {
            ['title'] = "Aviso",
            ['message'] = "Tempo já existente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadm"] = {
            ['title'] = "Aviso",
            ['message'] = "Tempo já existente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Função",
            ['message'] = "Você precisa estar no chão para realizar essa funcao.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Função",
            ['message'] = "Você precisa estar no chão para realizar essa funcao.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Função",
            ['message'] = "Você precisa estar no chão para realizar essa funcao.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recok"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Você já pode fazer outro anuncio de recrutamento.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recaviso"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Sua notificacao de recrutamento ira aparecer as {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rectime"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Aguarde {{msg}} para enviar outro recrutamento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#notevento"] = {
            ['title'] = "EVENTO",
            ['message'] = "Você não pode entrar no mundo de evento enquanto o evento royale esta ativo.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#getsource"] = {
            ['title'] = "GETSOURCE",
            ['message'] = "Source: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#idarea"] = {
            ['title'] = "IDAREA",
            ['message'] = "{{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#idareatotal"] = {
            ['title'] = "IDAREA",
            ['message'] = "Total: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#setroupa"] = {
            ['title'] = "CLOTHES",
            ['message'] = "Roupas aplicadas com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#setaudio"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Áudio adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#remaudio"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Áudio removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        }, 
        ["#hud2in"] = {
            ['title'] = "HUD",
            ['message'] = "Hud2 ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        }, 
        ["#hud2out"] = {
            ['title'] = "HUD",
            ['message'] = "Hud2 desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        }, 
        ["#hud2perm"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Você não tem permissão para isso.",
            ['type'] = "Warning",
            ['duration'] = 5000
        }, 
        ["#dvp"] = {
            ['title'] = "Pds",
            ['message'] = "Todos os peds foram deletados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        }, 
        ["#salarioprefeito"] = {
            ['title'] = "PREFEITO",
            ['message'] = nil,
            ['type'] = "Payment",
            ['duration'] = 5000
        }, 
        ["#dvo"] = {
            ['title'] = "Dv",
            ['message'] = "Todos os objetos foram deletados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        }, 
        ["#checkout"] = {
            ['title'] = "CHECKOUT",
            ['message'] = "Checkout gerado com sucesso, URL copiado automaticamente!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        }, 
        ["#checkouterro"] = {
            ['title'] = "CHECKOUT",
            ['message'] = "Erro ao gerar checkout!",
            ['type'] = "Warning",
            ['duration'] = 5000
        }, 
        ["#delobjeto"] = {
            ['title'] = "ADMIN",
            ['message'] = " {{msg}} entidades deletadas.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        }, 
        ["#license"] = {
            ['title'] = "License",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },        
        ["#discordid"] = {
            ['title'] = "Discord",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#sendoprocurado"] = {
            ['title'] = "Procurado",
            ['message'] = "Você está sendo procurado, aguarde  {{msg}} Para efetuar essa ação novamente.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#procurado"] = {
            ['title'] = "Procurado",
            ['message'] = "Você está sendo procurado, aguarde {{msg}} Para efetuar essa ação novamente.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#roupascancel"] = {
            ['title'] = "CANCEL",
            ['message'] = "Você não pode fazer isso agora.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#robberycancel"] = {
            ['title'] = "ROBBERY",
            ['message'] = "Você não pode fazer isso agora.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#remadminternoout"] = {
            ['title'] = "AVISO",
            ['message'] = "Avisos bloqueados",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#remadminternoin"] = {
            ['title'] = "AVISO",
            ['message'] = "Avisos liberados",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#dengineerro"] = {
            ['title'] = "ADMIN",
            ['message'] = "Jogador não encontrado.",
            ['type'] = "Administration",  
            ['duration'] = 5000
        },
        ["#dengine"] = {
            ['title'] = "ADMIN",
            ['message'] = "Você precisa informar o ID do jogador.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#tptomex1"] = {
            ['title'] = "ADMIN",
            ['message'] = "Você nao pode teleportar um jogador que esta dentro do X1.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#speechin"] = {
            ['title'] = "SPEECH",
            ['message'] = "Speech ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#speechout"] = {
            ['title'] = "SPEECH",
            ['message'] = "Speech desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#banglobal"] = {
            ['title'] = "Ban",
            ['message'] = "Jogador banido globalmente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#banglobalerro"] = {
            ['title'] = "Ban",
            ['message'] = "Erro ao banir jogador globalmente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#purchased"] = {
            ['title'] = "purchased",
            ['message'] = "O jogador {{msg}} {{msg2}} Gastou R$ {{msg3}} em compras.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#KickError"] = {
            ['title'] = "Mensagem",
            ['message'] = "Você não digitou uma mensagem de kick.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#unvip"] = {
            ['title'] = "VIP",
            ['message'] = "Passaporte {{msg}} retirado do grupo {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ItemAreaTime"] = {
            ['title'] = "Item",
            ['message'] = "Aguarde {{msg}} segundos para usar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ItemAreadistance"] = {
            ['title'] = "Item",
            ['message'] = "Você não pode dar item em uma área maior que 40.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#createobject1"] = {
            ['title'] = "CREATEOBJECT",
            ['message'] = "Você ativou a criação de objetos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#createobject2"] = {
            ['title'] = "CREATEOBJECT",
            ['message'] = "Você desativou a criação de objetos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mudarnome1"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte atualizado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mudarnome2"] = {
            ['title'] = "Passaporte",
            ['message'] = "Nomes com emojis não são permitidos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#changeid"] = {
            ['title'] = "CHANGEID",
            ['message'] = "Passaporte alterado para {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        --- pra cima traduzido norris 10/10
        ["#rateLimitWait"] = {
            ['title'] = "Aviso",
            ['message'] = "Aguarde {{msg}} segundos para fazer isso novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#jumpIn"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#jumpOut"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#freezeIn"] = {
            ['title'] = "Freeze",
            ['message'] = "Freeze ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#freezeOut"] = {
            ['title'] = "Freeze",
            ['message'] = "Freeze desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#godModeIn"] = {
            ['title'] = "Godmode",
            ['message'] = "Godmode ativado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#godModeOut"] = {
            ['title'] = "Godmode",
            ['message'] = "Godmode desativado com sucesso.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#deathTimer"] = {
            ['title'] = "DEATHTIMER",
            ['message'] = "DeathTimer alterado para {{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#peso"] = {
            ['title'] = "PESO",
            ['message'] = "Peso alterado para {{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ugroups"] = {
            ['title'] = "UGROUPS ({{Msg2}})",
            ['message'] = "{{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#clearinv"] = {
            ['title'] = "CLEARINV",
            ['message'] = "Limpeza concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#gem"] = {
            ['title'] = "Diamantes",
            ['message'] = "Diamantes entregues.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#item2"] = {
            ['title'] = "item2",
            ['message'] = "Você setou  {{msg}}x {{msg2}} no passaporte {{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },        
        ["#world"] = {
            ['title'] = "MUNDO",
            ['message'] = "Mundo: {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#delete"] = {
            ['title'] = "Delete",
            ['message'] = "Personagem {{msg}} deletado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wl"] = {
            ['title'] = "WHITELIST",
            ['message'] = "WHITELIST PARA A LICENCA {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unwl"] = {
            ['title'] = "WHITELIST",
            ['message'] = "REMOVIDO WHITELIST PARA A ID {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#soltar"] = {
            ['title'] = "PRISAO",
            ['message'] = "Passaporte {{msg}} solto.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#kick"] = {
            ['title'] = "Kick",
            ['message'] = "Passaporte {{msg}} expulso.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#kicksource"] = {
            ['title'] = "Kick",
            ['message'] = "Source {{msg}} expulso.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#applyBan"] = {
            ['title'] = "Ban",
            ['message'] = "Passaporte {{msg}} banido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#applyAdv"] = {
            ['title'] = "Ban",
            ['message'] = "Passaporte {{msg}} {{msg2}} Motivo: {{msg3}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#unban"] = {
            ['title'] = "UNBAN",
            ['message'] = "Passaporte {{msg}} desbanido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#remadv"] = {
            ['title'] = "BAN",
            ['message'] = "Passaporte {{msg}} adv removida.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#AdminUnban"] = {
            ['title'] = "Admin Unban",
            ['message'] = "Passaporte {{msg}} desbanido.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#unbanid"] = {
            ['title'] = "Unbanid",
            ['message'] = "Id conta {{msg}} desbanido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#bansource"] = {
            ['title'] = "Ban Source",
            ['message'] = "Passaporte {{msg}} banido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#addslot"] = {
            ['title'] = "SLOTS",
            ['message'] = "Voce aumentou os slots de personagem do Passaporte {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#token"] = {
            ['title'] = "TOKEN",
            ['message'] = "Você já vinculou seu token.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#group"] = {
            ['title'] = "GROUP",
            ['message'] = "Você não tem permissão para definir este grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#groupPass"] = {
            ['title'] = "GROUP PASSAPORT",
            ['message'] = "Adicionado {{msg}} ao passaporte {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ungroup"] = {
            ['title'] = "UNGROUP",
            ['message'] = "Removido {{msg}} ao passaporte {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#players"] = {
            ['title'] = "ONLINE",
            ['message'] = "Jogadores Conectados: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#itemall"] = {
            ['title'] = "ItemALL",
            ['message'] = "Envio concluído.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#lista"] = {
            ['title'] = "Online",
            ['message'] = "Total Online: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#id"] = {
            ['title'] = "ID",
            ['message'] = "ID: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#quake"] = {
            ['title'] = "terremoto",
            ['message'] = "Os geólogos informaram para nossa unidade governamental que foi encontrado um abalo de magnitude 60 na Escala Richter, encontrem abrigo até que o mesmo passe.",
            ['type'] = "Warning",
            ['duration'] = 60000
        },
        ["#remcar"] = {
            ['title'] = "ADDCAR",
            ['message'] = "Veículo removido com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#mute"] = {
            ['title'] = "OFFLINE",
            ['message'] = "Jogador não está na cidade.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passMute"] = {
            ['title'] = "PASSAPORTE MUTADO",
            ['message'] = "Passaporte {{msg}} foi MUTADO.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#muteAdv"] = {
            ['title'] = "PASSAPORTE MUTADO ADV",
            ['message'] = "Voce foi mutado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passUnmute"] = {
            ['title'] = "PASSAPORTE DESMUTADO",
            ['message'] = "Passaporte {{msg}} foi DESMUTADO.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unmuteAdv"] = {
            ['title'] = "PASSAPORTE DESMUTADO ADV",
            ['message'] = "Voce foi desmutado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mundo"] = {
            ['title'] = "MUNDO",
            ['message'] = "Mundo: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#mundoNAO"] = {
            ['title'] = "MUDAR MUNDO",
            ['message'] = "Você não pode mudar de mundo morto.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#testDriveMundoNAO"] = {
            ['title'] = "TEST DRIVE",
            ['message'] = "Você não pode mudar de mundo enquanto está em um test-drive",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entrouAdv"] = {
            ['title'] = "Entrou",
            ['message'] = "Você entrou no mundo {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mundoNAGORA"] = {
            ['title'] = "MUNDO",
            ['message'] = "Você não pode mudar de mundo agora.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mundotoxico"] = {
            ['title'] = "MUNDO TOXICO",
            ['message'] = "Você entrou no mundo tóxico.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#resetseasonpass"] = {
            ['title'] = "RESETOU PASSE",
            ['message'] = "Você resetou o passe de batalha",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#skinstock"] = {
            ['title'] = "ATUALIZOU STOCK SKIN",
            ['message'] = "Você atualizou o stock da skin {{msg}} para {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#allstock"] = {
            ['title'] = "ATUALIZOU STOCK SKIN",
            ['message'] = "Você atualizou o stock das skins para {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mundopadrao"] = {
            ['title'] = "MUNDO PADRAO",
            ['message'] = "Você entrou no mundo padrão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#toxico"] = {
            ['title'] = "PASSAPORTE TOXICO",
            ['message'] = "Você setou o passaporte {{msg}} como tóxico.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#verificar"] = {
            ['title'] = "VERIFICAR",
            ['message'] = "Discord: {{msg}} Personagens: {{msg2}}",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#untoxico"] = {
            ['title'] = "SETADO NORMAL",
            ['message'] = "Você setou o passaporte {{msg}} como normal.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#newblip"] = {
            ['title'] = "NOVO BLIP",
            ['message'] = "Você criou o blip {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#removeblip"] = {
            ['title'] = "REMOVE BLIP",
            ['message'] = "Você removeu o blip {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#blipname"] = {
            ['title'] = "NOME BLIP",
            ['message'] = "Você alterou o nome do blip {{msg}} para {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#wipe"] = {
            ['title'] = "Wipe",
            ['message'] = "Passaporte {{msg}} Wipado.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#ajudaRec"] = {
            ['title'] = "Ajuda Recrutamento",
            ['message'] = "{{msg}} Novatos pela cidade! Você precisa ajudar no recrutamento!",
            ['type'] = "Attention",
            ['duration'] = 7500
        },
        ["#comandoNpermitido"] = {
            ['title'] = "Permissão",
            ['message'] = "Você não tem permissão para usar esse comando, adquira já um vip em nossa loja.",
            ['type'] = "Warning",
            ['duration'] = 7500
        },
        ["#ney"] = {
            ['title'] = "Ney",
            ['message'] = "Você realmente tentou derrubar um DEUS? MAIS RESPEITO MERO MORTAL",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#patrimonio"] = {
            ['title'] = "Patrimônio",
            ['message'] = "Jogador: {{msg}} Patrimônio: R$ {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 60000*2
        },
        ["#passNecontrado"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte não encontrado.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#entrouArena"] = {
            ['title'] = "Arena",
            ['message'] = "Você entrou na arena {{msg}} Numero {{msg2}} no time {{msg3}}.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#arenaCheia"] = {
            ['title'] = "Arena",
            ['message'] = "Arena cheia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#escolheuTime"] = {
            ['title'] = "Arena",
            ['message'] = "Você já escolheu um time.{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#timeInvalido"] = {
            ['title'] = "Arena",
            ['message'] = "Time inválido",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#semdoletas"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Dólares insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entrounoGun"] = {
            ['title'] = "GunGame",
            ['message'] = "Você entrou no GunGame Aguarde mais {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#esperaPlayerGun"] = {
            ['title'] = "GunGame",
            ['message'] = "Você entrou no GunGame Aguarde mais 7 jogadores.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#saiuGun"] = {
            ['title'] = "GunGame",
            ['message'] = "Você saiu do GunGame",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ganhouCorridaArmada"] = {
            ['title'] = "GunGame",
            ['message'] = "{{msg}} Ganhou a corrida armada.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#saiuCorridaArmada"] = {
            ['title'] = "GunGame",
            ['message'] = "Você saiu da corrida armada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#manuInvestimento"] = {
            ['title'] = "Investimento",
            ['message'] = "Manutencão Emergencial nos Investimentos, Somente possivel retirada.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#sendCall"] = {
            ['title'] = "CHAMADOS",
            ['message'] = "A descrição não pode ultrapassar 255 caracteres.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#msgLonga"] = {
            ['title'] = "CHAT",
            ['message'] = "Mensagem muito longa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#DeleteMessage"] = {
            ['title'] = "CHAT",
            ['message'] = "Mensagem apagada.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#produAndamento"] = {
            ['title'] = "Produção",
            ['message'] = "Produção em andamento.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#itemDanificado"] = {
            ['title'] = "Item",
            ['message'] = "Item danificado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#mochilaFull"] = {
            ['title'] = "Mochila",
            ['message'] = "Mochila cheia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#addbuff"] = {
            ['title'] = "ADDBUFF",
            ['message'] = "Buff adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rembuff"] = {
            ['title'] = "ADDBUFF",
            ['message'] = "Buff removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#startFarm"] = {
            ['title'] = "FARM",
            ['message'] = "Você iniciou o farm afk, basta ficar 05 minutos para receber seus itens.",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#suggFarm"] = {
            ['title'] = "FARM",
            ['message'] = "Você pode farmar enquanto estiver AFK sem morrer de fome ou sede!",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#condEntrega"] = {
            ['title'] = "Trabalho",
            ['message'] = "Você não pode estar em um veículo para realizar a entrega.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#cancelWork"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho cancelado.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#startMining"] = {
            ['title'] = "MINERAÇÃO",
            ['message'] = "Você iniciou a mineração, para finalizar pressione F6.",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#suggMining"] = {
            ['title'] = "MINERAÇÃO",
            ['message'] = "Você pode minerar enquanto estiver AFK sem morrer de fome ou sede!",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#recebeuItem"] = {
            ['title'] = "FARM",
            ['message'] = "Você recebeu {{msg}} x{{msg2}} .",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#picaretaMissing"] = {
            ['title'] = "Picareta",
            ['message'] = "Picareta não encontrada.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#axeMissing"] = {
            ['title'] = "Machado",
            ['message'] = "Machado não encontrado.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#recebeMining"] = {
            ['title'] = "MINERAÇÃO",
            ['message'] = "Você recebeu R$ {{msg}}.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#nLocalEntrega"] = {
            ['title'] = "Entrega",
            ['message'] = "Você não está no local de entrega.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#calmaEntrega"] = {
            ['title'] = "Entrega",
            ['message'] = "Você está realizando entregas muito rápido.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#bonusfarm"] = {
            ['title'] = "FARM",
            ['message'] = "Bonus de {{msg}}x setado com sucesso!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#semRota"] = {
            ['title'] = "Rotas",
            ['message'] = "Nenhuma rota disponivel para seu emprego!",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#erroRotaCompart"] = {
            ['title'] = "Rotas",
            ['message'] = "Rotas compartilhadas com problemas, tente recriar o grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#longeRota"] = {
            ['title'] = "Rotas",
            ['message'] = "Você está muito longe da rota!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vagaFull"] = {
            ['title'] = "GARAGEM",
            ['message'] = "Todas as vagas estão ocupadas.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#semCarroApreendido"] = {
            ['title'] = "Veiculo",
            ['message'] = "Não possui veículos apreendidos.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#tpGaragem"] = {
            ['title'] = "LIMBO",
            ['message'] = "Você caiu no limbo e foi teleportado para a garagem mais próxima.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#permisGaragem"] = {
            ['title'] = "Garagem",
            ['message'] = "Você não tem permissão para acessar esta garagem.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#aluguelAtrasado"] = {
            ['title'] = "Garagem",
            ['message'] = "Aluguel atrasado, procure um Corretor de Imóveis.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculoVencido"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo {{msg}} vencido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#repNegativa"] = {
            ['title'] = "REPUTACAO",
            ['message'] = "Sua reputação está negativa: {{msg}}. Você irá pagar 20% a mais para a liberação.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#suggDesmanche"] = {
            ['title'] = "Garagem",
            ['message'] = "Você sabia que sendo VIP voce não paga taxas de desmanche ? Adquira já em nossa loja.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculoLiberado"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo liberado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#pagamentoConcluido"] = {
            ['title'] = "Garagem",
            ['message'] = "Pagamento concluído.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#propertiesTax"] = {
            ['title'] = "Casa",
            ['message'] = "Pagamento concluído.<br>Nova data de cobrança: <b>{{msg}}</b>",
            ['type'] = "House",
            ['duration'] = 15000
        },
        ["#blockPropertyTax"] = {
            ['title'] = "Casa",
            ['message'] = "Você só pode adiantar a hipoteca em até 30 dias",
            ['type'] = "House",
            ['duration'] = 15000
        },
        ["#taxaRenovada"] = {
            ['title'] = "Garagem",
            ['message'] = "Taxas renovadas(VIP) com sucesso.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#jaPossuiVeiculo"] = {
            ['title'] = "Garagem",
            ['message'] = "{{msg}} {{msg2}} já possui este modelo de veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#transfConcluida"] = {
            ['title'] = "Garagem",
            ['message'] = "Transferência concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#veiculoModificado"] = {
            ['title'] = "Garagem",
            ['message'] = "Veiculo modificado em {{msg}}% a mais de velocidade, aproveite a nova maquina.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#suggCarroVelo"] = {
            ['title'] = "Garagem",
            ['message'] = "Você não possui VIP? Você sabia que com VIP seu carro ganha até 50% a mais de velocidade? adquira já em nossa loja.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#warningMulta"] = {
            ['title'] = "Garagem",
            ['message'] = "Você possui R${{msg}} em multas para pagar, quite todas as suas dividas no banco para conseguir retirar o veiculo.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aluguelConcluido"] = {
            ['title'] = "Garagem",
            ['message'] = "Aluguel do veículo {{msg}} concluído.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#rastreadorAtivado"] = {
            ['title'] = "Rastreador",
            ['message'] = "Rastreador do veículo foi ativado por 30 segundos, lembrando que se o mesmo estiver em movimento a localização pode ser imprecisa.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#regasteVeiculo"] = {
            ['title'] = "Veiculo",
            ['message'] = "A seguradora efetuou o resgate do seu veículo e o mesmo já se encontra disponível para retirada.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#esperaRastrear"] = {
            ['title'] = "Garagem",
            ['message'] = "Rastreador só pode ser ativado a cada 60 segundos.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#rastreadorDesativado"] = {
            ['title'] = "Garagem",
            ['message'] = "Rastreador está desativado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#taxaAutomatica"] = {
            ['title'] = "Garagem",
            ['message'] = "Taxa do veículo paga automaticamente retire o veiculo da garagem novamente.",
            ['type'] = "Vehicle",
            ['duration'] = 7500
        },
        ["#taxaAtrasada"] = {
            ['title'] = "Garagem",
            ['message'] = "Taxa do veículo atrasada.",
            ['type'] = "Vehicle",
            ['duration'] = 7500
        },
        ["#completeTimer"] = {
            ['title'] = "Timer",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 1000
        },
        ["#addcar"] = {
            ['title'] = "ADDCAR",
            ['message'] = "Veículo adicionado com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#totalVeD"] = {
            ['title'] = "VeD",
            ['message'] = "Total Vehicles: {{msg}} | Total Deletados: {{msg2}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#lockVeic"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo trancado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#openVeic"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo destrancado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoEncontrado"] = {
            ['title'] = "Veiculo",
            ['message'] = "O veículo do seu contrato foi encaminhado para o Impound e o Lester disse que você pode assinar um novo contrato quando quiser.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#veiculoRegistrado"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo foi registrado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoJaLista"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo já está na lista.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#passaporteIdentity"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte: {{msg}} Nome: {{msg2}} {{msg3}} Nº: {{msg4}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#passaporteNome"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte: 9.999 Nome: {{msg}} Nº: {{msg2}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#veicArrest"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo apreendido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veicArrested"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo já se encontra apreendido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#receivedGift"] = {
            ['title'] = "HUB",
            ['message'] = "Você recebeu um presente, vá até o hub (ESC) para resgatar.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#semOrg"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você ainda não está em nenhuma organização, entre em uma para abrir o painel.",
            ['type'] = "Work",
            ['duration'] = 10000
        },
        ["#recebeRecompensa"] = {
            ['title'] = "HUB",
            ['message'] = "Você recebeu {{msg}}x {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#novoChamado"] = {
            ['title'] = "Chamados",
            ['message'] = "Um novo chamado foi aberto! [F1] Total de Chamados abertos {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#notifyChamadasOff"] = {
            ['title'] = "Chamados",
            ['message'] = "Notificações de chamados desativadas.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notifyChamadasOn"] = {
            ['title'] = "Chamados",
            ['message'] = "Notificações de chamados ativadas.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#seuChamadoNao"] = {
            ['title'] = "Chamados",
            ['message'] = "Você não pode responder o seu próprio chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#playerOff"] = {
            ['title'] = "Chamados",
            ['message'] = "Jogador offline.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#esperaChamado"] = {
            ['title'] = "Chamados",
            ['message'] = "Você precisa esperar {{msg}} para responder outro chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#esperaFinalizaChamado"] = {
            ['title'] = "Chamados",
            ['message'] = "Você precisa esperar {{msg}} segundos para finalizar o chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadoOutroAdmin"] = {
            ['title'] = "Chamados",
            ['message'] = "Você não pode finalizar chamdo de outro admin.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#seuChamadoNao"] = {
            ['title'] = "Chamados",
            ['message'] = "Você não pode finalizar o seu próprio chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamondRecivedAtendimento"] = {
            ['title'] = "Obrigado",
            ['message'] = "Você acaba de receber {{msg}} 💎 de presente por ter atendido o chamado de {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#bonusFinalizacao"] = {
            ['title'] = "Chamados",
            ['message'] = "Você não recebeu bonus pela finalização desse chamado.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#acaoNEncontrada"] = {
            ['title'] = "Acoes",
            ['message'] = "Ação não encontrada/Cheia.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#esperaAcao"] = {
            ['title'] = "PAINEL",
            ['message'] = "Aguarde {{msg}} segundos para realizar uma nova ação.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#inicianteOuDesemp"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "O Jogador precisa ser Iniciante ou Desempregado.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#tryContratar"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Você tentou contratar o ID {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#orgRecivedDiamond"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Sua organização ganhou 🟡 x{{msg}} pontos para sua organização por ter recrutado um iniciante!.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#contrataPassport"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Você contratou o ID {{msg}} para {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naoPSubchefe"] = {
            ['title'] = "Promoção",
            ['message'] = "Você não pode promover um Sub-Chefe.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#promovePassport"] = {
            ['title'] = "Promoção",
            ['message'] = "Voce promoveu o ID: {{msg}} para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rebaixaPassport"] = {
            ['title'] = "Passaporte",
            ['message'] = "Voce rebaixou o ID: {{msg}} para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naodDemitirVc"] = {
            ['title'] = "Passaporte",
            ['message'] = "Você não pode demitir você mesmo.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#demitiuPassport"] = {
            ['title'] = "Passaporte",
            ['message'] = "Você demitiu o ID: {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#vcSacou"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Você sacou: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#qntInvalida"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Quantidade inválida.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vcRemoveu"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Você removeu: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#vcDepositou"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Você depositou: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#perdeLimpar"] = {
            ['title'] = "Deposito",
            ['message'] = "Ao limpar o dinheiro na transferencia, você perdeu 5% do total do dinheiro.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#setleader"] = {
            ['title'] = "LIDER",
            ['message'] = "Você definiu {{msg}} como líder da {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#orgNEncontrada"] = {
            ['title'] = "LIDER",
            ['message'] = "Organização não encontrada.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setarpontosfac"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você adicionou {{msg}} pontos para o grupo {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nomeErradoGrupo"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não digitou o nome do grupo corretamente mula.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#limpouGrupo"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você limpou o grupo {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#msgRecentemente"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você já enviou uma mensagem recentemente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#msgPara"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você enviou uma mensagem para {{msg}} {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#discordParaGrupo"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você adicionou o discord {{msg}} para o grupo {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nomeGrupoIncorreto"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você digitou o nome do grupo incorretamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#deletesquad"] = {
            ['title'] = "Pelotao",
            ['message'] = "Você deletou o pelotão com sucesso!.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#maxPSquad"] = {
            ['title'] = "Pelotao",
            ['message'] = "Pelotão com o máximo de membros!",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#entrouSquad"] = {
            ['title'] = "Pelotao",
            ['message'] = "Você entrou para o {{msg}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#membroEntrouSquad"] = {
            ['title'] = "Pelotao",
            ['message'] = "O Membro {{msg}} Entrou para o pelotão.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#nomeSquadAlterado"] = {
            ['title'] = "Pelotao",
            ['message'] = "O nome do pelotão foi alterado para {{msg}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#cargoMembroAlterado"] = {
            ['title'] = "Pelotao",
            ['message'] = "O cargo do membro {{msg}} foi alterado para {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#membroRetirado"] = {
            ['title'] = "Pelotao",
            ['message'] = "O membro {{msg}} foi retirado do pelotão {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#tempoMorteSquad"] = {
            ['title'] = "Pelotao",
            ['message'] = "O tempo de morte do pelotão {{msg}} foi alterado para {{msg2}} segundos!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#controleCruzeiroDesativado"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Controle de cruzeiro desativado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#controleCruzeiroAtivado"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Controle de cruzeiro ativado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#embarcDesancorada"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Embarcação desancorada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#embarcAncorada"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Embarcação ancorada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#esperaComando"] = {
            ['title'] = "CombatLog",
            ['message'] = "Aguarde {{msg}} segundos para usar o comando novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#saiaPropriPrivada"] = {
            ['title'] = "Propriedade Privada",
            ['message'] = "Você esta numa propriedade privada saia imediatamente.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#usaBandage"] = {
            ['title'] = "Item",
            ['message'] = "Passou ataduras no(a) {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#semFerimento"] = {
            ['title'] = "Ferimento",
            ['message'] = "Nenhum ferimento encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#injuries"] = {
            ['title'] = "Ferimento",
            ['message'] = "{{msg}}",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#drogaNPura"] = {
            ['title'] = "DROGAS",
            ['message'] = "Acho que essa droga não estava pura...",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#marcacaoAtivada"] = {
            ['title'] = "Marcação",
            ['message'] = "Marcações ativadas.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#marcacaoDesativada"] = {
            ['title'] = "Roubos",
            ['message'] = "Marcações desativadas.",
            ['type'] = "Illegal",
            ['duration'] = 3000
        },
        ["#roubarModoGuerra"] = {
            ['title'] = "Roubos",
            ['message'] = "Você so pode roubar se estiver no MODO GUERRA.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#naoRoubarSafe"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Você não pode roubar se estiver no modo safe.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#separar"] = {
            ['title'] = "Separar",
            ['message'] = "{{msg}} {{msg2}} e {{msg3}} {{msg4}} se separaram, venham gados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#relationship"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Aguarde {{msg}} segundos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#iniciouRelacionamento"] = {
            ['title'] = "Relacionamento",
            ['message'] = "{{msg}} {{msg2}} iniciou relacionamento com {{msg3}} {{msg4}}",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#solteiro"] = {
            ['title'] = "Relacionamento",
            ['message'] = "{{msg}} {{msg2}} e {{msg3}} {{msg4}} se separaram, já podem mandar um Oi sumida(o)",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#tentandoTrair"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Alo {{msg}} {{msg2}} chifrudo(a), {{msg3}} {{msg4}} ta tentando te trair.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#meterGaia"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Alo {{msg}} {{msg2}} chifrudo(a), {{msg3}} {{msg4}} tentou te meter gaia.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#repcheck"] = {
            ['title'] = "Reputação",
            ['message'] = "Você deu 👍 LIKE em {{msg}} {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repRecived"] = {
            ['title'] = "REPUTAÇÃO",
            ['message'] = "Você acabou de receber um 👍 LIKE de {{msg}} {{msg2}}{{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repEmEspera"] = {
            ['title'] = "Reputação",
            ['message'] = "Reputação em tempo de espera.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#likeDado"] = {
            ['title'] = "Reputação",
            ['message'] = "Você deu 👍 LIKE em {{msg}} {{msg2}}.!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#likeRecivedFrom"] = {
            ['title'] = "Reputação",
            ['message'] = "Você acabou de receber um 👍 LIKE de {{msg}} {{msg2}}{{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#killNewbieTax"] = {
            ['title'] = "NOVATO",
            ['message'] = "Você pagou uma taxa de R${{msg}} por matar um Iniciante.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#repAdicionada"] = {
            ['title'] = "Reputação",
            ['message'] = "Reputação adicionada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unlikeRecived"] = {
            ['title'] = "Reputação",
            ['message'] = "Você recebeu deslike de {{msg}} {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#me"] = {
            ['title'] = "item",
            ['message'] = "Aguarde {{msg}} segundos para usar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#qruAtivado"] = {
            ['title'] = "QRU",
            ['message'] = "QRU ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#qruDesativado"] = {
            ['title'] = "QRU",
            ['message'] = "QRU desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#roupaAplicada"] = {
            ['title'] = "item",
            ['message'] = "Roupas aplicadas.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#roupaNEncontrada"] = {
            ['title'] = "item",
            ['message'] = "Roupas não encontradas.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#roupaSalva"] = {
            ['title'] = "item",
            ['message'] = "Roupas salvas.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#morreuPara"] = {
            ['title'] = "Morte",
            ['message'] = "Você morreu para o passaporte {{msg}}.",
            ['type'] = "Warning",
            ['duration'] = 60000*5
        },
        ["#aguarde"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aguarde {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#semPermissaoVip"] = {
            ['title'] = "Permissão",
            ['message'] = "Você não tem permissão para usar esse comando, adquira já um vip em nossa loja.",
            ['type'] = "Warning",
            ['duration'] = 7500
        },
        ["#tpFarmAfk"] = {
            ['title'] = "AFK",
            ['message'] = "Você foi teleportado para o farm AFK.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#esperaNovoReport"] = {
            ['title'] = "REPORT",
            ['message'] = "Você reportou recentemente, aguarde {{msg}} segundos para reportar novamente.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#jogadorReportouX"] = {
            ['title'] = "REPORT",
            ['message'] = "O jogador {{msg}} reportou o jogador {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#vcReportouX"] = {
            ['title'] = "REPORT",
            ['message'] = "Você reportou o jogador {{msg}}.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#comandoMorto"] = {
            ['title'] = "SPAM CUSTOMIZADO",
            ['message'] = "Você não pode usar esse comando morto.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#setCustomSpawn"] = {
            ['title'] = "SPAM CUSTOMIZADO",
            ['message'] = "Você setou o spawn cutomizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#vipMessage"] = {
            ['title'] = "VIP",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#alarme"] = {
            ['title'] = "ALARME",
            ['message'] = "{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#alarmeDesativado"] = {
            ['title'] = "ALARME",
            ['message'] = "Alarme desativado.",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#alarmeAtivado"] = {
            ['title'] = "ALARME",
            ['message'] = "Alarme ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 7000
        },
        ["#permissaoAlarme"] = {
            ['title'] = "ALARME",
            ['message'] = "Você não tem permissão para isso.",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#blipmark"] = {
            ['title'] = "blip",
            ['message'] = "{{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#airdrop"] = {
            ['title'] = "Lancamento",
            ['message'] = "Um Airdrop foi lançado e marcado em seu mapa!",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#airdropOpen"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aguarde {{msg}} segundos para abrir outro airdrop!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#airdropOpening"] = {
            ['title'] = "Abrindo",
            ['message'] = "O Airdrop está sendo aberto!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#airdropOpened"] = {
            ['title'] = "Aberto",
            ['message'] = "O Airdrop foi aberto!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#thisAirdrop"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aguarde {{msg}} segundos para abrir esse airdrop!)",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#reposed"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aplicou {{msg}} minutos de repouso.",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#treatment"] = {
            ['title'] = "Tratamento",
            ['message'] = "Tratamento começou.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#precisaGauze"] = {
            ['title'] = "Item",
            ['message'] = "Precisa de 1x {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#dmgResult"] = {
            ['title'] = "Resultado",
            ['message'] = "{{msg}}",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#removePlaster"] = {
            ['title'] = "Hospital",
            ['message'] = "Você já pode retirar o gesso.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#needSyringe"] = {
            ['title'] = "Hospital",
            ['message'] = "Precisa de 3x {{msg}}.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#waitExtraction"] = {
            ['title'] = "Extração",
            ['message'] = "No momento não é possível efetuar a extração, o mesmo ainda está se recuperando ou se acidentou recentemente.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#weakImmuSyst"] = {
            ['title'] = "Hospital",
            ['message'] = "Sistema imunológico do paciente muito fraco.",
            ['type'] = "Hospital",
            ['duration'] = 10000
        },
        ["#removedItens"] = {
            ['title'] = "Item",
            ['message'] = "Itens removidos.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#nothingFound"] = {
            ['title'] = "Item",
            ['message'] = "Nada encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#systemDecryption"] = {
            ['title'] = "Desencriptação",
            ['message'] = "Progresso de desencriptação do sistema iniciado, o mesmo vai estar concluído em {{msg}} segundos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#damagedItem"] = {
            ['title'] = "Item",
            ['message'] = "{{msg}} danificado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#needItemX"] = {
            ['title'] = "Item",
            ['message'] = "Precisa de {{msg}}x {{msg2}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#contingentUnav"] = {
            ['title'] = "Contingente",
            ['message'] = "Contingente indisponível.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vaultEmpty"] = {
            ['title'] = "Cofre",
            ['message'] = "Cofre está vazio, aguarde {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#decryptionInProg"] = {
            ['title'] = "Desencriptação",
            ['message'] = "Desencriptação em andamento, aguarde {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#salary"] = {
            ['title'] = "salario",
            ['message'] = "Você recebeu R${{msg}} reais de {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#salaryVip"] = {
            ['title'] = "salario",
            ['message'] = "Você recebeu R${{msg}} reais de {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#noMoneyWallet"] = {
            ['title'] = "Carteira",
            ['message'] = "O jogador não possui dinheiro na carteira.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#raceWinner"] = {
            ['title'] = "Corrida",
            ['message'] = "A corrida acabou, o vencedor foi {{msg}} #{{msg2}}.",
            ['type'] = "Party",
            ['duration'] = 10000
        },
        ["#dirtyFixMoney"] = {
            ['title'] = "CORRIDA",
            ['message'] = "Você recebeu R$5000 por participar da corrida.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#dirtyMoney"] = {
            ['title'] = "CORRIDA",
            ['message'] = "Você recebeu R${{msg}}  por participar da corrida.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#clandestineRacer"] = {
            ['title'] = "Corrida",
            ['message'] = "Detectamos um corredor clandestino nas ruas.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#noRadio"] = {
            ['title'] = "RADIO",
            ['message'] = "Você não possui um rádio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enteredFrequency"] = {
            ['title'] = "RADIO",
            ['message'] = "Você entrou na frequencia {{msg}} Mhz.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#leaveRadio"] = {
            ['title'] = "RADIO",
            ['message'] = "Você saiu da rádio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#maxCaracter"] = {
            ['title'] = "REGISTRO",
            ['message'] = "Você não pode ultrapassar 255 caracteres.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#punished"] = {
            ['title'] = "PUNIÇÃO",
            ['message'] = "Você foi PUNIDO temporariamente, Você não pode deixar a ILHA.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#enteredSafeZ"] = {
            ['title'] = "Safezone",
            ['message'] = "Você entrou na zona segura.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#leaveSafeZ"] = {
            ['title'] = "Safezone",
            ['message'] = "Você saiu da zona segura.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#enteredSafeMode"] = {
            ['title'] = "Safezone",
            ['message'] = "Você entrou no modo de segurança.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#leaveSafeMode"] = {
            ['title'] = "Safezone",
            ['message'] = "Você saiu da safe o modo segurança foi cancelado.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#safeModeOff"] = {
            ['title'] = "Safezone",
            ['message'] = "Você saiu do modo segurança.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#onOffSafe"] = {
            ['title'] = "Safezone",
            ['message'] = "Você só pode ativar/desativar em uma zona segura.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#goPier"] = {
            ['title'] = "Pier",
            ['message'] = "Vá para o pier.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#fNewbie"] = {
            ['title'] = "NOVATO",
            ['message'] = "Poxa... Que pena ein! Mas fica tranquilo, você não perdeu nada por ainda estar pegando o jeito! Não desanima e vamos pra cima novamente!",
            ['type'] = "Warning",
            ['duration'] = 35000
        },
        ["#safeModeWarning"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Você está em safemode para sua proteção. Para sair deste modo, basta você entrar para qualquer emprego!",
            ['type'] = "Attention",
            ['duration'] = 15000
        },
        ["#leaveWarMode"] = {
            ['title'] = "MODO DE GUERRA",
            ['message'] = "Você saiu do modo de guerra.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emptyFieldWarning"] = {
            ['title'] = "Campo",
            ['message'] = "Não deixe nenhum campo vazio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#safeZoneChange"] = {
            ['title'] = "Safezone",
            ['message'] = "Você precisa estar em uma SAFEZONE para entrar/sair do mundo safe.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enteredWarMode"] = {
            ['title'] = "MODO DE GUERRA",
            ['message'] = "Você entrou no modo guerra.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#belowMinValue"] = {
            ['title'] = "Negado",
            ['message'] = "Valor abaixo do valor mínimo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#playerXHaveSkin"] = {
            ['title'] = "Aviso",
            ['message'] = "{{msg}} {{msg2}} já possui esta skin.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#playerHaveSkin"] = {
            ['title'] = "Atenção",
            ['message'] = "Você já possui esta skin.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#transferCTax"] = {
            ['title'] = "Sucesso",
            ['message'] = "Transferência concluída, você recebeu {{msg}} Gemas, taxa cobrada {{msg2}} Gemas.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#transferC"] = {
            ['title'] = "Sucesso",
            ['message'] = "Transferência concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#dontHaveGem"] = {
            ['title'] = "Negado",
            ['message'] = "{{msg}} {{msg2}} não possui Gemas insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notEnoughGems"] = {
            ['title'] = "Negado",
            ['message'] = "Gemas insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#rejectedTransfer"] = {
            ['title'] = "Negado",
            ['message'] = "{{msg}} {{msg2}} não aceitou a transferência.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emptyStock"] = {
            ['title'] = "Aviso",
            ['message'] = "Essa skin não tem mais estoque.",
            ['type'] = "Attention",
            ['duration'] = 1000
        },
        ["#haveXskin"] = {
            ['title'] = "Aviso",
            ['message'] = "Já possui uma {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#completedPurchase"] = {
            ['title'] = "Sucesso",
            ['message'] = "Compra conluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#completedSale"] = {
            ['title'] = "Sucesso",
            ['message'] = "Venda conluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#equipskinWeapon"] = {
            ['title'] = "Sucesso",
            ['message'] = "Skin equipada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unequipskinWeapon"] = {
            ['title'] = "Sucesso",
            ['message'] = "Skin desequipada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#fLoadCharacter"] = {
            ['title'] = "SPAM",
            ['message'] = "Econtramos problemas ao tentar carregar seu personagem aguarde mais 15</> Segundos.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#relogWarning"] = {
            ['title'] = "Bugado",
            ['message'] = "Seu personagem está com problemas, para ter uma experiência completa por favor relogue.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#maxCharacter"] = {
            ['title'] = "Limite",
            ['message'] = "Limite de personagem atingido.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#deathWarning"] = {
            ['title'] = "Iniciante",
            ['message'] = "Putzz, você acabou desmaiando né? Fica tranquilo que cuidei das suas coisas! Tome mais cuidado da próxima vez e tente não se meter em encrencas.",
            ['type'] = "Information",
            ['duration'] = 28000
        },
        ["#completedTreatment"] = {
            ['title'] = "Tratamento",
            ['message'] = "Tratamento concluído.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#systemTempOff"] = {
            ['title'] = "REPORT BOX",
            ['message'] = "Sistema temporariamente desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitReportBox"] = {
            ['title'] = "REPORT BOX",
            ['message'] = "Você precisa esperar {{msg}} segundos para reportar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitReportCD"] = {
            ['title'] = "REPORTAR",
            ['message'] = "Você precisa esperar {{msg}} segundos para reportar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitEnterWarMode"] = {
            ['title'] = "MODO GUERRA",
            ['message'] = "Você precisa esperar {{msg}} segundos para usar o MODO GUERRA novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#rescueVeicVip"] = {
            ['title'] = "VEICULOS",
            ['message'] = "Você ainda tem veículos para resgatar utilize o comando /carrosvip para resgatar.",
            ['type'] = "Vehicle",
            ['duration'] = 15000
        },
        ["#rescuedVeicVip"] = {
            ['title'] = "VEICULOS",
            ['message'] = "Você resgatou todos os seus veículos vips.",
            ['type'] = "Vehicle",
            ['duration'] = 15000
        },
        ["#noVeicVip"] = {
            ['title'] = "VEICULOS",
            ['message'] = "Você não tem veículos vips para resgatar.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#dominationAreaMarked"] = {
            ['title'] = "Dominacao",
            ['message'] = "Area de dominação foi marcada no seu mapa.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominationWinnerGroup"] = {
            ['title'] = "DOMINACAO",
            ['message'] = "O Grupo {{msg}} GANHOU a dominção de {{msg2}}.",
            ['type'] = "PVP",
            ['duration'] = 15000
        },
        ["#dominationZoneTimer"] = {
            ['title'] = "DOMINACAO",
            ['message'] = "Dominação de {{msg}}. irá iniciar as {{msg2}}.{{msg3}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominationZoneStart"] = {
            ['title'] = "DOMINACAO",
            ['message'] = "Dominação de {{msg}}. irá iniciar, Todos dentro da area!.{{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#createdEvent"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento criado com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#eventStarted"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento iniciado com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#eventNotFound"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento não encontrado ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#restartEvent"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento reiniciado com sucesso ID: {{msg}}",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#pausedEvent"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento pausado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#resumeEvent"] = {
            ['title'] = "Eventos",
            ['message'] = "sucesso","Evento resumido com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#addpointevent"] = {
            ['title'] = "Eventos",
            ['message'] = "Ponto adicionado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#rempointevent"] = {
            ['title'] = "Eventos",
            ['message'] = "Ponto removido com sucesso.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#invasionGroupWinner"] = {
            ['title'] = "INVASAO",
            ['message'] = "O Grupo {{msg}} GANHOU a invasão {{msg2}}.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#zoneInvasionWillStart"] = {
            ['title'] = "INVASAO",
            ['message'] = "Invasão de {{msg}}. irá iniciar as {{msg2}}.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#zoneInvasionStarted"] = {
            ['title'] = "INVASAO",
            ['message'] = "Invasão de {{msg}}. irá iniciar, Todos dentro da area!.{{msg2}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#kickinvasion"] = {
            ['title'] = "Invasão",
            ['message'] = "Você kickou o jogador {{msg}} do evento.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#testDrive"] = {
            ['title'] = "Teste",
            ['message'] = "Teste iniciado, para finalizar saia do veículo.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#alreadyHaveVehic"] = {
            ['title'] = "Veículo",
            ['message'] = "Já possui um {{msg}}",
            ['type'] = "Vehicle",
            ['duration'] = 3000
        },
        ["#notEnoughDiamond"] = {
            ['title'] = "Diamante",
            ['message'] = "Diamantes insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#theftTime"] = {
            ['title'] = "Roubo",
            ['message'] = "Horario de roubo definido com sucesso.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#workFinished"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho finalizado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#workStarted"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho iniciado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#cantDoAgain"] = {
            ['title'] = "Fazer",
            ['message'] = "Você não pode fazer isso no momento.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#attachsActivated"] = {
            ['title'] = "Attachs",
            ['message'] = "Attachs ativados",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#attachsDisabled"] = {
            ['title'] = "Attachs",
            ['message'] = "Attachs desativados",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cantDisable"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Você não pode desmanchar se estiver no mundo safe",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotEquipWeaponOnSafe"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Você não pode equipar armas no mundo safe",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enterWarModeToWeapon"] = {
            ['title'] = "MODO GUERRA",
            ['message'] = "Você precisa entrar no Modo Guerra para poder usar armas -> F9/Outros/Modo Guerra",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantInSafe"] = {
            ['title'] = "SAFEZONE",
            ['message'] = "Você não pode fazer isso dentro de uma safezone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantDropItem"] = {
            ['title'] = "DROP",
            ['message'] = "Você não pode dropar itens no momento.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantStoreItem"] = {
            ['title'] = "BAU",
            ['message'] = "Você não pode guardar esse item.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#noPermissionWithdrawItem"] = {
            ['title'] = "BAU",
            ['message'] = "Você não tem permissão para retirar esse item.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#cantStoreItemInChest"] = {
            ['title'] = "BAU",
            ['message'] = "Você não pode colocar esse item nesse bau.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#chestCreated"] = {
            ['title'] = "Bau",
            ['message'] = "Baú criado com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#chestRemoved"] = {
            ['title'] = "Bau",
            ['message'] = "Baú removido com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#msgChest"] = {
            ['title'] = "Bau",
            ['message'] = "{{msg}}",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#addedPermission"] = {
            ['title'] = "Bau",
            ['message'] = "Permissão adicionada com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#removedPermission"] = {
            ['title'] = "Bau",
            ['message'] = "Permissão removida com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#cantStealNewbie"] = {
            ['title'] = "Revistar",
            ['message'] = "Você não pode roubar alguém iniciante.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cantStealSafe"] = {
            ['title'] = "Roubar",
            ['message'] = "Você não pode roubar alguém iniciante.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cannotSearch"] = {
            ['title'] = "Revistar",
            ['message'] = "Impossibilitado de realizar a revista.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#itemBlocked"] = {
            ['title'] = "Item",
            ['message'] = "Item bloqueado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#cannotSendItem"] = {
            ['title'] = "ENVIAR",
            ['message'] = "Você não pode enviar esse item.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotLootItem"] = {
            ['title'] = "ENVIAR",
            ['message'] = "Você não pode saquear item.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#itensCollected"] = {
            ['title'] = "Item",
            ['message'] = "Itens coletados com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#itemBlockedPolice"] = {
            ['title'] = "Item",
            ['message'] = "Item bloqueado do policial.",
            ['type'] = "Police",
            ['duration'] = 3000
        },
        ["#itemLootBlocked"] = {
            ['title'] = "Item",
            ['message'] = "Item bloqueado de ser looteado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#cannotTakeItem"] = {
            ['title'] = "PEGAR",
            ['message'] = "Você não pode pegar esse item.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#fullLifeKnocked"] = {
            ['title'] = "Vidas",
            ['message'] = "Não pode utilizar de vida cheia ou nocauteado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#playerFree"] = {
            ['title'] = "Player",
            ['message'] = "Personagem liberado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#passportAtt"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte atualizado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hammerNotFound"] = {
            ['title'] = "Martelo",
            ['message'] = "Martelo não encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#waitUseDrug"] = {
            ['title'] = "Drogas",
            ['message'] = "Espere {{msg}} Minutos usar novamente.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitArmor"] = {
            ['title'] = "Armor",
            ['message'] = "Aguarde {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#evidence"] = {
            ['title'] = "Evidência",
            ['message'] = "Evidência de {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#info"] = {
            ['title'] = "Informação",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#noResultFound"] = {
            ['title'] = "Informação",
            ['message'] = "Nenhum resultado encontrado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#infoDrug"] = {
            ['title'] = "Informação",
            ['message'] = "Químicos: {{msg}} Álcool: {{msg2}} Drogas: {{msg3}}",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#engineLimit"] = {
            ['title'] = "Veiculo",
            ['message'] = "Limite do Motor atingido.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongEngineModel"] = {
            ['title'] = "Veiculo",
            ['message'] = "Modelo do Motor incorreto.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#goToMechanics"] = {
            ['title'] = "Veiculo",
            ['message'] = "Dirija-se até uma mecânica e efetue uma revisão.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#brakeLimit"] = {
            ['title'] = "Veiculo",
            ['message'] = "Limite do Freio atingido.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongBrakeModel"] = {
            ['title'] = "Veiculo",
            ['message'] = "Modelo do Freio incorreto.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#transmissionLimit"] = {
            ['title'] = "Veiculo",
            ['message'] = "Limite da Transmissão atingida.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongTransmissionModel"] = {
            ['title'] = "Veiculo",
            ['message'] = "Modelo da Transmissão incorreta.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#suspensionLimit"] = {
            ['title'] = "Veiculo",
            ['message'] = "Limite da Suspensão atingida.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongSuspensionModel"] = {
            ['title'] = "Veiculo",
            ['message'] = "Modelo da Suspensão incorreta.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#noSuspensionVeic"] = {
            ['title'] = "Veiculo",
            ['message'] = "O veículo {{msg}} não possui suspensão.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#cannotUseItemLP"] = {
            ['title'] = "Lockpick",
            ['message'] = "Você não pode usar esse item fora do Modo Guerra.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#noPermissionMec"] = {
            ['title'] = "MECANICA",
            ['message'] = "Você não tem permissão para fazer isso.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#youMissed"] = {
            ['title'] = "Botão",
            ['message'] = "Você precisa apertar o número que aparece no centro no momento certo!",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#signalBlockerInstalled"] = {
            ['title'] = "Sinal",
            ['message'] = "Bloqueador de Sinal instalado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#signalBlockerAlreadyInstalled"] = {
            ['title'] = "Sinal",
            ['message'] = "Bloqueador de Sinal já instalado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#uHaveActiveContract"] = {
            ['title'] = "Contrato",
            ['message'] = "Você possui um contrato ativo.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#notEnoughPolice"] = {
            ['title'] = "Policiais",
            ['message'] = "Policiais insuficientes.",
            ['type'] = "Police",
            ['duration'] = 5000
        },
        ["#spannerNotFound"] = {
            ['title'] = "Chave Inglesa",
            ['message'] = "Chave Inglesa não encontrada.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#invalidPlateName"] = {
            ['title'] = "Placa",
            ['message'] = "O nome de definição para a placa inválida.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#plateUsed"] = {
            ['title'] = "Placa",
            ['message'] = "A placa escolhida já possui em outro veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#plateAtt"] = {
            ['title'] = "Placa",
            ['message'] = "Placa atualizada.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veicModelNotFound"] = {
            ['title'] = "Veiculo",
            ['message'] = "Modelo de veículo não encontrado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#hoodUsed"] = {
            ['title'] = "CAPUZ",
            ['message'] = "O Capuz foi utilizado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#notHandcuffed"] = {
            ['title'] = "CAPUZ",
            ['message'] = "A pessoa não está algemada.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#itemUsed"] = {
            ['title'] = "Item",
            ['message'] = "{{msg}} utilizado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#communicationRemoved"] = {
            ['title'] = "Comunicação",
            ['message'] = "Todas as comunicações foram retiradas.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cantDropThisItemMuni"] = {
            ['title'] = "DROP",
            ['message'] = "Você não pode dropar esse item.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#limitReached"] = {
            ['title'] = "Limite",
            ['message'] = "Limite atingido.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#sellDrugWarning"] = {
            ['title'] = "Drogas",
            ['message'] = "Você sabia que é possível vender os 03 tipos de droga ao mesmo tempo? Que tal ir negociar algumas?!",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#attVeicLumb"] = {
            ['title'] = "Veiculo",
            ['message'] = "Precisa utilizar o veículo do Lenhador.",
            ['type'] = "Vehicle",
            ['duration'] = 3000
        },
        ["#unsuppWeaponry"] = {
            ['title'] = "Armamento",
            ['message'] = "O armamento não possui suporte ao componente.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#weaponHasComponentEquipped"] = {
            ['title'] = "Armamento",
            ['message'] = "O armamento já possui o componente equipado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#brokeAfterRemoving"] = {
            ['title'] = "Armamento",
            ['message'] = "Após remove-la a mesma quebrou.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#crowbarNotFound"] = {
            ['title'] = "Armamento",
            ['message'] = "Pé de Cabra não encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#protectedVeic"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo protegido pela seguradora.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#needItemQnt"] = {
            ['title'] = "Item",
            ['message'] = "Necessário possuir {{msg}}x {{msg2}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#noPermission"] = {
            ['title'] = "Permissão",
            ['message'] = "Sem permissão.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#invalidPlate"] = {
            ['title'] = "Desmanche",
            ['message'] = "Placa inválida.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#veicNotFound"] = {
            ['title'] = "Desmanche",
            ['message'] = "Veículo não encontrado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitToCarrySomeone"] = {
            ['title'] = "carregar",
            ['message'] = "Aguarde {{msg}} segundos para carregar alguém.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#houseLimit"] = {
            ['title'] = "casas",
            ['message'] = "Você já possui o limite de casas.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#lockedProperty"] = {
            ['title'] = "Propriedade",
            ['message'] = "Propriedade trancada.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#unlockedProperty"] = {
            ['title'] = "Propriedade",
            ['message'] = "Propriedade destrancada.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#cloAdd"] = {
            ['title'] = "Roupas",
            ['message'] = "{{msg}} adicionado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nameAELocker"] = {
            ['title'] = "Nome",
            ['message'] = "Nome escolhido já existe em seu armário.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cloRemoved"] = {
            ['title'] = "Roupas",
            ['message'] = "{{msg}} removido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cloGonne"] = {
            ['title'] = "Roupas",
            ['message'] = "A vestimenta salva não se encontra mais em seu armário.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#skinApllyed"] = {
            ['title'] = "Roupas",
            ['message'] = "{{msg}} aplicado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#invalidModel"] = {
            ['title'] = "casas",
            ['message'] = "Modelo inválido.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#insideHouseCommand"] = {
            ['title'] = "casas",
            ['message'] = "Voce precisa estar dentro de uma residencia para realizar este comando.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#shopInsuf"] = {
            ['title'] = "Shop",
            ['message'] = "{{msg}} insuficiente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#shopWithDiamond"] = {
            ['title'] = "Shop",
            ['message'] = "Comprou {{msg}}x {{msg2}} por {{msg3}} Diamantes.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#damagedItemCannotSell"] = {
            ['title'] = "item",
            ['message'] = "Itens danificados não podem ser vendidos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotPutItem"] = {
            ['title'] = "PORTA MALAS",
            ['message'] = "Você não pode colocar esse item.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#noStorage"] = {
            ['title'] = "Armazenamento",
            ['message'] = "Armazenamento proibido.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#notVeicOwner"] = {
            ['title'] = "PORTA MALAS",
            ['message'] = "Você não é o dono do veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#servedTime"] = {
            ['title'] = "Prisão",
            ['message'] = "Você cumpriu sua pena.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#uArrestedPlayer"] = {
            ['title'] = "Prisão",
            ['message'] = "Você prendeu {{msg}} por {{msg2}} meses e uma multa de ${{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },

        ["#prisonTime"] = {
            ['title'] = "Prisão",
            ['message'] = "Você tem {{msg}} minutos de prisão.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitToWorkAgain"] = {
            ['title'] = "Trabalho",
            ['message'] = "Você precisa esperar {{msg}} segundos para poder trabalhar novamente.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#feedbackWarning"] = {
            ['title'] = "FEEDBACK",
            ['message'] = "Obrigado por nos ajudar a melhorar o servidor, seu feedback foi enviado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#waitToFeedback"] = {
            ['title'] = "FEEDBACK",
            ['message'] = "Você já deu feedback para esse staff essa semana.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wonMatch"] = {
            ['title'] = "MatchMaking",
            ['message'] = "Você venceu a partida e ganhou {{msg}} Pontos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#loseMatch"] = {
            ['title'] = "MatchMaking",
            ['message'] = "Você perdeu a partida e perdeu {{msg}} Pontos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#leaveQueue"] = {
            ['title'] = "Matchmaking",
            ['message'] = "Você saiu da fila.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#customPeds"] = {
            ['title'] = "Skins",
            ['message'] = "Você não skins personalizados para utilizar.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passAtt"] = {
            ['title'] = "Senha",
            ['message'] = "Senha atualizada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#needRangeBT"] = {
            ['title'] = "Range",
            ['message'] = "Necessário possuir entre 4 e 20 números.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#wrongPass"] = {
            ['title'] = "Senha",
            ['message'] = "Senha incorreta.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#increaseCompleted"] = {
            ['title'] = "Aumento",
            ['message'] = "Aumento concluido.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#AFK"] = {
            ['title'] = "AFK",
            ['message'] = "Você está AFK.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#earthquake"] = {
            ['title'] = "terremoto",
            ['message'] = "Os geólogos informaram para nossa unidade governamental que foi encontrado um abalo de magnitude 15 na Escala Richter, encontrem abrigo até que o mesmo passe.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#punishedTemp"] = {
            ['title'] = "Punição",
            ['message'] = "Você foi punido temporariamente.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#banFinished"] = {
            ['title'] = "ban",
            ['message'] = "Seu tempo de banimento acabou.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#punishmentTime"] = {
            ['title'] = "ban",
            ['message'] = "Tempo restante do castigo {{msg}} minutos. Compre a remoção através do comando /removeradv",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cameService"] = {
            ['title'] = "Serviço",
            ['message'] = "Entrou em serviço.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#leaveService"] = {
            ['title'] = "Serviço",
            ['message'] = "Saiu de serviço.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#finishedService"] = {
            ['title'] = "Serviço",
            ['message'] = "Serviços finalizados.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#serviceRemai"] = {
            ['title'] = "Serviço",
            ['message'] = "Restam {{msg}} serviços.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#weightChange"] = {
            ['title'] = "PESO",
            ['message'] = "Peso alterado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repaired"] = {
            ['title'] = "Reparo",
            ['message'] = "Reparado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repairWith"] = {
            ['title'] = "Reparo",
            ['message'] = "Só pode ser reparado com {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cardBlocked"] = {
            ['title'] = "Cartão",
            ['message'] = "Cartão bloqueado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#addTotem"] = {
            ['title'] = "Totem",
            ['message'] = "Totem adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000

        },
        ["#totemExist"] = {
            ['title'] = "Totem",
            ['message'] = "Este Totem já existe.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#totemNotFound"] = {
            ['title'] = "Totem",
            ['message'] = "Totem não encontrado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#totemRemoved"] = {
            ['title'] = "Totem",
            ['message'] = "Totem removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#resetBattlePass"] = {
            ['title'] = "BATTLEPASS",
            ['message'] = "Você resetou o Season Pass do passaporte {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#expBattlePass"] = {
            ['title'] = "BATTLEPASS",
            ['message'] = "Você recebeu {{msg}} XP no BattlePass por ter ficado 30 min online!.  Aperte F4 e resgate prêmios!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#battlePassRecived"] = {
            ['title'] = "BATTLEPASS",
            ['message'] = "Você recebeu um Season Pass.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#cannotCWCarried"] = {
            ['title'] = "GG",
            ['message'] = "Você não pode usar esse comando enquanto está sendo carregado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamondRecived"] = {
            ['title'] = "Diamantes",
            ['message'] = "Você recebeu 💎 {{msg}} diamantes que podem ser trocados por itens vip! A cada 10min online você recebe diamantes gratuitamente [Mesmo Ausente] Use o comando /diamantes para acessar a loja!",
            ['type'] = "Payment",
            ['duration'] = 10000
        },
        ["#commandAnswered"] = {
            ['title'] = "Chamado",
            ['message'] = "Este chamado ja foi atendido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#hiringPendent"] = {
            ['title'] = "Painel",
            ['message'] = "Contratação pendente.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#NewbieLogin"] = {
            ['title'] = "Painel",
            ['message'] = "Novo Iniciante {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ChangeChestLog"] = {
            ['title'] = "Chest",
            ['message'] = "Log alterada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ClearFines"] = {
            ['title'] = "MULTAS",
            ['message'] = "Multas limpas com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ClearFines"] = {
            ['title'] = "MULTAS",
            ['message'] = "Multas limpas com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#FinishWar"] = {
            ['title'] = "GUERRA",
            ['message'] = "Guerra finalizada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#FinishWarError"] = {
            ['title'] = "GUERRA",
            ['message'] = "Guerra inválida.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ListWar"] = {
            ['title'] = "Lista Guerras",
            ['message'] = "{{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#createCode"] = {
            ['title'] = "Codigo",
            ['message'] = "Código {{msg}} criado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#redeemedCode"] = {
            ['title'] = "Codigo",
            ['message'] = "Você ja resgatou um codigo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codeNfound"] = {
            ['title'] = "Codigo",
            ['message'] = "Codigo Invalido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#redeemCode"] = {
            ['title'] = "Codigo",
            ['message'] = "Você resgatou o codigo {{msg}} com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#pastDaysCode"] = {
            ['title'] = "Codigo",
            ['message'] = "Você não atende os requisitos minimos para resgatar um codigo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#boost"] = {
            ['title'] = "Boost",
            ['message'] = "Boost aplicado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unviableCommand"] = {
            ['title'] = "",
            ['message'] = "Comando indisponível.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#RDM"] = {
            ['title'] = "NOVA DENUNCIA DE RDM",
            ['message'] = "Jogador {{msg}} Denunciou o jogador {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resgatePromo"] = {
            ['title'] = "Resgate de promo",
            ['message'] = "Você resgatou a promoção com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#nomeAdicionado"] = {
            ['title'] = "Nome adicionado",
            ['message'] = "Nome adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#nomeRemovido"] = {
            ['title'] = "Nome removido",
            ['message'] = "Nome removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#marcaPontoFarm"] = {
            ['title'] = "Marco ponto de farm",
            ['message'] = "Você marcou o ponto de <b>FARM</b> no mapa.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#tratorParaColetar"] = {
            ['title'] = "Precisa de trator",
            ['message'] = "Você precisa estar em um trator para coletar os itens.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#apagueIncendios"] = {
            ['title'] = "Apagar os incêndios",
            ['message'] = "Missão iniciada, vá até o local marcado no mapa e apague os incêndios.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#pertoLocalEntrega"] = {
            ['title'] = "Local de entrega",
            ['message'] = "Você está muito perto do local de entrega.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naoNessaGaragem"] = {
            ['title'] = "Garagem",
            ['message'] = "Este veículo não pode ser retirado nesta garagem.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#alias"] = {
            ['title'] = "Alias",
            ['message'] = "Grupo: <b>{{msg}}</b>",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#aliasNao"] = {
            ['title'] = "Alias não encontrado",
            ['message'] = "Alias não encontrado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#marqueGPS"] = {
            ['title'] = "GPS",
            ['message'] = "Marque um local no GPS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoAFK"] = {
            ['title'] = "AFK",
            ['message'] = "Você não está mais AFK.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#blipOn"] = {
            ['title'] = "Fala",
            ['message'] = "Ativou blip de voz.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#blipOff"] = {
            ['title'] = "Não fala",
            ['message'] = "Desativou blip de voz.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#apertaTecla"] = {
            ['title'] = "Apertar tecla para vencer",
            ['message'] = "Para vencer, aperte rapidamente a tecla 'E'.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#vcGanhou"] = {
            ['title'] = "Ganhou",
            ['message'] = "Você venceu!",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#vcPerdeu"] = {
            ['title'] = "Perdeu",
            ['message'] = "Você perdeu!",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#esperandoOponente"] = {
            ['title'] = "Esperando oponente",
            ['message'] = "Esperando um oponente...",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#mesaCheia"] = {
            ['title'] = "Mesa cheia",
            ['message'] = "A mesa esta cheia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#caboRompeu"] = {
            ['title'] = "Cabos",
            ['message'] = "Os cabos que prendem o veículo se romperam.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoRebocado"] = {
            ['title'] = "Rebocado",
            ['message'] = "Veículo rebocado com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#semVeiculoReboque"] = {
            ['title'] = "Sem reboque",
            ['message'] = "Não há veículo no reboque.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#foraParaRebocar"] = {
            ['title'] = "Reboque",
            ['message'] = "Você precisa estar fora do veículo para rebocar.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#caminhaoReboqueSemEquipamento"] = {
            ['title'] = "Caminhao reboque",
            ['message'] = "Seu caminhão de reboque não está equipado para rebocar este veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoDescarregado"] = {
            ['title'] = "Caminhao reboque",
            ['message'] = "Veículo descarregado com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoReboqueSemRegistro"] = {
            ['title'] = "Caminhao reboque",
            ['message'] = "Seu veículo não está registrado como um caminhão de reboque oficial.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#vipExpirado"] = {
            ['title'] = "Vip expirado",
            ['message'] = "VIP EXPIRADO.",
            ['type'] = "Information",
            ['duration'] = 60000
        },
        ["#taxaCasas"] = {
            ['title'] = "Taxa",
            ['message'] = "Taxa Casas",
            ['type'] = "House",
            ['duration'] = 60000 * 1
        },
        ["#feedBack"] = {
            ['title'] = "Feed Back",
            ['message'] = "{{msg}} <b>[Nota: {{msg2}}]</b>",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#maxCaracteres"] = {
            ['title'] = "REGISTRO",
            ['message'] = "A descrição não pode ultrapassar 255 caracteres.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#safeZone"] = {
            ['title'] = "Safezone",
            ['message'] = "Você entrou na zona segura.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#foraSafeZone"] = {
            ['title'] = "Safezone",
            ['message'] = "Você saiu da zona segura.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#saiuRadio"] = {
            ['title'] = "RADIO",
            ['message'] = "Você saiu da rádio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#getSource2"] = {
            ['title'] = "Source2",
            ['message'] = "Source2:",
            ['type'] = "Information",
            ['duration'] = 30000
        },
        ["#chamouMedico"] = {
            ['title'] = "Chamou medico",
            ['message'] = "Voce chamou um medico, aguarde: {{msg}}",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#naoPodeMexer"] = {
            ['title'] = "Inspect",
            ['message'] = "Você não pode fazer isso enquanto está sendo inspecionado por alguém.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoPodeChamarMed"] = {
            ['title'] = "Chamar",
            ['message'] = "Você não pode chamar um medico em uma area de dominacao.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#marcaGPS"] = {
            ['title'] = "GPS",
            ['message'] = "Você marcou um ponto no GPS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#facProxima"] = {
            ['title'] = "FAC",
            ['message'] = "Fac mais próxima: <b>{{msg}}</b><br>Distância: <b>{{msg2}}</b>m",
            ['type'] = "Confirmed",
            ['duration'] = 30000
        },
        ["#assumiuControle"] = {
            ['title'] = "Controle",
            ['message'] = "Você assumiu o controle do veículo. Pressione <green>F</green> para sair.",
            ['type'] = "Vehicle",
            ['duration'] = 8000
        },
        ["#discordAcc"] = {
            ['title'] = "Discord",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 60000*1
        },
        ["#arenaSafeZone"] = {
            ['title'] = "Safezone arena",
            ['message'] = "Você entrou na zona segura da arena.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#arenaSafeZoneOff"] = {
            ['title'] = "Safezone arena",
            ['message'] = "Você saiu da zona segura da arena.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#quantidadeDogtag"] = {
            ['title'] = "pista",
            ['message'] = "Você tem <b> {{msg}} </b>x Dogtags no seu inventario, tenha cuidado uma localização foi marcada em seu mapa para fazer o deposito seguro de suas DOGTAGS.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#iniciarDomi"] = {
            ['title'] = "Dominação",
            ['message'] = "Você so pode iniciar uma dominacao no mundo padrão.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#naoPodeRoubar"] = {
            ['title'] = "Roubar",
            ['message'] = "Você não pode roubar esse local.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#aguardeDominacao"] = {
            ['title'] = "Dominação",
            ['message'] = "Aguarde {{msg}} Segundos para iniciar a dominacao, os caixas ainda estão vazios.",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#aguardeDominacaoTerminar"] = {
            ['title'] = "Dominação",
            ['message'] = "Aguarde o dominacao atual terminar.",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#empate"] = {
            ['title'] = "x1",
            ['message'] = "Fim do combate.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dica"] = {
            ['title'] = "Dica",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#crimeGPS"] = {
            ['title'] = "Crime GPS",
            ['message'] = "Você marcou o local do crime no seu GPS.",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#notifAdm"] = {
            ['title'] = "Notificação",
            ['message'] = "msg",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#reiniciaServ"] = {
            ['title'] = "Reinicialização",
            ['message'] = "Servidor em reinicialização, aguarde.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#iniciaTrabalho"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho iniciado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#finalizaTrabalho"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho finalizado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#propOwned"] = {
            ['title'] = "Proprietario",
            ['message'] = "{{msg}}",
            ['type'] = "House",
            ['duration'] = 10000
        },
        ["#bauFechadoPadrao"] = {
            ['title'] = "Bau",
            ['message'] = "Você não pode abrir esse bau fora do mundo PADRAO.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#permissaoResetada"] = {
            ['title'] = "Bau",
            ['message'] = "Permissões resetadas com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#grupoInvalido"] = {
            ['title'] = "Bau",
            ['message'] = "Grupo inválido.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#naoPodeRevistar"] = {
            ['title'] = "Revistar",
            ['message'] = "Voce não pode revistar uma pessoa sendo carregado ou carregando alguem.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#nitroAtivado"] = {
            ['title'] = "Nitro",
            ['message'] = "Nitro ativado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#numeroInvalido"] = {
            ['title'] = "Numero",
            ['message'] = "Numero invalido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#adquiriuGoldenR"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Golden Retriever.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuRottw"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Rottweiler.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuWesty"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Westy.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPug"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Pug.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuBulldogF"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Bulldog Francês.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuRajah"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Rajah.",
            ['type'] = "verde",
            ['duration'] = 5000
        },
        ["#adquiriuTigor"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Tigor.",
            ['type'] = "verde",
            ['duration'] = 5000
        },
        ["#adquiriuLoboSirius"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um LoboSirius.",
            ['type'] = "verde",
            ['duration'] = 5000
        },
        ["#adquiriuGalgo"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Galgo.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPastorA"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Pastor Alemão.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPoodle"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Poodle.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuCaneC"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Cane Corso.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuDoberman"] = {
            ['title'] = "Cachorro",
            ['message'] = "Você adquiriu um Doberman.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuGato"] = {
            ['title'] = "Gato",
            ['message'] = "Você adquiriu um Gato.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuSphynx"] = {
            ['title'] = "Gato",
            ['message'] = "Você adquiriu um Sphynx.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#propNEncontrada"] = {
            ['title'] = "Propriedades",
            ['message'] = "Propriedade não encontrada.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#semPermissaoSafe"] = {
            ['title'] = "Lockpick",
            ['message'] = "Você não pode usar esse item dentro de uma Zona Segura.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#carregaMuni"] = {
            ['title'] = "Munição",
            ['message'] = "Uma vez que você equipar as munições você não conseguirá retira-las da arma.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#naoPodeDesmanche"] = {
            ['title'] = "Desmache",
            ['message'] = "Esse veículo não pode ser desmanchado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#aguardeDesmanche"] = {
            ['title'] = "Desmache",
            ['message'] = "Aguarde o desmanche anterior.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#checarPlaca"] = {
            ['title'] = "Desmache",
            ['message'] = "Erro checagem de placas.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#aguardePescaria"] = {
            ['title'] = "Mundo",
            ['message'] = "Aguarde <b> {{msg}} segundos</b> até a próxima pescaria.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#possuiMochila"] = {
            ['title'] = "Mochila",
            ['message'] = "Você ja possui essa mochila.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mochilaAdc"] = {
            ['title'] = "Mochila",
            ['message'] = "Mochila adicionada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mochilaVip"] = {
            ['title'] = "Mochila",
            ['message'] = "Parece que você é VIP, suas mochilas foram salvas!.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mochilaRemovida"] = {
            ['title'] = "Mochila",
            ['message'] = "Mochila removida.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nPossuiMochila"] = {
            ['title'] = "Mochila",
            ['message'] = "Você não possui essa mochila.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#aguardePRoubar"] = {
            ['title'] = "Roubo",
            ['message'] = "Aguarde um pouco para roubar novamente.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#nDonoProp"] = {
            ['title'] = "Propriedade",
            ['message'] = "Você não é dono da propriedade.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#poliaNCompra"] = {
            ['title'] = "Policia",
            ['message'] = "Policial não pode comprar/vender Itens nessa loja.",
            ['type'] = "Police",
            ['duration'] = 5000
        },
        ["#nCVFora"] = {
            ['title'] = "Mundo padrao",
            ['message'] = "Você não pode comprar/vender itens fora do mundo padrão.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#veiculoInvalido"] = {
            ['title'] = "Veiculo",
            ['message'] = "Veículo inválido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#donoVeicAbrir"] = {
            ['title'] = "PORTA MALAS",
            ['message'] = "Aguarde o dono do veículo abrir o porta-malas.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#longePrisao"] = {
            ['title'] = "Prisao",
            ['message'] = "Você não está próximo da prisão.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#playerSolto"] = {
            ['title'] = "Prisao",
            ['message'] = "Cidadão solto da prisão.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#playernPrisao"] = {
            ['title'] = "Prisao",
            ['message'] = "Cidadão não encontrado na prisão.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#paraEquipado"] = {
            ['title'] = "Paraquedas",
            ['message'] = "Paraquedas equipado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#semDinheiroOrg"] = {
            ['title'] = "Organização",
            ['message'] = "Você não tem dinheiro suficiente no banco da sua organização para criar o evento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#missionNotif"] = {
            ['title'] = "Missao",
            ['message'] = "{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#selecRival"] = {
            ['title'] = "Rival",
            ['message'] = "Selecione seu rival",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#eventoInic"] = {
            ['title'] = "Evento",
            ['message'] = "Evento iniciado.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#rivalSemDinheiroOrg"] = {
            ['title'] = "Evento",
            ['message'] = "O rival não tem dinheiro suficiente no banco da sua organização para criar o evento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rivalAceitou"] = {
            ['title'] = "Evento",
            ['message'] = "O rival aceitou seu pedido.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#semPets"] = {
            ['title'] = "Pets",
            ['message'] = "Você não tem pets!",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#resultsucesso"] = {
            ['title'] = "PETSHOP",
            ['message'] = "{{msg}}",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#resulterro"] = {
            ['title'] = "PETSHOP",
            ['message'] = "{{msg}}",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#nomeAlterado"] = {
            ['title'] = "Nome",
            ['message'] = "Nome alterado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#grupoAtt"] = {
            ['title'] = "Grupo",
            ['message'] = "Grupo atualizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#segGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Você não digitou o segmento do grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#tipoGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Você não digitou o tipo do grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#urlInvalida"] = {
            ['title'] = "URL",
            ['message'] = "URL inválida (Não utilize URLs do discord).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recrutCriado"] = {
            ['title'] = "Recrutamento",
            ['message'] = "Recrutamento criado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nGrupoLider"] = {
            ['title'] = "Grupo",
            ['message'] = "Você não é o líder do grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#nenhumGrupoL"] = {
            ['title'] = "Grupo",
            ['message'] = "Você não é líder de nenhum grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recrutRemovido"] = {
            ['title'] = "Recrutamento",
            ['message'] = "Recrutamento removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recrutAtt"] = {
            ['title'] = "Recrutamento",
            ['message'] = "Recrutamento atualizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#semGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Você não esta em nenhum grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semPermiGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Você não tem permissão em um grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#localMarcaOrg"] = {
            ['title'] = "LOCALIZAÇÃO",
            ['message'] = "O jogador {{msg}} acabou de marcar a localização da sua organização via recrutamento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#fome"] = {
            ['title'] = "FOME",
            ['message'] = "Sofrendo com a fome.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#sede"] = {
            ['title'] = "SEDE",
            ['message'] = "Sofrendo com a sede.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#deuAzar"] = {
            ['title'] = "Azar",
            ['message'] = "Você deu azar, e não ganhou nada.",
            ['type'] = "Warning",
            ['duration'] = 1000
        },
        ["#apostaMin"] = {
            ['title'] = "Aposta",
            ['message'] = "Aposta mínima de <b>${{msg}}</b>.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semFichas"] = {
            ['title'] = "Aposta",
            ['message'] = "Fichas insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#apostaIndisponivel"] = {
            ['title'] = "Aposta",
            ['message'] = "Aposta indisponível.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#limiteDiario"] = {
            ['title'] = "Limite",
            ['message'] = "Atingiu o limite diário.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#dicaMarcar"] = {
            ['title'] = "Marca",
            ['message'] = "Você pode usar (/fac {{msg}}) para marcar também.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#playerProxFac"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "O Jogador precisa estar proximo a sua facção.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#noSelfPromo"] = {
            ['title'] = "Promoção",
            ['message'] = "Você não pode promover você mesmo.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#noDemoBoss"] = {
            ['title'] = "Promoção",
            ['message'] = "Você não pode rebaixar um Chefe.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#entregaFarm"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Voce entregou {{msg}}x {{msg2}} por {{msg3}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#faltaFarm"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Voce nao tem {{msg}} x {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#faltaDinGrupo"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Seu grupo nao tem dinheiro suficiente para comprar {{msg}} x {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#minEntrega"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Voce precisa entregar no minimo 10x {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#semConfigEntrega"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Seu grupo nao tem configuracao de entrega de farm.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#precoAlterado"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Preco de cada 10x farm alterado para R${{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#restartSoon"] = {
            ['title'] = "REINICIAR",
            ['message'] = "O servidor ira reiniciar em breve.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#orgJaAvaliada"] = {
            ['title'] = "Avaliar",
            ['message'] = "Você já avaliou a organização <b>{{msg}}</b> aguarde <b>{{msg2}}</b> para avaliar novamente.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#orgAvaliada"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você avaliou a organização {{msg}} com {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#setClothesEqualOrgM"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou sua roupa para a roupa masculina da organização {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#setClothesEqualOrgF"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou sua roupa para a roupa feminina da organização {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#postPassaporte"] = {
            ['title'] = "Passaporte",
            ['message'] = "Post-It do passaporte {{msg}} removido.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#sistemaOff"] = {
            ['title'] = "Sistema",
            ['message'] = "Sistema indisponível no momento, tente mais tarde.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#sistemaViolado"] = {
            ['title'] = "Sistema",
            ['message'] = "Sistema violado e as autoridades foram notificadas.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#naoPossuiX"] = {
            ['title'] = "Item",
            ['message'] = "Você não possui uma <b>{{msg}}</b>.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#dinheiroNEncontrado"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Nenhum dinheiro encontrado.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#ecAbobora"] = {
            ['title'] = "Halloween",
            ['message'] = "Evento de Halloween <b>ATIVO<b> <br><b>Encontre e colete todas as abóboras de Halloween</b> espalhadas pela cidade.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#coletouTodasAb"] = {
            ['title'] = "Halloween",
            ['message'] = "Você coletou todas as abóboras de Halloween.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#halloweenStart"] = {
            ['title'] = "Halloween",
            ['message'] = "O evento de Halloween começou, colete as abóboras para ganhar premios.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#vcColetouAb"] = {
            ['title'] = "Halloween",
            ['message'] = "O evento de Halloween acabou proximo evento as {{msg}}",
            ['type'] = "Party",
            ['duration'] = 60000
        },
        ["#moveSuspeita"] = {
            ['title'] = "Movimentação",
            ['message'] = "Movimentacao suspeita.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#launcher"] = {
            ['title'] = "Launcher",
            ['message'] = "Obrigado por usar o Launcher, você ja tem acesso a todos os beneficios.",
            ['type'] = "Confirmed",
            ['duration'] = 60000
        },
        ["#ticketParamedic"] = {
            ['title'] = "Paramedic",
            ['message'] = "{{msg}}",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#ticketAdmin"] = {
            ['title'] = "Ticket",
            ['message'] = "{{msg}}",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#notifyAdmin"] = {
            ['title'] = "Notify",
            ['message'] = "{{msg}}",
            ['type'] = "Administration",
            ['duration'] = 15000
        },
        ["#invalidLocation"] = {
            ['title'] = "Localizacao",
            ['message'] = "Localização inválida.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#noAvailableSeats"] = {
            ['title'] = "Veículo",
            ['message'] = "Não há assentos disponíveis no veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#ongoingReward"] = {
            ['title'] = "Resgate",
            ['message'] = "Você já está resgatando um passe, aguarde o fim do processo.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#createevent"] = {
            ['title'] = "Evento",
            ['message'] = "Evento criado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 10000
        },
        ["#errofacradio"] = {
            ['title'] = "PAINEL",
            ['message'] = "Esta organização não possui uma frequência de rádio.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#noLockpick"] = {
            ['title'] = "Propriedade",
            ['message'] = "Você não possui um lockpick.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#noPermission"] = {
            ['title'] = "Permissão",
            ['message'] = "Você não tem permissão para fazer isso.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#cooldownRequests"] = {
            ['title'] = "Cooldown",
            ['message'] = "Aguarde {{msg}} segundos para fazer uma nova solicitação.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientBankFunds"] = {
            ['title'] = "Banco",
            ['message'] = "Você não possui saldo suficiente para pagar a multa.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#vehicleblacklisted"] = {
            ['title'] = "Veículo",
            ['message'] = "Este veículo está na blacklist.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#garage_created"] = {
            ['title'] = "Garage",
            ['message'] = "Garage criado com sucesso e copiado para a área de transferência.",
            ['type'] = "Work",
            ['duration'] = 10000
        },
        ["#alreadyInRelationship"] = {
            ['title'] = "Relationship",
            ['message'] = "Essa pessoa já está em um relacionamento.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#ticketAccepted"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_admin"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para o <b>Admin</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_health"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para o <b>Hospital</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_police"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para a <b>Polícia</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_mechanic"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para o <b>Mecânico</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_purchases"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado de <b>Compras</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_rdm"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado de <b>RDM</b> foi aceito pela equipe por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
    },
    ["pt-pt"] = {
        ['#cantUseSpecialCharMessage'] = {
            ['title'] = "Aviso",
            ['message'] = "Você não pode usar caracteres especiais.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientFunds"] = {
            ['title'] = "Departamento",
            ['message'] = "Você não tem dinheiro suficiente.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientItems"] = {
            ['title'] = "Department",
            ['message'] = "Itens insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },

        ["#relationshipCooldown"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Você não pode interagir no sistema de relacionamentos por {{msg}} segundos.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntActiveStatus"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "Evento de caça ativo! Tempo restante: {{msg}} minutos e {{msg2}} segundos.<br>Use /pascoa para verificar o status do evento.<br>Use /minhapascoa para verificar seu progresso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#huntInactiveStatus"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "Evento de caça inativo! Próximo evento em {{msg}} minutos e {{msg2}} segundos.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntEventStarted"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "O evento de caça foi iniciado! Você tem 30 minutos para encontrar todos os itens.<br>Use /pascoa para verificar o status do evento.<br>Use /minhapascoa para verificar seu progresso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#huntEventEnded"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "O evento de caça foi encerrado! Próximo evento em {{msg}} minutos e {{msg2}} segundos.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#huntCollected"] = {
            ['title'] = "Evento de Caça",
            ['message'] = "Você coletou {{msg}} de {{msg2}} ovos.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#trabalhobombeiros"] = {
            ['title'] = "Bombeiro",
            ['message'] = "Recebeu $ {{msg}} dólares por apagar o incêndio.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#like"] = {
            ['title'] = "Like",
            ['message'] = "Deu 👍 LIKE!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#passMuteArea"] = {
            ['title'] = "PASSAPORTE MUTADO",
            ['message'] = "Mute aplicado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#respostarequest"] = {
            ['title'] = "Resposta Request",
            ['message'] = "Não pode responder a este request!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notifyloginoff"] = {
            ['title'] = "Ações",
            ['message'] = "Notificação de login removida com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#notifyloginon"] = {
            ['title'] = "Ações",
            ['message'] = "Notificação de login adicionada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#convertecoinssucesso"] = {
            ['title'] = "Conversão Coins",
            ['message'] = "Converteu {{msg}} Coins em {{msg2}} Diamantes.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#coinsinsuficientes"] = {
            ['title'] = "Conversão Coins",
            ['message'] = "Não tem {{msg}} Coins suficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamantesconvertidos"] = {
            ['title'] = "Conversão Diamantes",
            ['message'] = "Converteu {{msg}} Diamantes em {{msg2}} Coins.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#diamantesinsuficientes"] = {
            ['title'] = "Diamantes",
            ['message'] = "Não tem {{msg}} x Diamantes suficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#aguardeconversaoanterior"] = {
            ['title'] = "Conversão",
            ['message'] = "Aguarde a finalização da conversão anterior.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#blockcameramundo"] = {
            ['title'] = "Câmara",
            ['message'] = "Não pode usar a câmara enquanto não estiver no mundo FOTOGRAFIA.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockacao"] = {
            ['title'] = "Ações",
            ['message'] = "Ação bloqueada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#x1entroufila"] = {
            ['title'] = "Fila",
            ['message'] = "Entrou na fila do x1.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#x1saiufila"] = {
            ['title'] = "Fila",
            ['message'] = "Saiu da fila do x1.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dogtagsdepositou"] = {
            ['title'] = "Depósito",
            ['message'] = "Depositou {{msg}} x dogtags. Total: {{msg2}} DOGTAGS.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#dogtagscooldown"] = {
            ['title'] = "Coleta Dogtags",
            ['message'] = "Deve esperar 30 segundos para coletar dogtags da mesma pessoa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagsvcntem"] = {
            ['title'] = "Dogtags",
            ['message'] = "Não tem dogtags para depositar.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagsnpossui"] = {
            ['title'] = "Dogtags",
            ['message'] = "Este jogador não possui dogtags.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dogtagscoletou"] = {
            ['title'] = "DogTags",
            ['message'] = "Coletou {{msg}} x dogtags",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#saiummundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Saiu do mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#sempermmundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Não tem permissão para entrar no mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#jaestamundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Já está no mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#entroumundopvp"] = {
            ['title'] = "Mundo PVP",
            ['message'] = "Entrou no mundo PVP.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#multiplicadorkill"] = {
            ['title'] = "Kills",
            ['message'] = "Multiplicador de kills alterado para {{msg}} x.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#arenaroyalewin"] = {
            ['title'] = "Evento Royale",
            ['message'] = "O Grupo {{msg}} venceu o Evento Royale",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleeliminado"] = {
            ['title'] = "Evento Royale",
            ['message'] = "Foi eliminado do <b>Evento Royale</b>",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyalepause"] = {
            ['title'] = "Evento Royale",
            ['message'] = "A Área Royale foi pausada.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleremovido"] = {
            ['title'] = "Evento Royale",
            ['message'] = "A Área Royale foi removida.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#arenaroyaleliberada"] = {
            ['title'] = "Evento Royale",
            ['message'] = "A Área Royale foi liberada.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#eventofinalizado"] = {
            ['title'] = "Evento",
            ['message'] = "Evento finalizado com sucesso ID: {{msg}}",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#dominacaoemandamento"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação está em cooldown.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominacaocooldown"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação está em cooldown.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominacaoiniciada"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação de {{msg}} foi iniciada por {{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#wallantipika"] = {
            ['title'] = "Wall",
            ['message'] = "Ativaste o anti pika, agora a pika está invisível.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallon"] = {
            ['title'] = "Wall",
            ['message'] = "Ativaste o wall.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#walloff"] = {
            ['title'] = "Wall",
            ['message'] = "Desativaste o wall.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notveic"] = {
            ['title'] = "Veículo",
            ['message'] = "O veículo não tem proprietário/foi spawnado",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#dominacaoconcluida"] = {
            ['title'] = "Dominação",
            ['message'] = "Dominação de {{msg}} foi dominada por {{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#showowner"] = {
            ['title'] = "Proprietário",
            ['message'] = "Placa: {{msg}} Proprietário: {{msg2}} #{{msg3}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#getpurchased"] = {
            ['title'] = "Compra",
            ['message'] = "O jogador {{msg}} {{msg2}}<br>gastou <b>R${{msg3}}</b> em compras.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#getwhats"] = {
            ['title'] = "Whats",
            ['message'] = "WhatsApp: {{msg}}\nCopiado para a área de transferência",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#notbanned"] = {
            ['title'] = "Ban",
            ['message'] = "O jogador não tem histórico de banimentos",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#intagramadicionadosucesso"] = {
            ['title'] = "Instagram",
            ['message'] = "Instagram adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#tiktokadicionadosucesso"] = {
            ['title'] = "TikTok",
            ['message'] = "TikTok adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#coowldownreporte"] = {
            ['title'] = "Reporte",
            ['message'] = "Aguarde {{msg}} segundos para fazer um novo report.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naopodereviver"] = {
            ['title'] = "Reviver",
            ['message'] = "Não pode reviver essa pessoa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocancelado"] = {
            ['title'] = "Chamado",
            ['message'] = "O seu chamado foi cancelado por falta de resposta.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadofinalizado"] = {
            ['title'] = "Chamado",
            ['message'] = "Não pode fazer um chamado enquanto estiver finalizado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadomundoarena"] = {
            ['title'] = "Chamado",
            ['message'] = "Não pode fazer um chamado dentro da arena.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadomundopadrao"] = {
            ['title'] = "Chamado",
            ['message'] = "Só pode realizar chamados no mundo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadosemdinheiro"] = {
            ['title'] = "Chamado",
            ['message'] = "Não tem dinheiro suficiente para fazer um chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocooldown"] = {
            ['title'] = "Chamado",
            ['message'] = "Aguarde {{msg}} segundos para fazer um novo chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#delnpc"] = {
            ['title'] = "NPC",
            ['message'] = "Todos os npcs foram apagados com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#delobjeto"] = {
            ['title'] = "Objeto",
            ['message'] = "Todos os objetos foram apagados com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#orgnotvip"] = {
            ['title'] = "VIP",
            ['message'] = "A sua organização não tem VIP ativo. VIP: {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rdmon"] = {
            ['title'] = "RDM",
            ['message'] = "Ativou o RDM.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rdmoff"] = {
            ['title'] = "RDM",
            ['message'] = "Desativou o RDM.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#avaliousucesso"] = {
            ['title'] = "Avaliação",
            ['message'] = "Avaliação enviada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avalioujogador"] = {
            ['title'] = "Avaliação",
            ['message'] = "Já avaliou este jogador recentemente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoperm"] = {
            ['title'] = "Telão",
            ['message'] = "Não tem permissão para usar este telão.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#telaoadd"] = {
            ['title'] = "Telão",
            ['message'] = "Adicionou um novo telão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#telaoaddperm"] = {
            ['title'] = "Telão",
            ['message'] = "Você adicionou permissão para o jogador {{msg}}",
            ['type'] = "Confirmado",
            ['duration'] = 5000
        },
        ["#telaoremover"] = {
            ['title'] = "Telão",
            ['message'] = "Você removeu um telão.",
            ['type'] = "Confirmado",
            ['duration'] = 5000
        },
        ["#telaorem"] = {
            ['title'] = "Telão",
            ['message'] = "Você removeu permissão para o jogador {{msg}}",
            ['type'] = "Confirmado",
            ['duration'] = 5000
        },
        ["#telaoadd"] = {
            ['title'] = "Telão",
            ['message'] = "Você adicionou permissão para o jogador {{msg}}",
            ['type'] = "Confirmado",
            ['duration'] = 5000
        },
        ["#telaoselecionado"] = {
            ['title'] = "Telão",
            ['message'] = "Não existe um telão neste local.",
            ['type'] = "Aviso",
            ['duration'] = 5000
        },
        ["#telaoselecionado"] = {
            ['title'] = "Telão",
            ['message'] = "Não existe um telão neste local.",
            ['type'] = "Aviso",
            ['duration'] = 5000
        },
        ["#telaonaoexiste"] = {
            ['title'] = "Telão",
            ['message'] = "Não existe um telão neste local.",
            ['type'] = "Aviso",
            ['duration'] = 5000
        },
        ["#recebersalariofac"] = {
            ['title'] = "Salário",
            ['message'] = "Você recebeu R$ {{msg}} referente ao seu VIP Facção.",
            ['type'] = "Pagamento",
            ['duration'] = 5000
        },
        ["#recebersalario"] = {
            ['title'] = "Salário",
            ['message'] = "Você recebeu R$ {{msg}} x referente ao seu Cargo {{msg2}}.",
            ['type'] = "Pagamento",
            ['duration'] = 5000
        },
        ["#caixajaestaroubando"] = {
            ['title'] = "Roubo",
            ['message'] = "Você já está a roubar um caixa eletrônico.",
            ['type'] = "Ilegal",
            ['duration'] = 5000
        },
        ["#caixavazio"] = {
            ['title'] = "Roubo",
            ['message'] = "Este caixa está vazio.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#Desencriptacaoandamento"] = {
            ['title'] = "Roubo",
            ['message'] = "Desencriptação em andamento, aguarde {{msg}} segundos.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#roubofaltaitem"] = {
            ['title'] = "Roubo",
            ['message'] = "Opa, você não tem {{msg}} x {{msg2}}... Que tal procurar um desmanche para conseguir um e voltar aqui?",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#rouboparticipando"] = {
            ['title'] = "Roubo",
            ['message'] = "Você está a participar do roubo a {{msg}}",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#rouboretirardinheiro"] = {
            ['title'] = "Roubo",
            ['message'] = "Retire o dinheiro do roubo no blip.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#rouboprogresso"] = {
            ['title'] = "Roubo",
            ['message'] = "O portador do roubo morreu, fique vivo para retirar o dinheiro quando o roubo for finalizado.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#rouboexit"] = {
            ['title'] = "Roubo",
            ['message'] = "Você saiu da área do roubo, o roubo foi cancelado.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#rouboemprogresso"] = {
            ['title'] = "Roubo",
            ['message'] = "Progresso de desencriptação do sistema iniciado, o mesmo será concluído em {{msg}} segundos.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#rouboparticipando"] = {
            ['title'] = "Roubo",
            ['message'] = "Você está a participar do roubo a {{msg}}",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#roubolimiteproximo"] = {
            ['title'] = "Roubo",
            ['message'] = "Número de bandidos próximos precisa ser maior que {{msg}}",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#roubolimite"] = {
            ['title'] = "Roubo",
            ['message'] = "Número de bandidos precisa ser maior que {{msg}}",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#roubonot"] = {
            ['title'] = "Roubo",
            ['message'] = "Você não pode receber o dinheiro deste roubo.",
            ['type'] = "Ilegal",
            ['duration'] = 15000
        },
        ["#portedearmaremglock"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Retirou uma glock.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmacooldown"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Aguarde {{msg}} segundos para usar novamente.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmacheck"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "O jogador {{msg}} possui porte de armas nível {{msg2}}",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmasem"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Você não possui porte de armas.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmarem"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Você removeu um porte de armas do cidadão.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmajaremovido"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "O jogador {{msg}} não possui porte de armas.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmaoff"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "O jogador não está online.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmajapossui"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "O jogador {{msg}} já possui todas as licenças.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmanivel"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Você adicionou licença nível {{msg}} para o cidadão {{msg2}}",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#portedearmaadd"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Você deu um porte de armas para o cidadão.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#permarsenal"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Você não tem acesso ao arsenal.",
            ['type'] = "Polícia",
            ['duration'] = 15000
        },
        ["#erroapreenderpolicia"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Não pode apreender itens de outro policial.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#erroapreenderalgema"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "O suspeito não está algemado.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        ["#aprenderconcluido"] = {
            ['title'] = "POLÍCIA",
            ['message'] = "Itens removidos.",
            ['type'] = "Police",
            ['duration'] = 15000
        },
        --- daqui para baixo traduzido
        ["#valorinvalido"] = {
            ['title'] = "Eventos",
            ['message'] = "Valor inválido.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaocriado"] = {
            ['title'] = "Eventos",
            ['message'] = "Criaste uma pensão de R$ {{msg}} Reais de pensão para {{msg2}}",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaodeletado"] = {
            ['title'] = "Eventos",
            ['message'] = "Deletaste a pensão de {{msg}}",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#pensaorecebido"] = {
            ['title'] = "Eventos",
            ['message'] = "Recebeste R$ {{msg}} Reais de pensão.",
            ['type'] = "Payment",
            ['duration'] = 15000
        },
        ["#facremovererro"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} não encontrada.",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#facremover"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} desvinculada do grupo",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#movebaufacerroqi"] = {
            ['title'] = "Eventos",
            ['message'] = "Erro ao mover itens dos baús (Grupo/Facção inválida) Só uses este comando se o teu QI for acima de 5.",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#movebaufacerro"] = {
            ['title'] = "Eventos",
            ['message'] = "Erro ao mover itens dos baús (Baú já existente).",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#movebaufac"] = {
            ['title'] = "Eventos",
            ['message'] = "Itens dos baús movidos de {{msg}} para {{msg2}}",
            ['type'] = "Chest",
            ['duration'] = 15000
        },
        ["#vinculadosucessofac"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} já vinculada ao grupo {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#javinculadofac"] = {
            ['title'] = "Eventos",
            ['message'] = "Facção {{msg}} já vinculada à facção {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#javinculadogrupo"] = {
            ['title'] = "Eventos",
            ['message'] = "Grupo {{msg}} já vinculado à facção {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 15000
        },
        ["#eventocriado"] = {
            ['title'] = "Eventos",
            ['message'] = "Evento criado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#coletacancel"] = {
            ['title'] = "Eventos",
            ['message'] = "Coleta cancelada.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#negouabraco"] = {
            ['title'] = "Ações",
            ['message'] = "A pessoa negou o abraço.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#finalizar"] = {
            ['title'] = "Ações",
            ['message'] = "Finalizaste o {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#finalizarerro"] = {
            ['title'] = "Ações",
            ['message'] = "Não podes finalizar esta pessoa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#familiajogadoroff"] = {
            ['title'] = "Família",
            ['message'] = "O jogador não está online.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiarecusou"] = {
            ['title'] = "Família",
            ['message'] = "O jogador recusou o convite.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaexit"] = {
            ['title'] = "Família",
            ['message'] = "Saíste da família {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaremovido"] = {
            ['title'] = "Família",
            ['message'] = "Foste removido da família {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiadelete"] = {
            ['title'] = "Família",
            ['message'] = "Deletaste a família {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaentrou"] = {
            ['title'] = "Família",
            ['message'] = "Entraste na família {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiarem"] = {
            ['title'] = "Família",
            ['message'] = "Removeste o passaporte {{msg}} da família {{msg2}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaadd"] = {
            ['title'] = "Família",
            ['message'] = "Adicionaste o passaporte {{msg}} à família {{msg2}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaconvite"] = {
            ['title'] = "Família",
            ['message'] = "O convite foi enviado.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiacriada"] = {
            ['title'] = "Família",
            ['message'] = "Criaste a família {{msg}}",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#familiaexistente"] = {
            ['title'] = "Família",
            ['message'] = "Já existe uma família com esse nome.",
            ['type'] = "Family",
            ['duration'] = 5000
        },
        ["#vocelavou"] = {
            ['title'] = "Lavagem",
            ['message'] = "Lavaste $ {{msg}} e tiveste ${{msg2}} de taxa.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#vocemultou"] = {
            ['title'] = "Multa",
            ['message'] = "Multaste em $ {{msg}} dólares.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aguarde"] = {
            ['title'] = "Ações",
            ['message'] = "Você morreu para o passaporte {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#vocemorreu"] = {
            ['title'] = "Ações",
            ['message'] = "Você morreu para o passaporte {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculomove"] = {
            ['title'] = "Veículo",
            ['message'] = "O veículo está em movimento.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#blockcarregar2"] = {
            ['title'] = "Ações",
            ['message'] = "Você não pode carregar alguém que já está sendo carregado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#blockcarregar"] = {
            ['title'] = "Ações",
            ['message'] = "Você não pode carregar este jogador.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#painelaliasalterar"] = {
            ['title'] = "LÍDER",
            ['message'] = "Alias da organização {{msg}} alterado para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelcargomaior"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não pode alterar a permissão de alguém com cargo superior ao seu.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#painelsetradio"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou o canal de rádio da organização {{msg}} para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelerrolider"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não é o líder da organização.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#errofacperm"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você não pertence a nenhuma organização.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#painelwebhook"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou o webhook de demissão da organização {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupamerro"] = {
            ['title'] = "PAINEL",
            ['message'] = "A roupa masculina da organização {{msg}} não foi definida.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupaferro"] = {
            ['title'] = "Roupa",
            ['message'] = "A roupa feminina da organização {{msg}} não foi definida.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupam"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou a roupa masculina da organização {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setroupaf"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você alterou a roupa feminina da organização {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setpasse"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você setou o Season Pass para o passaporte {{msg}} para o nível {{msg2}} com experiência {{msg3}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resetpassperm"] = {
            ['title'] = "Ações",
            ['message'] = "Você não tem permissão para usar esse comando.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resetpassnivel"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você resetou o Season Pass para o passaporte {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#receberskin"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você recebeu a skin {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#receberdiamante"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você recebeu {{msg}} diamante(s).",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recebergaragem"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você recebeu {{msg}} garagem(s).",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#subinivelpasse"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você subiu para o nível {{msg}} do passe de batalha.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#conquistaadd"] = {
            ['title'] = "Conquista",
            ['message'] = "Conquista adicionada com sucesso!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#conquistanaoencontrada"] = {
            ['title'] = "Conquista",
            ['message'] = "Conquista não encontrada!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#garagemadd"] = {
            ['title'] = "Garagem",
            ['message'] = "Garagem adicionada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#garagemproxima"] = {
            ['title'] = "Garagem",
            ['message'] = "A garagem precisa ser próxima da entrada.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#semdiamantes"] = {
            ['title'] = "Garagem",
            ['message'] = "Você não tem {{msg}} Diamantes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#demitirpainel"] = {
            ['title'] = "PROMOÇÃO",
            ['message'] = "Você foi demitido por {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#contratadopainel"] = {
            ['title'] = "PROMOÇÃO",
            ['message'] = "Você foi contratado por {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#promotepainel"] = {
            ['title'] = "PROMOÇÃO",
            ['message'] = "Você foi promovido para {{msg}} por {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#demitirpermmaior"] = {
            ['title'] = "PERMISSÃO",
            ['message'] = "Você não pode demitir alguém com cargo superior ao seu.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadorpermmaior"] = {
            ['title'] = "PERMISSÃO",
            ['message'] = "Você não pode alterar a permissão de alguém com cargo superior ao seu.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadoralterarperm"] = {
            ['title'] = "PERMISSÃO",
            ['message'] = "Você não pode alterar a permissão para uma permissão superior à sua.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#jogadorsemperm"] = {
            ['title'] = "PERMISSÃO",
            ['message'] = "O Jogador não possui permissão.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#alterarpropriaperm"] = {
            ['title'] = "PERMISSÃO",
            ['message'] = "Você não pode alterar a sua própria permissão.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#selecttitulo"] = {
            ['title'] = "Título",
            ['message'] = "Você selecionou o título ",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#selectgaragem"] = {
            ['title'] = "Garagem",
            ['message'] = "Selecione o local da garagem.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoinexistente"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo inexistente.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#sistemavendasdesativado"] = {
            ['title'] = "Garagem",
            ['message'] = "Sistema de venda desativado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#emrota"] = {
            ['title'] = "Rotas",
            ['message'] = "Você já está em uma rota!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#erroiniciarrota"] = {
            ['title'] = "Rotas",
            ['message'] = "Você não pode iniciar uma rota aqui!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entregacarga"] = {
            ['title'] = "Carga",
            ['message'] = "Você entregou a carga com sucesso.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#garrafavazia"] = {
            ['title'] = "Carga",
            ['message'] = "Garrafa vazia não encontrada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#pagamentomotorista"] = {
            ['title'] = "Motorista",
            ['message'] = "Você recebeu R${{msg}} reais.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#erroacao"] = {
            ['title'] = "Ações",
            ['message'] = "Não foi possível realizar essa ação!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#servidorreiniciando"] = {
            ['title'] = "Servidor",
            ['message'] = "Servidor em reinicialização.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#chamadoatendido"] = {
            ['title'] = "Chamado",
            ['message'] = "Chamado atendido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#chamadoenviado"] = {
            ['title'] = "Chamado",
            ['message'] = "Chamado enviado, aguarde.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cooldowncallmedic"] = {
            ['title'] = "Chamado",
            ['message'] = "Aguarde {{msg}} segundos para fazer um novo chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadocancel"] = {
            ['title'] = "Denúncia",
            ['message'] = "Seu chamado foi cancelado por falta de resposta.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciainvalido"] = {
            ['title'] = "Denúncia",
            ['message'] = "Passaporte inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciatime"] = {
            ['title'] = "Denúncia",
            ['message'] = "Aguarde um pouco para fazer uma nova denúncia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciasimesmo"] = {
            ['title'] = "Denúncia",
            ['message'] = "Você não pode denunciar a si mesmo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#denunciaok"] = {
            ['title'] = "Denúncia",
            ['message'] = "Denúncia realizada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avaliarcityperm"] = {
            ['title'] = "Feedback",
            ['message'] = "Você não tem permissão para avaliar este chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#avaliarcity"] = {
            ['title'] = "Feedback",
            ['message'] = "Agradecemos pela sua avaliação, ela é muito importante para o desenvolvimento da nossa STAFF.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#updatecodecache"] = {
            ['title'] = "Codiguin",
            ['message'] = "Cache atualizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#codigoerro501"] = {
            ['title'] = "Codiguin",
            ['message'] = "Erro ao atualizar código (501).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoerro500"] = {
            ['title'] = "Codiguin",
            ['message'] = "Erro ao atualizar código (500).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoexistente"] = {
            ['title'] = "Codiguin",
            ['message'] = "Código já existe.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoatt"] = {
            ['title'] = "Codiguin",
            ['message'] = "Código atualizado com sucesso. Novo Código: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#codigoerro"] = {
            ['title'] = "Codiguin",
            ['message'] = "Código inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoresgate"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você resgatou o código {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#codigoads"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você não pode resgatar o código ADS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codigoadsdias"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você não pode resgatar o código ADS (Dias).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#PassaporteInvalido"] = {
            ['title'] = "Codiguin",
            ['message'] = "Passaporte inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vocerecebeugrupo"] = {
            ['title'] = "Battlepass",
            ['message'] = "Você recebeu o grupo {{msg}}",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#Vehicle"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você recebeu um veículo {{msg}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#arenadollars"] = {
            ['title'] = "Arena",
            ['message'] = "Dólares insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenainvalido"] = {
            ['title'] = "Arena",
            ['message'] = "Time inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenatime"] = {
            ['title'] = "Arena",
            ['message'] = "Você já escolheu um time. {{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#startareanaviso"] = {
            ['title'] = "Arena",
            ['message'] = "Você só pode acessar do mundo padrão.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#arenafull"] = {
            ['title'] = "Arena",
            ['message'] = "Arena cheia.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#wallstreerecruited"] = {
            ['title'] = "Codiguin",
            ['message'] = "O jogador recrutado resgatou seu código {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallstreeresgate"] = {
            ['title'] = "Codiguin",
            ['message'] = "Você resgatou o código {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wallstreetperm"] = {
            ['title'] = "Wallstreet",
            ['message'] = "Você não tem permissão para fazer isso.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wallstreetiniciante"] = {
            ['title'] = "Wallstreet",
            ['message'] = "O jogador em questão não é um iniciante.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wallstreetstart"] = {
            ['title'] = "Wallstreet",
            ['message'] = "WallStreet iniciado para o jogador em questão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mensagemwallstreet"] = {
            ['title'] = "Wallstreet",
            ['message'] = nil,
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#forcarradio"] = {
            ['title'] = "Rádio",
            ['message'] = "Nenhum jogador encontrado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#retencaoin"] = {
            ['title'] = "Check",
            ['message'] = "Check-in realizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#retencaoout"] = {
            ['title'] = "Check",
            ['message'] = "Check-out realizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#avisoadmrem"] = {
            ['title'] = "Aviso",
            ['message'] = "Aviso removido com sucesso.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadmtimeexists"] = {
            ['title'] = "Aviso",
            ['message'] = "Tempo já existente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadmtimeprox"] = {
            ['title'] = "Aviso",
            ['message'] = "Tempo já existente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#avisoadm"] = {
            ['title'] = "Aviso",
            ['message'] = "Tempo já existente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#events"] = {
            ['title'] = "Função",
            ['message'] = "Você precisa estar no chão para realizar essa função.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recok"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Você já pode fazer outro anúncio de recrutamento.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recaviso"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Sua notificação de recrutamento irá aparecer em {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rectime"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Aguarde {{msg}} para enviar outro recrutamento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#notevento"] = {
            ['title'] = "EVENTO",
            ['message'] = "Você não pode entrar no mundo de evento enquanto o evento royale está ativo.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#getsource"] = {
            ['title'] = "GETSOURCE",
            ['message'] = "Source: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#idarea"] = {
            ['title'] = "IDAREA",
            ['message'] = "{{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#idareatotal"] = {
            ['title'] = "IDAREA",
            ['message'] = "Total: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#setroupa"] = {
            ['title'] = "CLOTHES",
            ['message'] = "Roupas aplicadas com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#setaudio"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Áudio adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#remaudio"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Áudio removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hud2in"] = {
            ['title'] = "HUD",
            ['message'] = "Hud2 ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hud2out"] = {
            ['title'] = "HUD",
            ['message'] = "Hud2 desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#hud2perm"] = {
            ['title'] = "ADDAUDIO",
            ['message'] = "Você não tem permissão para isso.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#dvp"] = {
            ['title'] = "Pds",
            ['message'] = "Todos os peds foram deletados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#salarioprefeito"] = {
            ['title'] = "PREFEITO",
            ['message'] = nil,
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#dvo"] = {
            ['title'] = "Dv",
            ['message'] = "Todos os objetos foram deletados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#checkout"] = {
            ['title'] = "CHECKOUT",
            ['message'] = "Checkout gerado com sucesso, URL copiado automaticamente!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#checkouterro"] = {
            ['title'] = "CHECKOUT",
            ['message'] = "Erro ao gerar checkout!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#delobjeto"] = {
            ['title'] = "ADMIN",
            ['message'] = " {{msg}} entidades deletadas.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#license"] = {
            ['title'] = "License",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#discordid"] = {
            ['title'] = "Discord",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#sendoprocurado"] = {
            ['title'] = "Procurado",
            ['message'] = "Você está sendo procurado, aguarde {{msg}} para efetuar essa ação novamente.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#procurado"] = {
            ['title'] = "Procurado",
            ['message'] = "Você está sendo procurado, aguarde {{msg}} para efetuar essa ação novamente.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#roupascancel"] = {
            ['title'] = "CANCEL",
            ['message'] = "Você não pode fazer isso agora.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#robberycancel"] = {
            ['title'] = "ROBBERY",
            ['message'] = "Você não pode fazer isso agora.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#remadminternoout"] = {
            ['title'] = "AVISO",
            ['message'] = "Avisos bloqueados",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#remadminternoin"] = {
            ['title'] = "AVISO",
            ['message'] = "Avisos liberados",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#dengineerro"] = {
            ['title'] = "ADMIN",
            ['message'] = "Jogador não encontrado.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#dengine"] = {
            ['title'] = "ADMIN",
            ['message'] = "Você precisa informar o ID do jogador.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#tptomex1"] = {
            ['title'] = "ADMIN",
            ['message'] = "Você não pode teleportar um jogador que está dentro do X1.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#speechin"] = {
            ['title'] = "SPEECH",
            ['message'] = "Speech ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#speechout"] = {
            ['title'] = "SPEECH",
            ['message'] = "Speech desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#banglobal"] = {
            ['title'] = "Ban",
            ['message'] = "Jogador banido globalmente.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#banglobalerro"] = {
            ['title'] = "Ban",
            ['message'] = "Erro ao banir jogador globalmente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#purchased"] = {
            ['title'] = "purchased",
            ['message'] = "O jogador {{msg}} {{msg2}} gastou R$ {{msg3}} em compras.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#KickError"] = {
            ['title'] = "Mensagem",
            ['message'] = "Você não digitou uma mensagem de kick.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#unvip"] = {
            ['title'] = "VIP",
            ['message'] = "Passaporte {{msg}} retirado do grupo {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ItemAreaTime"] = {
            ['title'] = "Item",
            ['message'] = "Aguarde {{msg}} segundos para usar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ItemAreadistance"] = {
            ['title'] = "Item",
            ['message'] = "Você não pode dar item em uma área maior que 40.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#createobject1"] = {
            ['title'] = "CREATEOBJECT",
            ['message'] = "Você ativou a criação de objetos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#createobject2"] = {
            ['title'] = "CREATEOBJECT",
            ['message'] = "Você desativou a criação de objetos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mudarnome1"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte atualizado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mudarnome2"] = {
            ['title'] = "Passaporte",
            ['message'] = "Nomes com emojis não são permitidos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#changeid"] = {
            ['title'] = "CHANGEID",
            ['message'] = "Passaporte alterado para {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        
        ["#rateLimitWait"] = {
            ['title'] = "Aviso",
            ['message'] = "Aguarde {{msg}} segundos para fazer isso novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#jumpIn"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#jumpOut"] = {
            ['title'] = "Super Jump",
            ['message'] = "Super Jump desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#freezeIn"] = {
            ['title'] = "Freeze",
            ['message'] = "Freeze ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#freezeOut"] = {
            ['title'] = "Freeze",
            ['message'] = "Freeze desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#godModeIn"] = {
            ['title'] = "Godmode",
            ['message'] = "Godmode ativado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#godModeOut"] = {
            ['title'] = "Godmode",
            ['message'] = "Godmode desativado com sucesso.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#deathTimer"] = {
            ['title'] = "DEATHTIMER",
            ['message'] = "DeathTimer alterado para {{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#peso"] = {
            ['title'] = "PESO",
            ['message'] = "Peso alterado para {{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ugroups"] = {
            ['title'] = "UGROUPS ({{Msg2}})",
            ['message'] = "{{Msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#clearinv"] = {
            ['title'] = "CLEARINV",
            ['message'] = "Limpeza concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#gem"] = {
            ['title'] = "Diamantes",
            ['message'] = "Diamantes entregues.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#item2"] = {
            ['title'] = "item2",
            ['message'] = "Você setou {{msg}}x {{msg2}} no passaporte {{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#world"] = {
            ['title'] = "MUNDO",
            ['message'] = "Mundo: {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#delete"] = {
            ['title'] = "Delete",
            ['message'] = "Personagem {{msg}} deletado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#wl"] = {
            ['title'] = "WHITELIST",
            ['message'] = "WHITELIST PARA A LICENÇA {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unwl"] = {
            ['title'] = "WHITELIST",
            ['message'] = "REMOVIDO WHITELIST PARA A ID {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#soltar"] = {
            ['title'] = "PRISÃO",
            ['message'] = "Passaporte {{msg}} solto.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#kick"] = {
            ['title'] = "Kick",
            ['message'] = "Passaporte {{msg}} expulso.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#kicksource"] = {
            ['title'] = "Kick",
            ['message'] = "Source {{msg}} expulso.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#applyBan"] = {
            ['title'] = "Ban",
            ['message'] = "Passaporte {{msg}} banido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#applyAdv"] = {
            ['title'] = "Ban",
            ['message'] = "Passaporte {{msg}} {{msg2}} Motivo: {{msg3}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#unban"] = {
            ['title'] = "UNBAN",
            ['message'] = "Passaporte {{msg}} desbanido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#remadv"] = {
            ['title'] = "BAN",
            ['message'] = "Passaporte {{msg}} adv removida.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#AdminUnban"] = {
            ['title'] = "Admin Unban",
            ['message'] = "Passaporte {{msg}} desbanido.",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#unbanid"] = {
            ['title'] = "Unbanid",
            ['message'] = "Id conta {{msg}} desbanido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#bansource"] = {
            ['title'] = "Ban Source",
            ['message'] = "Passaporte {{msg}} banido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#addslot"] = {
            ['title'] = "SLOTS",
            ['message'] = "Você aumentou os slots de personagem do Passaporte {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#token"] = {
            ['title'] = "TOKEN",
            ['message'] = "Você já vinculou seu token.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#group"] = {
            ['title'] = "GROUP",
            ['message'] = "Você não tem permissão para definir este grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#groupPass"] = {
            ['title'] = "GROUP PASSAPORTE",
            ['message'] = "Adicionado {{msg}} ao passaporte {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ungroup"] = {
            ['title'] = "UNGROUP",
            ['message'] = "Removido {{msg}} ao passaporte {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#players"] = {
            ['title'] = "ONLINE",
            ['message'] = "Jogadores Conectados: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#itemall"] = {
            ['title'] = "ItemALL",
            ['message'] = "Envio concluído.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#lista"] = {
            ['title'] = "Online",
            ['message'] = "Total Online: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#id"] = {
            ['title'] = "ID",
            ['message'] = "ID: {{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#quake"] = {
            ['title'] = "Terremoto",
            ['message'] = "Os geólogos informaram para a nossa unidade governamental que foi encontrado um abalo de magnitude 60 na Escala Richter, encontrem abrigo até que o mesmo passe.",
            ['type'] = "Warning",
            ['duration'] = 60000
        },
        ["#remcar"] = {
            ['title'] = "ADDCAR",
            ['message'] = "Veículo removido com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#mute"] = {
            ['title'] = "OFFLINE",
            ['message'] = "Jogador não está na cidade.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passMute"] = {
            ['title'] = "PASSAPORTE MUTADO",
            ['message'] = "Passaporte {{msg}} foi MUTADO.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#muteAdv"] = {
            ['title'] = "PASSAPORTE MUTADO ADV",
            ['message'] = "Você foi mutado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passUnmute"] = {
            ['title'] = "PASSAPORTE DESMUTADO",
            ['message'] = "Passaporte {{msg}} foi DESMUTADO.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unmuteAdv"] = {
            ['title'] = "PASSAPORTE DESMUTADO ADV",
            ['message'] = "Você foi desmutado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mundo"] = {
            ['title'] = "MUNDO",
            ['message'] = "Mundo: {{msg}}.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#mundoNAO"] = {
            ['title'] = "MUDAR MUNDO",
            ['message'] = "Você não pode mudar de mundo morto.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#testDriveMundoNAO"] = {
            ['title'] = "TEST DRIVE",
            ['message'] = "Você não pode mudar de mundo enquanto está em um test-drive",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entrouAdv"] = {
            ['title'] = "Entrou",
            ['message'] = "Você entrou no mundo {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mundoNAGORA"] = {
            ['title'] = "MUNDO",
            ['message'] = "Você não pode mudar de mundo agora.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mundotoxico"] = {
            ['title'] = "MUNDO TÓXICO",
            ['message'] = "Você entrou no mundo tóxico.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#resetseasonpass"] = {
            ['title'] = "RESETEI O PASSE",
            ['message'] = "Você resetou o passe de batalha.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#skinstock"] = {
            ['title'] = "ATUALIZOU STOCK DA SKIN",
            ['message'] = "Você atualizou o stock da skin {{msg}} para {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#allstock"] = {
            ['title'] = "ATUALIZOU STOCK DAS SKINS",
            ['message'] = "Você atualizou o stock das skins para {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mundopadrao"] = {
            ['title'] = "MUNDO PADRÃO",
            ['message'] = "Você entrou no mundo padrão.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#toxico"] = {
            ['title'] = "PASSAPORTE TÓXICO",
            ['message'] = "Você setou o passaporte {{msg}} como tóxico.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#verificar"] = {
            ['title'] = "VERIFICAR",
            ['message'] = "Discord: {{msg}} Personagens: {{msg2}}",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#untoxico"] = {
            ['title'] = "SETADO NORMAL",
            ['message'] = "Você setou o passaporte {{msg}} como normal.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#newblip"] = {
            ['title'] = "NOVO BLIP",
            ['message'] = "Você criou o blip {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#removeblip"] = {
            ['title'] = "REMOVE BLIP",
            ['message'] = "Você removeu o blip {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#blipname"] = {
            ['title'] = "NOME DO BLIP",
            ['message'] = "Você alterou o nome do blip {{msg}} para {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#wipe"] = {
            ['title'] = "Wipe",
            ['message'] = "Passaporte {{msg}} Wipado.",
            ['type'] = "Confirmed",
            ['duration'] = 7500
        },
        ["#ajudaRec"] = {
            ['title'] = "Ajuda Recrutamento",
            ['message'] = "{{msg}} Novatos pela cidade! Você precisa ajudar no recrutamento!",
            ['type'] = "Attention",
            ['duration'] = 7500
        },
        ["#comandoNpermitido"] = {
            ['title'] = "Permissão",
            ['message'] = "Você não tem permissão para usar esse comando, adquira já um VIP na nossa loja.",
            ['type'] = "Warning",
            ['duration'] = 7500
        },
        ["#ney"] = {
            ['title'] = "Ney",
            ['message'] = "Você realmente tentou derrubar um DEUS? MAIS RESPEITO, MERO MORTAL!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#patrimonio"] = {
            ['title'] = "Patrimônio",
            ['message'] = "Jogador: {{msg}} Patrimônio: R$ {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 60000*2
        },
        ["#passNecontrado"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte não encontrado.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#entrouArena"] = {
            ['title'] = "Arena",
            ['message'] = "Você entrou na arena {{msg}} Número {{msg2}} no time {{msg3}}.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#arenaCheia"] = {
            ['title'] = "Arena",
            ['message'] = "Arena cheia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#escolheuTime"] = {
            ['title'] = "Arena",
            ['message'] = "Você já escolheu um time.{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#timeInvalido"] = {
            ['title'] = "Arena",
            ['message'] = "Time inválido.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#semdoletas"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Dólares insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#entrounoGun"] = {
            ['title'] = "GunGame",
            ['message'] = "Você entrou no GunGame. Aguarde mais {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#esperaPlayerGun"] = {
            ['title'] = "GunGame",
            ['message'] = "Você entrou no GunGame. Aguarde mais 7 jogadores.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#saiuGun"] = {
            ['title'] = "GunGame",
            ['message'] = "Você saiu do GunGame.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ganhouCorridaArmada"] = {
            ['title'] = "GunGame",
            ['message'] = "{{msg}} Ganhou a corrida armada.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#saiuCorridaArmada"] = {
            ['title'] = "GunGame",
            ['message'] = "Você saiu da corrida armada.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#manuInvestimento"] = {
            ['title'] = "Investimento",
            ['message'] = "Manutenção Emergencial nos Investimentos, apenas retirada disponível.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#sendCall"] = {
            ['title'] = "CHAMADOS",
            ['message'] = "A descrição não pode ultrapassar 255 caracteres.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#msgLonga"] = {
            ['title'] = "CHAT",
            ['message'] = "Mensagem demasiado longa.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#DeleteMessage"] = {
            ['title'] = "CHAT",
            ['message'] = "Mensagem apagada.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#produAndamento"] = {
            ['title'] = "Produção",
            ['message'] = "Produção em andamento.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#itemDanificado"] = {
            ['title'] = "Item",
            ['message'] = "Item danificado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#mochilaFull"] = {
            ['title'] = "Mochila",
            ['message'] = "Mochila cheia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#addbuff"] = {
            ['title'] = "ADDBUFF",
            ['message'] = "Buff adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#rembuff"] = {
            ['title'] = "ADDBUFF",
            ['message'] = "Buff removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#startFarm"] = {
            ['title'] = "FARM",
            ['message'] = "Você iniciou o farm AFK, basta ficar 5 minutos para receber os seus itens.",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#suggFarm"] = {
            ['title'] = "FARM",
            ['message'] = "Você pode farmar enquanto estiver AFK sem morrer de fome ou sede!",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#condEntrega"] = {
            ['title'] = "Trabalho",
            ['message'] = "Você não pode estar em um veículo para realizar a entrega.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#cancelWork"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho cancelado.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#startMining"] = {
            ['title'] = "MINERAÇÃO",
            ['message'] = "Você iniciou a mineração, para finalizar pressione F6.",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#suggMining"] = {
            ['title'] = "MINERAÇÃO",
            ['message'] = "Você pode minerar enquanto estiver AFK sem morrer de fome ou sede!",
            ['type'] = "Work",
            ['duration'] = 30000
        },
        ["#recebeuItem"] = {
            ['title'] = "FARM",
            ['message'] = "Você recebeu {{msg}} x{{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#picaretaMissing"] = {
            ['title'] = "Picareta",
            ['message'] = "Picareta não encontrada.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#axeMissing"] = {
            ['title'] = "Machado",
            ['message'] = "Machado não encontrado.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#recebeMining"] = {
            ['title'] = "MINERAÇÃO",
            ['message'] = "Você recebeu R$ {{msg}}.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#nLocalEntrega"] = {
            ['title'] = "Entrega",
            ['message'] = "Você não está no local de entrega.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#calmaEntrega"] = {
            ['title'] = "Entrega",
            ['message'] = "Você está realizando entregas demasiado rápido.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#bonusfarm"] = {
            ['title'] = "FARM",
            ['message'] = "Bónus de {{msg}}x setado com sucesso!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#semRota"] = {
            ['title'] = "Rotas",
            ['message'] = "Nenhuma rota disponível para o seu emprego!",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#erroRotaCompart"] = {
            ['title'] = "Rotas",
            ['message'] = "Rotas compartilhadas com problemas, tente recriar o grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#longeRota"] = {
            ['title'] = "Rotas",
            ['message'] = "Está demasiado longe da rota!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vagaFull"] = {
            ['title'] = "GARAGEM",
            ['message'] = "Todas as vagas estão ocupadas.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#semCarroApreendido"] = {
            ['title'] = "Veículo",
            ['message'] = "Não tem veículos apreendidos.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#tpGaragem"] = {
            ['title'] = "LIMBO",
            ['message'] = "Você caiu no limbo e foi teleportado para a garagem mais próxima.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#permisGaragem"] = {
            ['title'] = "Garagem",
            ['message'] = "Você não tem permissão para acessar esta garagem.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#aluguelAtrasado"] = {
            ['title'] = "Garagem",
            ['message'] = "Aluguel atrasado, procure um Corretor de Imóveis.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculoVencido"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo {{msg}} vencido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#repNegativa"] = {
            ['title'] = "REPUTAÇÃO",
            ['message'] = "A sua reputação está negativa: {{msg}}. Vai pagar 20% a mais para a liberação.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#suggDesmanche"] = {
            ['title'] = "Garagem",
            ['message'] = "Sabia que, sendo VIP, não paga taxas de desmanche? Adquira já na nossa loja.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#veiculoLiberado"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo liberado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#pagamentoConcluido"] = {
            ['title'] = "Garagem",
            ['message'] = "Pagamento concluído.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#propertiesTax"] = {
            ['title'] = "Casa",
            ['message'] = "Pagamento concluído.<br>Nova data de cobrança: <b>{{msg}}</b>",
            ['type'] = "House",
            ['duration'] = 15000
        },
        ["#blockPropertyTax"] = {
            ['title'] = "Casa",
            ['message'] = "Só pode adiantar a hipoteca em até 30 dias.",
            ['type'] = "House",
            ['duration'] = 15000
        },
        ["#taxaRenovada"] = {
            ['title'] = "Garagem",
            ['message'] = "Taxas renovadas (VIP) com sucesso.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#jaPossuiVeiculo"] = {
            ['title'] = "Garagem",
            ['message'] = "{{msg}} {{msg2}} já possui este modelo de veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#transfConcluida"] = {
            ['title'] = "Garagem",
            ['message'] = "Transferência concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#veiculoModificado"] = {
            ['title'] = "Garagem",
            ['message'] = "Veículo modificado em {{msg}}% a mais de velocidade, aproveite a nova máquina.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#suggCarroVelo"] = {
            ['title'] = "Garagem",
            ['message'] = "Você não tem VIP? Sabia que com VIP o seu carro ganha até 50% a mais de velocidade? Adquira já na nossa loja.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#warningMulta"] = {
            ['title'] = "Garagem",
            ['message'] = "Você tem R${{msg}} em multas para pagar, quite todas as suas dívidas no banco para retirar o veículo.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#aluguelConcluido"] = {
            ['title'] = "Garagem",
            ['message'] = "Aluguel do veículo {{msg}} concluído.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#rastreadorAtivado"] = {
            ['title'] = "Rastreador",
            ['message'] = "Rastreador do veículo ativado por 30 segundos, lembrando que, se o mesmo estiver em movimento, a localização pode ser imprecisa.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#regasteVeiculo"] = {
            ['title'] = "Veículo",
            ['message'] = "A seguradora efetuou o resgate do seu veículo, que já se encontra disponível para retirada.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#esperaRastrear"] = {
            ['title'] = "Garagem",
            ['message'] = "O rastreador só pode ser ativado a cada 60 segundos.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#rastreadorDesativado"] = {
            ['title'] = "Garagem",
            ['message'] = "Rastreador desativado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#taxaAutomatica"] = {
            ['title'] = "Garagem",
            ['message'] = "Taxa do veículo paga automaticamente. Retire o veículo da garagem novamente.",
            ['type'] = "Vehicle",
            ['duration'] = 7500
        },
        ["#taxaAtrasada"] = {
            ['title'] = "Garagem",
            ['message'] = "Taxa do veículo atrasada.",
            ['type'] = "Vehicle",
            ['duration'] = 7500
        },
        ["#completeTimer"] = {
            ['title'] = "Timer",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 1000
        },
        ["#addcar"] = {
            ['title'] = "ADDCAR",
            ['message'] = "Veículo adicionado com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#totalVeD"] = {
            ['title'] = "VeD",
            ['message'] = "Total de Veículos: {{msg}} | Total Deletados: {{msg2}}",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#lockVeic"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo trancado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#openVeic"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo destrancado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoEncontrado"] = {
            ['title'] = "Veículo",
            ['message'] = "O veículo do seu contrato foi encaminhado para o Impound e o Lester disse que pode assinar um novo contrato quando quiser.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#veiculoRegistrado"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo foi registado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoJaLista"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo já está na lista.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#passaporteIdentity"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte: {{msg}} Nome: {{msg2}} {{msg3}} Nº: {{msg4}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#passaporteNome"] = {
            ['title'] = "Passaporte",
            ['message'] = "Passaporte: 9.999 Nome: {{msg}} Nº: {{msg2}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#veicArrest"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo apreendido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veicArrested"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo já se encontra apreendido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#receivedGift"] = {
            ['title'] = "HUB",
            ['message'] = "Recebeu um presente, vá até o hub (ESC) para resgatar.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#semOrg"] = {
            ['title'] = "PAINEL",
            ['message'] = "Ainda não está em nenhuma organização, entre numa para abrir o painel.",
            ['type'] = "Work",
            ['duration'] = 10000
        },
        ["#recebeRecompensa"] = {
            ['title'] = "HUB",
            ['message'] = "Recebeu {{msg}}x {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#novoChamado"] = {
            ['title'] = "Chamados",
            ['message'] = "Um novo chamado foi aberto! [F1] Total de chamados abertos {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#notifyChamadasOff"] = {
            ['title'] = "Chamados",
            ['message'] = "Notificações de chamados desativadas.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notifyChamadasOn"] = {
            ['title'] = "Chamados",
            ['message'] = "Notificações de chamados ativadas.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#seuChamadoNao"] = {
            ['title'] = "Chamados",
            ['message'] = "Não pode responder ao seu próprio chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#playerOff"] = {
            ['title'] = "Chamados",
            ['message'] = "Jogador offline.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#esperaChamado"] = {
            ['title'] = "Chamados",
            ['message'] = "Precisa esperar {{msg}} para responder outro chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#esperaFinalizaChamado"] = {
            ['title'] = "Chamados",
            ['message'] = "Precisa esperar {{msg}} segundos para finalizar o chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#chamadoOutroAdmin"] = {
            ['title'] = "Chamados",
            ['message'] = "Não pode finalizar o chamado de outro admin.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#seuChamadoNao"] = {
            ['title'] = "Chamados",
            ['message'] = "Não pode finalizar o seu próprio chamado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamondRecivedAtendimento"] = {
            ['title'] = "Obrigado",
            ['message'] = "Acabou de receber {{msg}} 💎 de presente por ter atendido o chamado de {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#bonusFinalizacao"] = {
            ['title'] = "Chamados",
            ['message'] = "Não recebeu bônus pela finalização deste chamado.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#acaoNEncontrada"] = {
            ['title'] = "Ações",
            ['message'] = "Ação não encontrada/Cheia.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#esperaAcao"] = {
            ['title'] = "PAINEL",
            ['message'] = "Aguarde {{msg}} segundos para realizar uma nova ação.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#inicianteOuDesemp"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "O jogador precisa ser Iniciante ou Desempregado.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#tryContratar"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Tentou contratar o ID {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#orgRecivedDiamond"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "A sua organização ganhou 🟡 x{{msg}} pontos para a sua organização por ter recrutado um iniciante!.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#contrataPassport"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "Contratou o ID {{msg}} para {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naoPSubchefe"] = {
            ['title'] = "Promoção",
            ['message'] = "Não pode promover um Sub-Chefe.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#promovePassport"] = {
            ['title'] = "Promoção",
            ['message'] = "Promoveu o ID: {{msg}} para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rebaixaPassport"] = {
            ['title'] = "Passaporte",
            ['message'] = "Rebaixou o ID: {{msg}} para {{msg2}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naodDemitirVc"] = {
            ['title'] = "Passaporte",
            ['message'] = "Não pode demitir-se a si próprio.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#demitiuPassport"] = {
            ['title'] = "Passaporte",
            ['message'] = "Demitido o ID: {{msg}}",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#vcSacou"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Sacou: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#qntInvalida"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Quantidade inválida.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vcRemoveu"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Removeste: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#vcDepositou"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Depositaste: R${{msg}}",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#perdeLimpar"] = {
            ['title'] = "Depósito",
            ['message'] = "Ao limpar o dinheiro na transferência, perdeste 5% do total do dinheiro.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#setleader"] = {
            ['title'] = "LÍDER",
            ['message'] = "Definiste {{msg}} como líder da {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#orgNEncontrada"] = {
            ['title'] = "LÍDER",
            ['message'] = "Organização não encontrada.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#setarpontosfac"] = {
            ['title'] = "PAINEL",
            ['message'] = "Adicionaste {{msg}} pontos para o grupo {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nomeErradoGrupo"] = {
            ['title'] = "PAINEL",
            ['message'] = "Não digitaste o nome do grupo corretamente, burro.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#limpouGrupo"] = {
            ['title'] = "PAINEL",
            ['message'] = "Limpaste o grupo {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#msgRecentemente"] = {
            ['title'] = "PAINEL",
            ['message'] = "Já enviaste uma mensagem recentemente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#msgPara"] = {
            ['title'] = "PAINEL",
            ['message'] = "Enviaste uma mensagem para {{msg}} {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#discordParaGrupo"] = {
            ['title'] = "PAINEL",
            ['message'] = "Adicionaste o discord {{msg}} para o grupo {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nomeGrupoIncorreto"] = {
            ['title'] = "PAINEL",
            ['message'] = "Digitaste o nome do grupo incorretamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#deletesquad"] = {
            ['title'] = "Pelotão",
            ['message'] = "Deletaste o pelotão com sucesso!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#maxPSquad"] = {
            ['title'] = "Pelotão",
            ['message'] = "Pelotão com o máximo de membros!",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#entrouSquad"] = {
            ['title'] = "Pelotão",
            ['message'] = "Entraste para o {{msg}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#membroEntrouSquad"] = {
            ['title'] = "Pelotão",
            ['message'] = "O membro {{msg}} entrou para o pelotão.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#nomeSquadAlterado"] = {
            ['title'] = "Pelotão",
            ['message'] = "O nome do pelotão foi alterado para {{msg}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#cargoMembroAlterado"] = {
            ['title'] = "Pelotão",
            ['message'] = "O cargo do membro {{msg}} foi alterado para {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#membroRetirado"] = {
            ['title'] = "Pelotão",
            ['message'] = "O membro {{msg}} foi retirado do pelotão {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#tempoMorteSquad"] = {
            ['title'] = "Pelotão",
            ['message'] = "O tempo de morte do pelotão {{msg}} foi alterado para {{msg2}} segundos!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#controleCruzeiroDesativado"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Controle de cruzeiro desativado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#controleCruzeiroAtivado"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Controle de cruzeiro ativado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#embarcDesancorada"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Embarcação desancorada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#embarcAncorada"] = {
            ['title'] = "Cruzeiro",
            ['message'] = "Embarcação ancorada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#esperaComando"] = {
            ['title'] = "CombatLog",
            ['message'] = "Aguarde {{msg}} segundos para usar o comando novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#saiaPropriPrivada"] = {
            ['title'] = "Propriedade Privada",
            ['message'] = "Estás numa propriedade privada, sai imediatamente.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#usaBandage"] = {
            ['title'] = "Item",
            ['message'] = "Passaste ataduras no(a) {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#semFerimento"] = {
            ['title'] = "Ferimento",
            ['message'] = "Nenhum ferimento encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#injuries"] = {
            ['title'] = "Ferimento",
            ['message'] = "{{msg}}",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#drogaNPura"] = {
            ['title'] = "DROGAS",
            ['message'] = "Acho que essa droga não estava pura...",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#marcacaoAtivada"] = {
            ['title'] = "Marcação",
            ['message'] = "Marcações ativadas.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#marcacaoDesativada"] = {
            ['title'] = "Roubos",
            ['message'] = "Marcações desativadas.",
            ['type'] = "Illegal",
            ['duration'] = 3000
        },
        ["#roubarModoGuerra"] = {
            ['title'] = "Roubos",
            ['message'] = "Só podes roubar se estiveres no MODO GUERRA.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#naoRoubarSafe"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Não podes roubar enquanto estiveres no modo safe.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#separar"] = {
            ['title'] = "Separar",
            ['message'] = "{{msg}} {{msg2}} e {{msg3}} {{msg4}} separaram-se, venham gados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#relationship"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Aguarda {{msg}} segundos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#iniciouRelacionamento"] = {
            ['title'] = "Relacionamento",
            ['message'] = "{{msg}} {{msg2}} iniciou relacionamento com {{msg3}} {{msg4}}",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#solteiro"] = {
            ['title'] = "Relacionamento",
            ['message'] = "{{msg}} {{msg2}} e {{msg3}} {{msg4}} separaram-se, já podem mandar um Oi sumida(o)",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#tentandoTrair"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Alô {{msg}} {{msg2}} chifrudo(a), {{msg3}} {{msg4}} está a tentar trair-te.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#meterGaia"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Alô {{msg}} {{msg2}} chifrudo(a), {{msg3}} {{msg4}} tentou meter-te gaia.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#repcheck"] = {
            ['title'] = "Reputação",
            ['message'] = "Deitaste 👍 LIKE em {{msg}} {{msg2}}!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repRecived"] = {
            ['title'] = "REPUTAÇÃO",
            ['message'] = "Acabaste de receber um 👍 LIKE de {{msg}} {{msg2}}{{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repEmEspera"] = {
            ['title'] = "Reputação",
            ['message'] = "Reputação em tempo de espera.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#likeDado"] = {
            ['title'] = "Reputação",
            ['message'] = "Deitaste 👍 LIKE em {{msg}} {{msg2}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#likeRecivedFrom"] = {
            ['title'] = "Reputação",
            ['message'] = "Acabaste de receber um 👍 LIKE de {{msg}} {{msg2}}{{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#killNewbieTax"] = {
            ['title'] = "NOVATO",
            ['message'] = "Pagaste uma taxa de R${{msg}} por matar um Iniciante.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#repAdicionada"] = {
            ['title'] = "Reputação",
            ['message'] = "Reputação adicionada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unlikeRecived"] = {
            ['title'] = "Reputação",
            ['message'] = "Recebeste deslike de {{msg}} {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#me"] = {
            ['title'] = "item",
            ['message'] = "Aguarda {{msg}} segundos para usar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#qruAtivado"] = {
            ['title'] = "QRU",
            ['message'] = "QRU ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#qruDesativado"] = {
            ['title'] = "QRU",
            ['message'] = "QRU desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#roupaAplicada"] = {
            ['title'] = "item",
            ['message'] = "Roupas aplicadas.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#roupaNEncontrada"] = {
            ['title'] = "item",
            ['message'] = "Roupas não encontradas.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#roupaSalva"] = {
            ['title'] = "item",
            ['message'] = "Roupas salvas.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#morreuPara"] = {
            ['title'] = "Morte",
            ['message'] = "Morreste para o passaporte {{msg}}.",
            ['type'] = "Warning",
            ['duration'] = 60000*5
        },
        ["#aguarde"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aguarda {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#semPermissaoVip"] = {
            ['title'] = "Permissão",
            ['message'] = "Não tens permissão para usar este comando, adquire já um vip na nossa loja.",
            ['type'] = "Warning",
            ['duration'] = 7500
        },
        ["#tpFarmAfk"] = {
            ['title'] = "AFK",
            ['message'] = "Foste teleportado para o farm AFK.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#esperaNovoReport"] = {
            ['title'] = "REPORT",
            ['message'] = "Reportaste recentemente, aguarda {{msg}} segundos para reportar novamente.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#jogadorReportouX"] = {
            ['title'] = "REPORT",
            ['message'] = "O jogador {{msg}} reportou o jogador {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#vcReportouX"] = {
            ['title'] = "REPORT",
            ['message'] = "Reportaste o jogador {{msg}}.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#comandoMorto"] = {
            ['title'] = "SPAM CUSTOMIZADO",
            ['message'] = "Não podes usar este comando morto.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#setCustomSpawn"] = {
            ['title'] = "SPAM CUSTOMIZADO",
            ['message'] = "Definiste o spawn personalizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#vipMessage"] = {
            ['title'] = "VIP",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#alarme"] = {
            ['title'] = "ALARME",
            ['message'] = "{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#alarmeDesativado"] = {
            ['title'] = "ALARME",
            ['message'] = "Alarme desativado.",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#alarmeAtivado"] = {
            ['title'] = "ALARME",
            ['message'] = "Alarme ativado.",
            ['type'] = "Confirmed",
            ['duration'] = 7000
        },
        ["#permissaoAlarme"] = {
            ['title'] = "ALARME",
            ['message'] = "Não tens permissão para isso.",
            ['type'] = "Warning",
            ['duration'] = 7000
        },
        ["#blipmark"] = {
            ['title'] = "blip",
            ['message'] = "{{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#airdrop"] = {
            ['title'] = "Lançamento",
            ['message'] = "Um Airdrop foi lançado e marcado no teu mapa!",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#airdropOpen"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aguarda {{msg}} segundos para abrir outro airdrop!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#airdropOpening"] = {
            ['title'] = "A Abrir",
            ['message'] = "O Airdrop está a ser aberto!",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#airdropOpened"] = {
            ['title'] = "Aberto",
            ['message'] = "O Airdrop foi aberto!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#thisAirdrop"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aguarda {{msg}} segundos para abrir este airdrop!",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#reposed"] = {
            ['title'] = "Aguarde",
            ['message'] = "Aplicaste {{msg}} minutos de repouso.",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#treatment"] = {
            ['title'] = "Tratamento",
            ['message'] = "Tratamento iniciado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#precisaGauze"] = {
            ['title'] = "Item",
            ['message'] = "Precisas de 1x {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#dmgResult"] = {
            ['title'] = "Resultado",
            ['message'] = "{{msg}}",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#removePlaster"] = {
            ['title'] = "Hospital",
            ['message'] = "Já podes retirar o gesso.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#needSyringe"] = {
            ['title'] = "Hospital",
            ['message'] = "Precisas de 3x {{msg}}.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#waitExtraction"] = {
            ['title'] = "Extração",
            ['message'] = "Neste momento não é possível efetuar a extração, o paciente ainda está a recuperar-se ou sofreu um acidente recentemente.",
            ['type'] = "Attention",
            ['duration'] = 10000
        },
        ["#weakImmuSyst"] = {
            ['title'] = "Hospital",
            ['message'] = "Sistema imunológico do paciente muito fraco.",
            ['type'] = "Hospital",
            ['duration'] = 10000
        },
        ["#removedItens"] = {
            ['title'] = "Item",
            ['message'] = "Itens removidos.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#nothingFound"] = {
            ['title'] = "Item",
            ['message'] = "Nada encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#systemDecryption"] = {
            ['title'] = "Desencriptação",
            ['message'] = "O progresso da desencriptação do sistema começou, estará concluído em {{msg}} segundos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#damagedItem"] = {
            ['title'] = "Item",
            ['message'] = "{{msg}} danificado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#needItemX"] = {
            ['title'] = "Item",
            ['message'] = "Precisas de {{msg}}x {{msg2}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#contingentUnav"] = {
            ['title'] = "Contingente",
            ['message'] = "Contingente indisponível.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#vaultEmpty"] = {
            ['title'] = "Cofre",
            ['message'] = "O cofre está vazio, aguarda {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#decryptionInProg"] = {
            ['title'] = "Desencriptação",
            ['message'] = "Desencriptação em andamento, aguarda {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#salary"] = {
            ['title'] = "Salário",
            ['message'] = "Recebeste R${{msg}} reais de {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#salaryVip"] = {
            ['title'] = "Salário",
            ['message'] = "Recebeste R${{msg}} reais de {{msg2}}.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#noMoneyWallet"] = {
            ['title'] = "Carteira",
            ['message'] = "O jogador não tem dinheiro na carteira.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#raceWinner"] = {
            ['title'] = "Corrida",
            ['message'] = "A corrida terminou, o vencedor foi {{msg}} #{{msg2}}.",
            ['type'] = "Party",
            ['duration'] = 10000
        },
        ["#dirtyFixMoney"] = {
            ['title'] = "CORRIDA",
            ['message'] = "Recebeste R$5000 por participar na corrida.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#dirtyMoney"] = {
            ['title'] = "CORRIDA",
            ['message'] = "Recebeste R${{msg}} por participar na corrida.",
            ['type'] = "Payment",
            ['duration'] = 8000
        },
        ["#clandestineRacer"] = {
            ['title'] = "Corrida",
            ['message'] = "Detectámos um corredor clandestino nas ruas.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#noRadio"] = {
            ['title'] = "RÁDIO",
            ['message'] = "Não tens um rádio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enteredFrequency"] = {
            ['title'] = "RÁDIO",
            ['message'] = "Entraste na frequência {{msg}} Mhz.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#leaveRadio"] = {
            ['title'] = "RÁDIO",
            ['message'] = "Saíste da rádio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#maxCaracter"] = {
            ['title'] = "REGISTRO",
            ['message'] = "Não podes ultrapassar os 255 caracteres.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#punished"] = {
            ['title'] = "PUNIÇÃO",
            ['message'] = "Foste punido temporariamente, não podes deixar a ILHA.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#enteredSafeZ"] = {
            ['title'] = "Safezone",
            ['message'] = "Entraste na zona segura.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#leaveSafeZ"] = {
            ['title'] = "Safezone",
            ['message'] = "Saíste da zona segura.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#enteredSafeMode"] = {
            ['title'] = "Safezone",
            ['message'] = "Entraste no modo de segurança.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#leaveSafeMode"] = {
            ['title'] = "Safezone",
            ['message'] = "Saíste da safe, o modo de segurança foi cancelado.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#safeModeOff"] = {
            ['title'] = "Safezone",
            ['message'] = "Saíste do modo de segurança.",
            ['type'] = "Warning",
            ['duration'] = 3000
        },
        ["#onOffSafe"] = {
            ['title'] = "Safezone",
            ['message'] = "Só podes ativar/desativar numa zona segura.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#goPier"] = {
            ['title'] = "Pier",
            ['message'] = "Vê para o pier.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#fNewbie"] = {
            ['title'] = "NOVATO",
            ['message'] = "Poxa... Que pena, mas fica tranquilo, não perdeste nada por ainda estar a aprender! Não desanimes e vamos tentar de novo!",
            ['type'] = "Warning",
            ['duration'] = 35000
        },
        ["#safeModeWarning"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Estás no safemode para tua proteção. Para sair deste modo, basta entrares em qualquer emprego!",
            ['type'] = "Attention",
            ['duration'] = 15000
        },
        ["#leaveWarMode"] = {
            ['title'] = "MODO DE GUERRA",
            ['message'] = "Saíste do modo de guerra.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emptyFieldWarning"] = {
            ['title'] = "Campo",
            ['message'] = "Não deixes nenhum campo vazio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#safeZoneChange"] = {
            ['title'] = "Safezone",
            ['message'] = "Precisas estar numa SAFEZONE para entrar/sair do mundo seguro.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enteredWarMode"] = {
            ['title'] = "MODO DE GUERRA",
            ['message'] = "Entraste no modo guerra.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#belowMinValue"] = {
            ['title'] = "Negado",
            ['message'] = "Valor abaixo do valor mínimo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#playerXHaveSkin"] = {
            ['title'] = "Aviso",
            ['message'] = "{{msg}} {{msg2}} já tem esta skin.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#playerHaveSkin"] = {
            ['title'] = "Atenção",
            ['message'] = "Já tens esta skin.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#transferCTax"] = {
            ['title'] = "Sucesso",
            ['message'] = "Transferência concluída, recebeste {{msg}} Gemas, taxa cobrada {{msg2}} Gemas.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#transferC"] = {
            ['title'] = "Sucesso",
            ['message'] = "Transferência concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#dontHaveGem"] = {
            ['title'] = "Negado",
            ['message'] = "{{msg}} {{msg2}} não tem Gemas suficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#notEnoughGems"] = {
            ['title'] = "Negado",
            ['message'] = "Gemas insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#rejectedTransfer"] = {
            ['title'] = "Negado",
            ['message'] = "{{msg}} {{msg2}} não aceitou a transferência.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#emptyStock"] = {
            ['title'] = "Aviso",
            ['message'] = "Esta skin já não tem mais stock.",
            ['type'] = "Attention",
            ['duration'] = 1000
        },
        ["#haveXskin"] = {
            ['title'] = "Aviso",
            ['message'] = "Já tens uma {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#completedPurchase"] = {
            ['title'] = "Sucesso",
            ['message'] = "Compra concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#completedSale"] = {
            ['title'] = "Sucesso",
            ['message'] = "Venda concluída.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#equipskinWeapon"] = {
            ['title'] = "Sucesso",
            ['message'] = "Skin equipada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unequipskinWeapon"] = {
            ['title'] = "Sucesso",
            ['message'] = "Skin desequipada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#fLoadCharacter"] = {
            ['title'] = "SPAM",
            ['message'] = "Encontrámos problemas ao tentar carregar o teu personagem. Aguarda mais 15 segundos.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#relogWarning"] = {
            ['title'] = "Bugado",
            ['message'] = "O teu personagem está com problemas, para uma experiência completa, por favor faz logout e login novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#maxCharacter"] = {
            ['title'] = "Limite",
            ['message'] = "Limite de personagens atingido.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#deathWarning"] = {
            ['title'] = "Iniciante",
            ['message'] = "Putzz, acabaste por desmaiar, né? Fica tranquilo, cuidei das tuas coisas! Da próxima vez, tenta ter mais cuidado e não te meter em encrenca.",
            ['type'] = "Information",
            ['duration'] = 28000
        },
        ["#completedTreatment"] = {
            ['title'] = "Tratamento",
            ['message'] = "Tratamento concluído.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#systemTempOff"] = {
            ['title'] = "REPORT BOX",
            ['message'] = "Sistema temporariamente desativado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitReportBox"] = {
            ['title'] = "REPORT BOX",
            ['message'] = "Precisas esperar {{msg}} segundos para reportar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitReportCD"] = {
            ['title'] = "REPORTAR",
            ['message'] = "Precisas esperar {{msg}} segundos para reportar novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#waitEnterWarMode"] = {
            ['title'] = "MODO GUERRA",
            ['message'] = "Precisas esperar {{msg}} segundos para usar o MODO GUERRA novamente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#rescueVeicVip"] = {
            ['title'] = "VEÍCULOS",
            ['message'] = "Ainda tens veículos para resgatar. Usa o comando /carrosvip para resgatar.",
            ['type'] = "Vehicle",
            ['duration'] = 15000
        },
        ["#rescuedVeicVip"] = {
            ['title'] = "VEÍCULOS",
            ['message'] = "Resgataste todos os teus veículos VIP.",
            ['type'] = "Vehicle",
            ['duration'] = 15000
        },
        ["#noVeicVip"] = {
            ['title'] = "VEÍCULOS",
            ['message'] = "Não tens veículos VIP para resgatar.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#dominationAreaMarked"] = {
            ['title'] = "DOMINAÇÃO",
            ['message'] = "A área de dominação foi marcada no teu mapa.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominationWinnerGroup"] = {
            ['title'] = "DOMINAÇÃO",
            ['message'] = "O Grupo {{msg}} GANHOU a dominação de {{msg2}}.",
            ['type'] = "PVP",
            ['duration'] = 15000
        },
        ["#dominationZoneTimer"] = {
            ['title'] = "DOMINAÇÃO",
            ['message'] = "Dominação de {{msg}}. irá iniciar às {{msg2}}.{{msg3}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dominationZoneStart"] = {
            ['title'] = "DOMINAÇÃO",
            ['message'] = "Dominação de {{msg}}. irá iniciar, todos dentro da área! {{msg2}}",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#createdEvent"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Evento criado com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#eventStarted"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Evento iniciado com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#eventNotFound"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Evento não encontrado ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#restartEvent"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Evento reiniciado com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#pausedEvent"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Evento pausado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#resumeEvent"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Evento resumido com sucesso ID: {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#addpointevent"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Ponto adicionado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#rempointevent"] = {
            ['title'] = "EVENTOS",
            ['message'] = "Ponto removido com sucesso.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#invasionGroupWinner"] = {
            ['title'] = "INVASÃO",
            ['message'] = "O Grupo {{msg}} GANHOU a invasão {{msg2}}.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#zoneInvasionWillStart"] = {
            ['title'] = "INVASÃO",
            ['message'] = "Invasão de {{msg}}. irá iniciar às {{msg2}}.",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#zoneInvasionStarted"] = {
            ['title'] = "INVASÃO",
            ['message'] = "Invasão de {{msg}}. irá iniciar, todos dentro da área! {{msg2}}",
            ['type'] = "Illegal",
            ['duration'] = 15000
        },
        ["#kickinvasion"] = {
            ['title'] = "INVASÃO",
            ['message'] = "Kickaste o jogador {{msg}} do evento.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#testDrive"] = {
            ['title'] = "TESTE",
            ['message'] = "Teste iniciado, para finalizar sai do veículo.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#alreadyHaveVehic"] = {
            ['title'] = "VEÍCULO",
            ['message'] = "Já tens um {{msg}}.",
            ['type'] = "Vehicle",
            ['duration'] = 3000
        },
        ["#notEnoughDiamond"] = {
            ['title'] = "DIAMANTE",
            ['message'] = "Diamantes insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#theftTime"] = {
            ['title'] = "ROUBO",
            ['message'] = "Horário de roubo definido com sucesso.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#workFinished"] = {
            ['title'] = "TRABALHO",
            ['message'] = "Trabalho finalizado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#workStarted"] = {
            ['title'] = "TRABALHO",
            ['message'] = "Trabalho iniciado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#cantDoAgain"] = {
            ['title'] = "FAZER",
            ['message'] = "Não podes fazer isso no momento.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#attachsActivated"] = {
            ['title'] = "ATTACHS",
            ['message'] = "Attachs ativados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#attachsDisabled"] = {
            ['title'] = "ATTACHS",
            ['message'] = "Attachs desativados.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cantDisable"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Não podes desmanchar se estiveres no mundo seguro.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotEquipWeaponOnSafe"] = {
            ['title'] = "MODO SAFE",
            ['message'] = "Não podes equipar armas no mundo seguro.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#enterWarModeToWeapon"] = {
            ['title'] = "MODO GUERRA",
            ['message'] = "Precisas entrar no Modo Guerra para poder usar armas -> F9/Outros/Modo Guerra.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantInSafe"] = {
            ['title'] = "SAFEZONE",
            ['message'] = "Não podes fazer isso dentro de uma safezone.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantDropItem"] = {
            ['title'] = "DROP",
            ['message'] = "Não podes largar itens no momento.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cantStoreItem"] = {
            ['title'] = "BAÚ",
            ['message'] = "Não podes guardar esse item.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#noPermissionWithdrawItem"] = {
            ['title'] = "BAÚ",
            ['message'] = "Não tens permissão para retirar esse item.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#cantStoreItemInChest"] = {
            ['title'] = "BAÚ",
            ['message'] = "Não podes colocar esse item neste baú.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#chestCreated"] = {
            ['title'] = "BAÚ",
            ['message'] = "Baú criado com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#chestRemoved"] = {
            ['title'] = "BAÚ",
            ['message'] = "Baú removido com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#msgChest"] = {
            ['title'] = "BAÚ",
            ['message'] = "{{msg}}",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#addedPermission"] = {
            ['title'] = "BAÚ",
            ['message'] = "Permissão adicionada com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#removedPermission"] = {
            ['title'] = "BAÚ",
            ['message'] = "Permissão removida com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#cantStealNewbie"] = {
            ['title'] = "REVISTAR",
            ['message'] = "Não podes roubar alguém iniciante.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cantStealSafe"] = {
            ['title'] = "ROUBAR",
            ['message'] = "Não podes roubar alguém iniciante.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#cannotSearch"] = {
            ['title'] = "REVISTAR",
            ['message'] = "Impossível realizar a revista.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#itemBlocked"] = {
            ['title'] = "ITEM",
            ['message'] = "Item bloqueado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#cannotSendItem"] = {
            ['title'] = "ENVIAR",
            ['message'] = "Não podes enviar esse item.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotLootItem"] = {
            ['title'] = "ENVIAR",
            ['message'] = "Não podes saquear este item.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#itensCollected"] = {
            ['title'] = "ITEM",
            ['message'] = "Itens recolhidos com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#itemBlockedPolice"] = {
            ['title'] = "ITEM",
            ['message'] = "Item bloqueado pela polícia.",
            ['type'] = "Police",
            ['duration'] = 3000
        },
        ["#itemLootBlocked"] = {
            ['title'] = "ITEM",
            ['message'] = "Item bloqueado para ser saqueado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#cannotTakeItem"] = {
            ['title'] = "PEGAR",
            ['message'] = "Não podes pegar este item.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#fullLifeKnocked"] = {
            ['title'] = "VIDAS",
            ['message'] = "Não podes utilizar vida cheia ou estando nocauteado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#playerFree"] = {
            ['title'] = "JOGADOR",
            ['message'] = "Personagem libertado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#passportAtt"] = {
            ['title'] = "PASSAPORTE",
            ['message'] = "Passaporte atualizado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#hammerNotFound"] = {
            ['title'] = "MARTELO",
            ['message'] = "Martelo não encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#waitUseDrug"] = {
            ['title'] = "DROGAS",
            ['message'] = "Espera {{msg}} minutos para usar novamente.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitArmor"] = {
            ['title'] = "ARMADURA",
            ['message'] = "Aguarda {{msg}} segundos.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#evidence"] = {
            ['title'] = "EVIDÊNCIA",
            ['message'] = "Evidência de {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#info"] = {
            ['title'] = "INFORMAÇÃO",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#noResultFound"] = {
            ['title'] = "INFORMAÇÃO",
            ['message'] = "Nenhum resultado encontrado.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#infoDrug"] = {
            ['title'] = "INFORMAÇÃO",
            ['message'] = "Químicos: {{msg}} Álcool: {{msg2}} Drogas: {{msg3}}",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#engineLimit"] = {
            ['title'] = "VEÍCULO",
            ['message'] = "Limite do motor atingido.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongEngineModel"] = {
            ['title'] = "Veículo",
            ['message'] = "Modelo do motor incorreto.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#goToMechanics"] = {
            ['title'] = "Veículo",
            ['message'] = "Dirige-te até uma oficina e faz uma revisão.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#brakeLimit"] = {
            ['title'] = "Veículo",
            ['message'] = "Limite do travão atingido.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongBrakeModel"] = {
            ['title'] = "Veículo",
            ['message'] = "Modelo do travão incorreto.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#transmissionLimit"] = {
            ['title'] = "Veículo",
            ['message'] = "Limite da transmissão atingido.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongTransmissionModel"] = {
            ['title'] = "Veículo",
            ['message'] = "Modelo da transmissão incorreto.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#suspensionLimit"] = {
            ['title'] = "Veículo",
            ['message'] = "Limite da suspensão atingido.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#wrongSuspensionModel"] = {
            ['title'] = "Veículo",
            ['message'] = "Modelo da suspensão incorreto.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#noSuspensionVeic"] = {
            ['title'] = "Veículo",
            ['message'] = "O veículo {{msg}} não tem suspensão.",
            ['type'] = "Mechanic",
            ['duration'] = 5000
        },
        ["#cannotUseItemLP"] = {
            ['title'] = "Lockpick",
            ['message'] = "Não podes usar este item fora do Modo Guerra.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#noPermissionMec"] = {
            ['title'] = "OFICINA",
            ['message'] = "Não tens permissão para fazer isso.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#youMissed"] = {
            ['title'] = "Botão",
            ['message'] = "Tens de pressionar o número que aparece no centro no momento certo!",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#signalBlockerInstalled"] = {
            ['title'] = "Sinal",
            ['message'] = "Bloqueador de sinal instalado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#signalBlockerAlreadyInstalled"] = {
            ['title'] = "Sinal",
            ['message'] = "Bloqueador de sinal já instalado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#uHaveActiveContract"] = {
            ['title'] = "Contrato",
            ['message'] = "Tens um contrato ativo.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#notEnoughPolice"] = {
            ['title'] = "Policiais",
            ['message'] = "Policiais insuficientes.",
            ['type'] = "Police",
            ['duration'] = 5000
        },
        ["#spannerNotFound"] = {
            ['title'] = "Chave Inglesa",
            ['message'] = "Chave inglesa não encontrada.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#invalidPlateName"] = {
            ['title'] = "Placa",
            ['message'] = "O nome da placa é inválido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#plateUsed"] = {
            ['title'] = "Placa",
            ['message'] = "A placa escolhida já pertence a outro veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#plateAtt"] = {
            ['title'] = "Placa",
            ['message'] = "Placa atualizada.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veicModelNotFound"] = {
            ['title'] = "Veículo",
            ['message'] = "Modelo de veículo não encontrado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#hoodUsed"] = {
            ['title'] = "CAPUZ",
            ['message'] = "O capuz foi utilizado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#notHandcuffed"] = {
            ['title'] = "CAPUZ",
            ['message'] = "A pessoa não está algemada.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#itemUsed"] = {
            ['title'] = "Item",
            ['message'] = "{{msg}} utilizado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#communicationRemoved"] = {
            ['title'] = "Comunicação",
            ['message'] = "Todas as comunicações foram removidas.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cantDropThisItemMuni"] = {
            ['title'] = "DROP",
            ['message'] = "Não podes largar este item.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#limitReached"] = {
            ['title'] = "Limite",
            ['message'] = "Limite atingido.",
            ['type'] = "Attention",
            ['duration'] = 3000
        },
        ["#sellDrugWarning"] = {
            ['title'] = "Drogas",
            ['message'] = "Sabias que é possível vender os 03 tipos de droga ao mesmo tempo? Que tal ir negociar algumas?!",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#attVeicLumb"] = {
            ['title'] = "Veículo",
            ['message'] = "Precisas de usar o veículo do lenhador.",
            ['type'] = "Vehicle",
            ['duration'] = 3000
        },
        ["#unsuppWeaponry"] = {
            ['title'] = "Armamento",
            ['message'] = "O armamento não tem suporte para o componente.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#weaponHasComponentEquipped"] = {
            ['title'] = "Armamento",
            ['message'] = "O armamento já tem o componente equipado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#brokeAfterRemoving"] = {
            ['title'] = "Armamento",
            ['message'] = "Após a remoção, o item quebrou.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#crowbarNotFound"] = {
            ['title'] = "Armamento",
            ['message'] = "Pé de cabra não encontrado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#protectedVeic"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo protegido pela seguradora.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#needItemQnt"] = {
            ['title'] = "Item",
            ['message'] = "Necessário possuir {{msg}}x {{msg2}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#noPermission"] = {
            ['title'] = "Permissão",
            ['message'] = "Sem permissão.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#invalidPlate"] = {
            ['title'] = "Desmanche",
            ['message'] = "Placa inválida.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#veicNotFound"] = {
            ['title'] = "Desmanche",
            ['message'] = "Veículo não encontrado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitToCarrySomeone"] = {
            ['title'] = "Carregar",
            ['message'] = "Aguarda {{msg}} segundos para carregar alguém.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#houseLimit"] = {
            ['title'] = "Casas",
            ['message'] = "Já atingiste o limite de casas.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#lockedProperty"] = {
            ['title'] = "Propriedade",
            ['message'] = "Propriedade trancada.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#unlockedProperty"] = {
            ['title'] = "Propriedade",
            ['message'] = "Propriedade destrancada.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#cloAdd"] = {
            ['title'] = "Roupas",
            ['message'] = "{{msg}} adicionado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nameAELocker"] = {
            ['title'] = "Nome",
            ['message'] = "Nome escolhido já existe no teu armário.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cloRemoved"] = {
            ['title'] = "Roupas",
            ['message'] = "{{msg}} removido.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#cloGonne"] = {
            ['title'] = "Roupas",
            ['message'] = "A vestimenta salva não se encontra mais no teu armário.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#skinApllyed"] = {
            ['title'] = "Roupas",
            ['message'] = "{{msg}} aplicado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#invalidModel"] = {
            ['title'] = "Casas",
            ['message'] = "Modelo inválido.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#insideHouseCommand"] = {
            ['title'] = "Casas",
            ['message'] = "Precisas estar dentro de uma residência para realizar este comando.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#shopInsuf"] = {
            ['title'] = "Loja",
            ['message'] = "{{msg}} insuficiente.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#shopWithDiamond"] = {
            ['title'] = "Loja",
            ['message'] = "Compraste {{msg}}x {{msg2}} por {{msg3}} Diamantes.",
            ['type'] = "Payment",
            ['duration'] = 5000
        },
        ["#damagedItemCannotSell"] = {
            ['title'] = "Item",
            ['message'] = "Itens danificados não podem ser vendidos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#cannotPutItem"] = {
            ['title'] = "Porta-malas",
            ['message'] = "Não podes colocar este item.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#noStorage"] = {
            ['title'] = "Armazenamento",
            ['message'] = "Armazenamento proibido.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#notVeicOwner"] = {
            ['title'] = "Porta-malas",
            ['message'] = "Não és o dono do veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#servedTime"] = {
            ['title'] = "Prisão",
            ['message'] = "Cumpriste a tua pena.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#uArrestedPlayer"] = {
            ['title'] = "Prisão",
            ['message'] = "Prendeste {{msg}} por {{msg2}} meses e uma multa de ${{msg3}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#prisonTime"] = {
            ['title'] = "Prisão",
            ['message'] = "Tens {{msg}} minutos de prisão.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#waitToWorkAgain"] = {
            ['title'] = "Trabalho",
            ['message'] = "Precisas esperar {{msg}} segundos para poder trabalhar novamente.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#feedbackWarning"] = {
            ['title'] = "FEEDBACK",
            ['message'] = "Obrigado por nos ajudares a melhorar o servidor, o teu feedback foi enviado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#waitToFeedback"] = {
            ['title'] = "FEEDBACK",
            ['message'] = "Já deste feedback a esse staff esta semana.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#wonMatch"] = {
            ['title'] = "MatchMaking",
            ['message'] = "Venceste a partida e ganhaste {{msg}} Pontos.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#loseMatch"] = {
            ['title'] = "MatchMaking",
            ['message'] = "Perdeste a partida e perdeste {{msg}} Pontos.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#leaveQueue"] = {
            ['title'] = "Matchmaking",
            ['message'] = "Saíste da fila.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#customPeds"] = {
            ['title'] = "Skins",
            ['message'] = "Não tens skins personalizados para utilizar.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#passAtt"] = {
            ['title'] = "Senha",
            ['message'] = "Senha atualizada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#needRangeBT"] = {
            ['title'] = "Range",
            ['message'] = "Necessário possuir entre 4 e 20 números.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#wrongPass"] = {
            ['title'] = "Senha",
            ['message'] = "Senha incorreta.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#increaseCompleted"] = {
            ['title'] = "Aumento",
            ['message'] = "Aumento concluído.",
            ['type'] = "Confirmed",
            ['duration'] = 3000
        },
        ["#AFK"] = {
            ['title'] = "AFK",
            ['message'] = "Estás AFK.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#earthquake"] = {
            ['title'] = "Terremoto",
            ['message'] = "Os geólogos informaram à nossa unidade governamental que foi encontrado um abalo de magnitude 15 na Escala Richter, encontra um abrigo até que o mesmo passe.",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#punishedTemp"] = {
            ['title'] = "Punição",
            ['message'] = "Foste punido temporariamente.",
            ['type'] = "Information",
            ['duration'] = 5000
        },
        ["#banFinished"] = {
            ['title'] = "Ban",
            ['message'] = "O teu tempo de banimento acabou.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#punishmentTime"] = {
            ['title'] = "Ban",
            ['message'] = "Tempo restante do castigo: {{msg}} minutos. Compra a remoção através do comando /removeradv.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cameService"] = {
            ['title'] = "Serviço",
            ['message'] = "Entraste em serviço.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#leaveService"] = {
            ['title'] = "Serviço",
            ['message'] = "Saíste de serviço.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#finishedService"] = {
            ['title'] = "Serviço",
            ['message'] = "Serviços finalizados.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#serviceRemai"] = {
            ['title'] = "Serviço",
            ['message'] = "Restam {{msg}} serviços.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#weightChange"] = {
            ['title'] = "Peso",
            ['message'] = "Peso alterado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repaired"] = {
            ['title'] = "Reparo",
            ['message'] = "Reparado.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#repairWith"] = {
            ['title'] = "Reparo",
            ['message'] = "Só pode ser reparado com {{msg}}.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#cardBlocked"] = {
            ['title'] = "Cartão",
            ['message'] = "Cartão bloqueado.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#addTotem"] = {
            ['title'] = "Totem",
            ['message'] = "Totem adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#totemExist"] = {
            ['title'] = "Totem",
            ['message'] = "Este Totem já existe.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#totemNotFound"] = {
            ['title'] = "Totem",
            ['message'] = "Totem não encontrado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#totemRemoved"] = {
            ['title'] = "Totem",
            ['message'] = "Totem removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#resetBattlePass"] = {
            ['title'] = "BattlePass",
            ['message'] = "Resetaste o Season Pass do passaporte {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#expBattlePass"] = {
            ['title'] = "BattlePass",
            ['message'] = "Recebeste {{msg}} XP no BattlePass por teres ficado 30 minutos online! Aperta F4 e resgata os prémios!",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#battlePassRecived"] = {
            ['title'] = "BattlePass",
            ['message'] = "Recebeste um Season Pass.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#cannotCWCarried"] = {
            ['title'] = "GG",
            ['message'] = "Não podes usar este comando enquanto estás a ser carregado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#diamondRecived"] = {
            ['title'] = "Diamantes",
            ['message'] = "Recebeste 💎 {{msg}} diamantes que podem ser trocados por itens VIP! A cada 10 minutos online, recebes diamantes gratuitamente [mesmo ausente]. Usa o comando /diamantes para aceder à loja!",
            ['type'] = "Payment",
            ['duration'] = 10000
        },
        ["#commandAnswered"] = {
            ['title'] = "Chamado",
            ['message'] = "Este chamado já foi atendido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#hiringPendent"] = {
            ['title'] = "Painel",
            ['message'] = "Contratação pendente.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#NewbieLogin"] = {
            ['title'] = "Painel",
            ['message'] = "Novo Iniciante {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ChangeChestLog"] = {
            ['title'] = "Chest",
            ['message'] = "Log alterada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#ClearFines"] = {
            ['title'] = "Multas",
            ['message'] = "Multas limpas com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#FinishWar"] = {
            ['title'] = "Guerra",
            ['message'] = "Guerra finalizada com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#FinishWarError"] = {
            ['title'] = "Guerra",
            ['message'] = "Guerra inválida.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#ListWar"] = {
            ['title'] = "Lista Guerras",
            ['message'] = "{{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#createCode"] = {
            ['title'] = "Código",
            ['message'] = "Código {{msg}} criado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#redeemedCode"] = {
            ['title'] = "Código",
            ['message'] = "Já resgataste um código.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#codeNfound"] = {
            ['title'] = "Código",
            ['message'] = "Código inválido.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#redeemCode"] = {
            ['title'] = "Código",
            ['message'] = "Resgataste o código {{msg}} com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#pastDaysCode"] = {
            ['title'] = "Código",
            ['message'] = "Não cumpres os requisitos mínimos para resgatar um código.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#boost"] = {
            ['title'] = "Boost",
            ['message'] = "Boost aplicado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#unviableCommand"] = {
            ['title'] = "",
            ['message'] = "Comando indisponível.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#RDM"] = {
            ['title'] = "NOVA DENÚNCIA DE RDM",
            ['message'] = "Jogador {{msg}} denunciou o jogador {{msg2}}.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#resgatePromo"] = {
            ['title'] = "Resgate de promoção",
            ['message'] = "Resgataste a promoção com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#nomeAdicionado"] = {
            ['title'] = "Nome adicionado",
            ['message'] = "Nome adicionado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#nomeRemovido"] = {
            ['title'] = "Nome removido",
            ['message'] = "Nome removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#marcaPontoFarm"] = {
            ['title'] = "Marco ponto de farm",
            ['message'] = "Marcastes o ponto de <b>FARM</b> no mapa.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#tratorParaColetar"] = {
            ['title'] = "Precisas de trator",
            ['message'] = "Precisas de estar num trator para coletar os itens.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#apagueIncendios"] = {
            ['title'] = "Apagar os incêndios",
            ['message'] = "Missão iniciada, vai até ao local marcado no mapa e apaga os incêndios.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#pertoLocalEntrega"] = {
            ['title'] = "Local de entrega",
            ['message'] = "Estás muito perto do local de entrega.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#naoNessaGaragem"] = {
            ['title'] = "Garagem",
            ['message'] = "Este veículo não pode ser retirado nesta garagem.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#alias"] = {
            ['title'] = "Alias",
            ['message'] = "Grupo: <b>{{msg}}</b>",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#aliasNao"] = {
            ['title'] = "Alias não encontrado",
            ['message'] = "Alias não encontrado.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#marqueGPS"] = {
            ['title'] = "GPS",
            ['message'] = "Marca um local no GPS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoAFK"] = {
            ['title'] = "AFK",
            ['message'] = "Já não estás AFK.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#blipOn"] = {
            ['title'] = "Fala",
            ['message'] = "Ativaste o blip de voz.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#blipOff"] = {
            ['title'] = "Não fala",
            ['message'] = "Desativaste o blip de voz.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#apertaTecla"] = {
            ['title'] = "Apertar tecla para vencer",
            ['message'] = "Para vencer, aperta rapidamente a tecla 'E'.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#vcGanhou"] = {
            ['title'] = "Ganhaste",
            ['message'] = "Venceste!",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#vcPerdeu"] = {
            ['title'] = "Perdeste",
            ['message'] = "Perdeste!",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#esperandoOponente"] = {
            ['title'] = "Esperando oponente",
            ['message'] = "À espera de um oponente...",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#mesaCheia"] = {
            ['title'] = "Mesa cheia",
            ['message'] = "A mesa está cheia.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#caboRompeu"] = {
            ['title'] = "Cabos",
            ['message'] = "Os cabos que prendem o veículo romperam-se.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoRebocado"] = {
            ['title'] = "Rebocado",
            ['message'] = "Veículo rebocado com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#semVeiculoReboque"] = {
            ['title'] = "Sem reboque",
            ['message'] = "Não há veículo no reboque.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#foraParaRebocar"] = {
            ['title'] = "Reboque",
            ['message'] = "Precisas estar fora do veículo para rebocar.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#caminhaoReboqueSemEquipamento"] = {
            ['title'] = "Camião reboque",
            ['message'] = "O teu camião de reboque não está equipado para rebocar este veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoDescarregado"] = {
            ['title'] = "Camião reboque",
            ['message'] = "Veículo descarregado com sucesso.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#veiculoReboqueSemRegistro"] = {
            ['title'] = "Camião reboque",
            ['message'] = "O teu veículo não está registado como um camião de reboque oficial.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#vipExpirado"] = {
            ['title'] = "VIP expirado",
            ['message'] = "VIP EXPIRADO.",
            ['type'] = "Information",
            ['duration'] = 60000
        },
        ["#taxaCasas"] = {
            ['title'] = "Taxa",
            ['message'] = "Taxa Casas",
            ['type'] = "House",
            ['duration'] = 60000 * 1
        },
        ["#feedBack"] = {
            ['title'] = "Feedback",
            ['message'] = "{{msg}} <b>[Nota: {{msg2}}]</b>",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#maxCaracteres"] = {
            ['title'] = "REGISTRO",
            ['message'] = "A descrição não pode ultrapassar 255 caracteres.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#safeZone"] = {
            ['title'] = "Safezone",
            ['message'] = "Entraste na zona segura.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#foraSafeZone"] = {
            ['title'] = "Safezone",
            ['message'] = "Saíste da zona segura.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#saiuRadio"] = {
            ['title'] = "RÁDIO",
            ['message'] = "Saíste da rádio.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#getSource2"] = {
            ['title'] = "Source2",
            ['message'] = "Source2:",
            ['type'] = "Information",
            ['duration'] = 30000
        },
        ["#chamouMedico"] = {
            ['title'] = "Chamaste médico",
            ['message'] = "Chamaste um médico, aguarda: {{msg}}",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#naoPodeMexer"] = {
            ['title'] = "Inspect",
            ['message'] = "Não podes fazer isso enquanto estás a ser inspecionado por alguém.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#naoPodeChamarMed"] = {
            ['title'] = "Chamar",
            ['message'] = "Não podes chamar um médico numa área de dominação.",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#marcaGPS"] = {
            ['title'] = "GPS",
            ['message'] = "Marcastes um ponto no GPS.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#facProxima"] = {
            ['title'] = "FAC",
            ['message'] = "FAC mais próxima: <b>{{msg}}</b><br>Distância: <b>{{msg2}}</b>m",
            ['type'] = "Confirmed",
            ['duration'] = 30000
        },
        ["#assumiuControle"] = {
            ['title'] = "Controle",
            ['message'] = "Assumiste o controlo do veículo. Pressiona <green>F</green> para sair.",
            ['type'] = "Vehicle",
            ['duration'] = 8000
        },
        ["#discordAcc"] = {
            ['title'] = "Discord",
            ['message'] = "Discord: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 60000 * 1
        },
        ["#arenaSafeZone"] = {
            ['title'] = "Safezone arena",
            ['message'] = "Entraste na zona segura da arena.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#arenaSafeZoneOff"] = {
            ['title'] = "Safezone arena",
            ['message'] = "Saíste da zona segura da arena.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#quantidadeDogtag"] = {
            ['title'] = "Pista",
            ['message'] = "Tens <b>{{msg}}</b> x Dogtags no teu inventário, tem cuidado, uma localização foi marcada no teu mapa para fazer o depósito seguro das tuas DOGTAGS.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#iniciarDomi"] = {
            ['title'] = "Dominação",
            ['message'] = "Só podes iniciar uma dominação no mundo padrão.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#naoPodeRoubar"] = {
            ['title'] = "Roubar",
            ['message'] = "Não podes roubar este local.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#aguardeDominacao"] = {
            ['title'] = "Dominação",
            ['message'] = "Aguarda {{msg}} segundos para iniciar a dominação, os caixas ainda estão vazios.",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#aguardeDominacaoTerminar"] = {
            ['title'] = "Dominação",
            ['message'] = "Aguarda que a dominação atual termine.",
            ['type'] = "PVP",
            ['duration'] = 8000
        },
        ["#empate"] = {
            ['title'] = "x1",
            ['message'] = "Fim do combate.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#dica"] = {
            ['title'] = "Dica",
            ['message'] = "{{msg}}",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#crimeGPS"] = {
            ['title'] = "Crime GPS",
            ['message'] = "Marcastes o local do crime no teu GPS.",
            ['type'] = "Information",
            ['duration'] = 10000
        },
        ["#notifAdm"] = {
            ['title'] = "Notificação",
            ['message'] = "msg",
            ['type'] = "Warning",
            ['duration'] = 15000
        },
        ["#reiniciaServ"] = {
            ['title'] = "Reinicialização",
            ['message'] = "Servidor em reinicialização, aguarda.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#iniciaTrabalho"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho iniciado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#finalizaTrabalho"] = {
            ['title'] = "Trabalho",
            ['message'] = "Trabalho finalizado.",
            ['type'] = "Work",
            ['duration'] = 3000
        },
        ["#propOwned"] = {
            ['title'] = "Proprietário",
            ['message'] = "{{msg}}",
            ['type'] = "House",
            ['duration'] = 10000
        },
        ["#bauFechadoPadrao"] = {
            ['title'] = "Baú",
            ['message'] = "Não podes abrir este baú fora do mundo Padrão.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#permissaoResetada"] = {
            ['title'] = "Baú",
            ['message'] = "Permissões resetadas com sucesso.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#grupoInvalido"] = {
            ['title'] = "Baú",
            ['message'] = "Grupo inválido.",
            ['type'] = "Chest",
            ['duration'] = 5000
        },
        ["#naoPodeRevistar"] = {
            ['title'] = "Revistar",
            ['message'] = "Não podes revistar uma pessoa que esteja a ser carregada ou esteja a carregar alguém.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#nitroAtivado"] = {
            ['title'] = "Nitro",
            ['message'] = "Nitro ativado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#numeroInvalido"] = {
            ['title'] = "Número",
            ['message'] = "Número inválido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#adquiriuGoldenR"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Golden Retriever.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuRottw"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Rottweiler.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuWesty"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Westy.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPug"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Pug.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuBulldogF"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Bulldog Francês.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuRajah"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Rajah.",
            ['type'] = "Verde",
            ['duration'] = 5000
        },
        ["#adquiriuTigor"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Tigor.",
            ['type'] = "Verde",
            ['duration'] = 5000
        },
        ["#adquiriuLoboSirius"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Lobo Sirius.",
            ['type'] = "Verde",
            ['duration'] = 5000
        },
        ["#adquiriuGalgo"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Galgo.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPastorA"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Pastor Alemão.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuPoodle"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Poodle.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuCaneC"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Cane Corso.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuDoberman"] = {
            ['title'] = "Cachorro",
            ['message'] = "Adquiriste um Doberman.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuGato"] = {
            ['title'] = "Gato",
            ['message'] = "Adquiriste um Gato.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#adquiriuSphynx"] = {
            ['title'] = "Gato",
            ['message'] = "Adquiriste um Sphynx.",
            ['type'] = "Pets",
            ['duration'] = 5000
        },
        ["#propNEncontrada"] = {
            ['title'] = "Propriedades",
            ['message'] = "Propriedade não encontrada.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#semPermissaoSafe"] = {
            ['title'] = "Lockpick",
            ['message'] = "Não podes usar este item dentro de uma Zona Segura.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#carregaMuni"] = {
            ['title'] = "Munição",
            ['message'] = "Depois de equipares as munições, não conseguirás retirá-las da arma.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#naoPodeDesmanche"] = {
            ['title'] = "Desmanche",
            ['message'] = "Este veículo não pode ser desmanchado.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#aguardeDesmanche"] = {
            ['title'] = "Desmanche",
            ['message'] = "Aguarda o desmanche anterior.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#checarPlaca"] = {
            ['title'] = "Desmanche",
            ['message'] = "Erro ao verificar as placas.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#aguardePescaria"] = {
            ['title'] = "Mundo",
            ['message'] = "Aguarda <b>{{msg}} segundos</b> até à próxima pescaria.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#possuiMochila"] = {
            ['title'] = "Mochila",
            ['message'] = "Já possuis essa mochila.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#mochilaAdc"] = {
            ['title'] = "Mochila",
            ['message'] = "Mochila adicionada.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mochilaVip"] = {
            ['title'] = "Mochila",
            ['message'] = "Parece que és VIP, as tuas mochilas foram salvas!",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#mochilaRemovida"] = {
            ['title'] = "Mochila",
            ['message'] = "Mochila removida.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nPossuiMochila"] = {
            ['title'] = "Mochila",
            ['message'] = "Não possuis essa mochila.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#aguardePRoubar"] = {
            ['title'] = "Roubo",
            ['message'] = "Aguarda um pouco para roubar novamente.",
            ['type'] = "Illegal",
            ['duration'] = 5000
        },
        ["#nDonoProp"] = {
            ['title'] = "Propriedade",
            ['message'] = "Não és dono da propriedade.",
            ['type'] = "House",
            ['duration'] = 5000
        },
        ["#poliaNCompra"] = {
            ['title'] = "Polícia",
            ['message'] = "Policiais não podem comprar/vender itens nesta loja.",
            ['type'] = "Police",
            ['duration'] = 5000
        },
        ["#nCVFora"] = {
            ['title'] = "Mundo Padrão",
            ['message'] = "Não podes comprar/vender itens fora do mundo padrão.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#veiculoInvalido"] = {
            ['title'] = "Veículo",
            ['message'] = "Veículo inválido.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#donoVeicAbrir"] = {
            ['title'] = "PORTA-MALAS",
            ['message'] = "Aguarda o dono do veículo abrir o porta-malas.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#longePrisao"] = {
            ['title'] = "Prisão",
            ['message'] = "Não estás perto da prisão.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#playerSolto"] = {
            ['title'] = "Prisão",
            ['message'] = "Cidadão solto da prisão.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#playernPrisao"] = {
            ['title'] = "Prisão",
            ['message'] = "Cidadão não encontrado na prisão.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#paraEquipado"] = {
            ['title'] = "Paraquedas",
            ['message'] = "Paraquedas equipado.",
            ['type'] = "Vehicle",
            ['duration'] = 5000
        },
        ["#semDinheiroOrg"] = {
            ['title'] = "Organização",
            ['message'] = "Não tens dinheiro suficiente no banco da tua organização para criar o evento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#missionNotif"] = {
            ['title'] = "Missão",
            ['message'] = "{{msg}}",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#selecRival"] = {
            ['title'] = "Rival",
            ['message'] = "Seleciona o teu rival.",
            ['type'] = "PVP",
            ['duration'] = 5000
        },
        ["#eventoInic"] = {
            ['title'] = "Evento",
            ['message'] = "Evento iniciado.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#rivalSemDinheiroOrg"] = {
            ['title'] = "Evento",
            ['message'] = "O rival não tem dinheiro suficiente no banco da sua organização para criar o evento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#rivalAceitou"] = {
            ['title'] = "Evento",
            ['message'] = "O rival aceitou o teu pedido.",
            ['type'] = "Party",
            ['duration'] = 5000
        },
        ["#semPets"] = {
            ['title'] = "Pets",
            ['message'] = "Não tens pets!",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#resultsucesso"] = {
            ['title'] = "PETSHOP",
            ['message'] = "{{msg}}",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#resulterro"] = {
            ['title'] = "PETSHOP",
            ['message'] = "{{msg}}",
            ['type'] = "Pets",
            ['duration'] = 15000
        },
        ["#nomeAlterado"] = {
            ['title'] = "Nome",
            ['message'] = "Nome alterado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#grupoAtt"] = {
            ['title'] = "Grupo",
            ['message'] = "Grupo atualizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#segGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Não inseriste o segmento do grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#tipoGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Não inseriste o tipo do grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#urlInvalida"] = {
            ['title'] = "URL",
            ['message'] = "URL inválida (Não utilizes URLs do Discord).",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recrutCriado"] = {
            ['title'] = "Recrutamento",
            ['message'] = "Recrutamento criado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#nGrupoLider"] = {
            ['title'] = "Grupo",
            ['message'] = "Não és o líder do grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#nenhumGrupoL"] = {
            ['title'] = "Grupo",
            ['message'] = "Não és líder de nenhum grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#recrutRemovido"] = {
            ['title'] = "Recrutamento",
            ['message'] = "Recrutamento removido com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#recrutAtt"] = {
            ['title'] = "Recrutamento",
            ['message'] = "Recrutamento atualizado com sucesso.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#semGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Não estás em nenhum grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semPermiGrupo"] = {
            ['title'] = "Grupo",
            ['message'] = "Não tens permissão num grupo.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#localMarcaOrg"] = {
            ['title'] = "LOCALIZAÇÃO",
            ['message'] = "O jogador {{msg}} acabou de marcar a localização da sua organização via recrutamento.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#fome"] = {
            ['title'] = "FOME",
            ['message'] = "Estás a sofrer com fome.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#sede"] = {
            ['title'] = "SEDE",
            ['message'] = "Estás a sofrer com sede.",
            ['type'] = "Warning",
            ['duration'] = 2500
        },
        ["#deuAzar"] = {
            ['title'] = "Azar",
            ['message'] = "Tiveste azar e não ganhaste nada.",
            ['type'] = "Warning",
            ['duration'] = 1000
        },
        ["#apostaMin"] = {
            ['title'] = "Aposta",
            ['message'] = "Aposta mínima de <b>${{msg}}</b>.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#semFichas"] = {
            ['title'] = "Aposta",
            ['message'] = "Fichas insuficientes.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#apostaIndisponivel"] = {
            ['title'] = "Aposta",
            ['message'] = "Aposta indisponível.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#limiteDiario"] = {
            ['title'] = "Limite",
            ['message'] = "Atingiste o limite diário.",
            ['type'] = "Attention",
            ['duration'] = 5000
        },
        ["#dicaMarcar"] = {
            ['title'] = "Marca",
            ['message'] = "Podes usar (/fac {{msg}}) para marcar também.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#playerProxFac"] = {
            ['title'] = "RECRUTAMENTO",
            ['message'] = "O jogador precisa estar próximo da sua facção.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#noSelfPromo"] = {
            ['title'] = "Promoção",
            ['message'] = "Não podes promover-te a ti mesmo.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#noDemoBoss"] = {
            ['title'] = "Promoção",
            ['message'] = "Não podes rebaixar um Chefe.",
            ['type'] = "Work",
            ['duration'] = 5000
        },
        ["#entregaFarm"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Entregaste {{msg}}x {{msg2}} por {{msg3}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#faltaFarm"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Não tens {{msg}} x {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#faltaDinGrupo"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "O teu grupo não tem dinheiro suficiente para comprar {{msg}} x {{msg2}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#minEntrega"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Precisas entregar no mínimo 10x {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#semConfigEntrega"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "O teu grupo não tem configuração de entrega de farm.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#precoAlterado"] = {
            ['title'] = "ENTREGA FARM",
            ['message'] = "Preço de cada 10x farm alterado para R${{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#restartSoon"] = {
            ['title'] = "REINICIAR",
            ['message'] = "O servidor irá reiniciar em breve.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#orgJaAvaliada"] = {
            ['title'] = "Avaliar",
            ['message'] = "Já avaliou a organização <b>{{msg}}</b>, aguarde <b>{{msg2}}</b> para avaliar novamente.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#orgAvaliada"] = {
            ['title'] = "PAINEL",
            ['message'] = "Você avaliou a organização {{msg}} com {{msg}}.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#setClothesEqualOrgM"] = {
            ['title'] = "PAINEL",
            ['message'] = "Alteraste a tua roupa para a roupa masculina da organização {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#setClothesEqualOrgF"] = {
            ['title'] = "PAINEL",
            ['message'] = "Alteraste a tua roupa para a roupa feminina da organização {{msg}}.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#postPassaporte"] = {
            ['title'] = "Passaporte",
            ['message'] = "Post-It do passaporte {{msg}} removido.",
            ['type'] = "Confirmed",
            ['duration'] = 8000
        },
        ["#sistemaOff"] = {
            ['title'] = "Sistema",
            ['message'] = "Sistema indisponível no momento, tenta mais tarde.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#sistemaViolado"] = {
            ['title'] = "Sistema",
            ['message'] = "Sistema violado e as autoridades foram notificadas.",
            ['type'] = "Administration",
            ['duration'] = 8000
        },
        ["#naoPossuiX"] = {
            ['title'] = "Item",
            ['message'] = "Não possuis uma <b>{{msg}}</b>.",
            ['type'] = "Information",
            ['duration'] = 8000
        },
        ["#dinheiroNEncontrado"] = {
            ['title'] = "Dinheiro",
            ['message'] = "Nenhum dinheiro encontrado.",
            ['type'] = "Warning",
            ['duration'] = 8000
        },
        ["#ecAbobora"] = {
            ['title'] = "Halloween",
            ['message'] = "Evento de Halloween <b>ATIVO</b><br><b>Encontra e coleta todas as abóboras de Halloween</b> espalhadas pela cidade.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#coletouTodasAb"] = {
            ['title'] = "Halloween",
            ['message'] = "Coletaste todas as abóboras de Halloween.",
            ['type'] = "Confirmed",
            ['duration'] = 5000
        },
        ["#halloweenStart"] = {
            ['title'] = "Halloween",
            ['message'] = "O evento de Halloween começou, coleta as abóboras para ganhar prêmios.",
            ['type'] = "Party",
            ['duration'] = 15000
        },
        ["#vcColetouAb"] = {
            ['title'] = "Halloween",
            ['message'] = "O evento de Halloween acabou, próximo evento às {{msg}}.",
            ['type'] = "Party",
            ['duration'] = 60000
        },
        ["#moveSuspeita"] = {
            ['title'] = "Movimentação",
            ['message'] = "Movimentação suspeita.",
            ['type'] = "Warning",
            ['duration'] = 5000
        },
        ["#launcher"] = {
            ['title'] = "Launcher",
            ['message'] = "Obrigado por usar o Launcher, já tens acesso a todos os benefícios.",
            ['type'] = "Confirmed",
            ['duration'] = 60000
        },
        ["#ticketParamedic"] = {
            ['title'] = "Paramedic",
            ['message'] = "{{msg}}",
            ['type'] = "Hospital",
            ['duration'] = 5000
        },
        ["#ticketAdmin"] = {
            ['title'] = "Ticket",
            ['message'] = "{{msg}}",
            ['type'] = "Administration",
            ['duration'] = 5000
        },
        ["#notifyAdmin"] = {
            ['title'] = "Notify",
            ['message'] = "{{msg}}",
            ['type'] = "Administration",
            ['duration'] = 15000
        },
        ["#invalidLocation"] = {
            ['title'] = "Localização",
            ['message'] = "Localização inválida.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#noAvailableSeats"] = {
            ['title'] = "Veículo",
            ['message'] = "Não há lugares disponíveis no veículo.",
            ['type'] = "Vehicle",
            ['duration'] = 10000
        },
        ["#ongoingReward"] = {
            ['title'] = "Resgate",
            ['message'] = "Já estás a resgatar um passe, aguarda o fim do processo.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#createevent"] = {
            ['title'] = "Evento",
            ['message'] = "Evento criado com sucesso.",
            ['type'] = "Party",
            ['duration'] = 10000
        },
        ["#errofacradio"] = {
            ['title'] = "PAINEL",
            ['message'] = "Esta organização não possui uma frequência de rádio.",
            ['type'] = "Work",
            ['duration'] = 8000
        },
        ["#noLockpick"] = {
            ['title'] = "Propriedade",
            ['message'] = "Não possuis um lockpick.",
            ['type'] = "Illegal",
            ['duration'] = 8000
        },
        ["#noPermission"] = {
            ['title'] = "Permissão",
            ['message'] = "Não tens permissão para fazer isso.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#cooldownRequests"] = {
            ['title'] = "Cooldown",
            ['message'] = "Aguarda {{msg}} segundos para fazer uma nova solicitação.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#insufficientBankFunds"] = {
            ['title'] = "Banco",
            ['message'] = "Não tens saldo suficiente para pagar a multa.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#vehicleblacklisted"] = {
            ['title'] = "Veículo",
            ['message'] = "Este veículo está na blacklist.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#garage_created"] = {
            ['title'] = "Garagem",
            ['message'] = "Garagem criada e copiada para a sua área de transferência.",
            ['type'] = "Confirmed",
            ['duration'] = 10000
        },
        ["#alreadyInRelationship"] = {
            ['title'] = "Relacionamento",
            ['message'] = "Essa pessoa já está em um relacionamento.",
            ['type'] = "Warning",
            ['duration'] = 10000
        },
        ["#ticketAccepted"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_admin"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para o <b>Admin</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_health"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para o <b>Hospital</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_police"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para a <b>Polícia</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_mechanic"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado para o <b>Mecânico</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_purchases"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado de <b>Compras</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        },
        ["#ticketAccepted_rdm"] = {
            ['title'] = "Chamado",
            ['message'] = "Seu chamado de <b>RDM</b> foi aceito por: {{msg}}",
            ['type'] = "Confirmed",
            ['duration'] = 15000
        }
    }
}

---@param str string The string to parse
---@param args table|nil Optional table of arguments to replace placeholders
---@return string Returns the parsed string
function parseString(str,args)
    local parsed = str
    if str and args then
        if type(args) == "table" then
            for k, v in pairs( args ) do
                parsed = parsed:gsub('{{'..k..'}}',v)
            end
        else
            print("[DEBUG] Invalid args type: " .. type(args).. " - Args: " .. json.encode(args).." - Str: " .. str)
        end
    end
    return parsed
end

---@param key string The notification key to check3
---@param lang string The language to use
---@return boolean Returns true if notification exists, false otherwise
function CheckNotification(key, lang)
    if notifyConfig[lang][key] then
        return true
    else
        print("[DEBUG] Notification not found for key: " .. key.. " - Lang: " .. lang)
        return false
    end
end

---@param key string The notification key to retrieve
---@param args table|nil Optional table of arguments to replace placeholders
---@param lang string The language to use
---@return table Returns the notification config or error message
function _n(key, args, lang)
    if CheckNotification(key, lang) then
        local notify = notifyConfig[lang][key]
        local Title = parseString(notify["title"],args)
        local Message = parseString(notify["message"],args)
        local Css = notify["type"] or "vermelho"
        local Timer = notify["duration"]
        return {
            Title = Title,
            Message = Message,
            Css = Css,
            Timer = Timer
        }
    else
        return false
    end
end

for k, v in pairs(notifyConfig) do
    for k2, v2 in pairs(v) do
        if not CheckNotification(k2,k) then
            print("[DEBUG] Notification not found for key: " .. k2.. " - Lang: " .. k)
        end
    end
end