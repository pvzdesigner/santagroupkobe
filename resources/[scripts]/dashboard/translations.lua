lang = GetConvar("language", "pt-br") or "pt-br"
cityName = GetConvar("cityName", "")
translations = {
    ["en-us"] = {
        ["report"] = "report",
        ["tickets"] = "tickets",
        ["openDashboard"] = "Open the call panel",
        ["cancelCall"] = "Cancel Call",
        ["callAdm"] = "Open Call or Promotion",
        ["openParamedic"] = "Open the medical call panel",
        ["attendReport"] = "[%s] %s attended the REPORT of [%s] | %s",
        ["congratulations"] = "Congratulations",
        ["received"] = "You received",
        ["player_reported"] = "Player %s | %s reported player %s | %s.",
        ["new_rdm_report"] = "NEW RDM REPORT",
        ["illegal_weapon"] = "Illegal weapon use",
        ["vehicle_spawn"] = "Vehicle spawn",
        ["teleport_to_vehicle"] = "Teleport to vehicle",
        ["welcome_to_help_tool"] = "Welcome to the help tool of "..cityName,
        ["help_tool_description"] = "Here you will find answers to the most common questions of our players.",
        ["help_tool_description_2"] = "If you do not find the solution, you can open a call to receive support from our team.",
        ["purchases"] = "You have %s pending calls",
    },
    ["pt-br"] = {
        ["report"] = "denunciar",
        ["tickets"] = "chamados",
        ["openDashboard"] = "Abrir o painel de chamados",
        ["cancelCall"] = "Cancelar Chamado",
        ["callAdm"] = "Abrir Chamado ou Promoção",
        ["openParamedic"] = "Abrir o painel de chamados médicos",
        ["attendReport"] = "[%s] %s atendeu a DENUNCIA de [%s] | %s",
        ["congratulations"] = "Parabéns",
        ["received"] = "Você recebeu",
        ["player_reported"] = "Jogador %s | %s Denunciou o jogador %s | %s.",
        ["new_rdm_report"] = "NOVA DENUNCIA DE RDM",
        ["illegal_weapon"] = "Uso de arma ilegal",
        ["vehicle_spawn"] = "Spawn de veículo",
        ["teleport_to_vehicle"] = "Teleportar para veículo",
        ["welcome_to_help_tool"] = "Bem-vindo à Ferramenta de Ajuda da "..cityName,
        ["help_tool_description"] = "Aqui você encontrará respostas para as dúvidas mais comuns dos nossos jogadores.",
        ["help_tool_description_2"] = "Caso não encontre a solução, você pode abrir um chamado para receber suporte da nossa equipe.",
        ["purchases"] = "Você tem %s chamados pendentes",
    },
    ["pt-pt"] = {
        ["report"] = "denunciar",
        ["tickets"] = "chamados",
        ["openDashboard"] = "Abrir o painel de chamados",
        ["cancelCall"] = "Cancelar Chamado",
        ["callAdm"] = "Abrir Chamado ou Promoção",
        ["openParamedic"] = "Abrir o painel de chamados médicos",
        ["attendReport"] = "[%s] %s atendeu a DENÚNCIA de [%s] | %s",
        ["congratulations"] = "Parabéns",
        ["received"] = "Recebeste",
        ["player_reported"] = "Jogador %s | %s Denunciou o jogador %s | %s.",
        ["new_rdm_report"] = "NOVA DENÚNCIA DE RDM",
        ["illegal_weapon"] = "Uso de arma ilegal",
        ["vehicle_spawn"] = "Spawn de veículo",
        ["teleport_to_vehicle"] = "Teleportar para veículo",
        ["welcome_to_help_tool"] = "Bem-vindo à Ferramenta de Ajuda da "..cityName,
        ["help_tool_description"] = "Aqui você encontrará respostas para as dúvidas mais comuns dos nossos jogadores.",
        ["help_tool_description_2"] = "Caso não encontre a solução, você pode abrir um chamado para receber suporte da nossa equipe.",  
        ["purchases"] = "Você tem %s chamados pendentes",
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