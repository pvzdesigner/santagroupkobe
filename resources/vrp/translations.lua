lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["Cancel"] = "Cancel all actions.",
        ["HandsUp"] = "Raise hands.",
        ["Point"] = "Point fingers.",
        ["Engine"] = "Start the vehicle.",
        ["Binds 1"] = "Button 1 interaction.",
        ["Binds 2"] = "Button 2 interaction.",
        ["Binds 3"] = "Button 3 interaction.",
        ["Binds 4"] = "Button 4 interaction.",
        ["Binds 5"] = "Button 5 interaction.",
        ["Binds 6"] = "Button 6 interaction.",
        ["Binds 7"] = "Button 7 interaction.",
        ["Binds 8"] = "Button 8 interaction.",
        ["Binds 9"] = "Button 9 interaction.",
        ["Binds left"] = "Left arrow interaction.",
        ["Binds right"] = "Right arrow interaction.",
        ["Binds up"] = "Up arrow interaction.",
        ["Binds down"] = "Down arrow interaction.",
        ["Lock"] = "Lock/Unlock the vehicle.",
        ["City"] = "City",
        ["EnterDiscord"] = "JOIN DISCORD",
        ["ConnectCity"] = "CONNECT TO CITY",
        ["kickallMessage"] = "The city restarted, close and open your FiveM again before trying to log in!",
        ["days"] = "Days",
        ["hours"] = "Hours",
        ["minutes"] = "Minutes",
        ["seconds"] = "Seconds",
    },

    ["pt-br"] = {
        ["Cancel"] = "Cancelar todas as ações.",
        ["HandsUp"] = "Levantar as mãos.",
        ["Point"] = "Apontar os dedos.",
        ["Engine"] = "Ligar o veículo.",
        ["Binds 1"] = "Interação do botão 1.",
        ["Binds 2"] = "Interação do botão 2.",
        ["Binds 3"] = "Interação do botão 3.",
        ["Binds 4"] = "Interação do botão 4.",
        ["Binds 5"] = "Interação do botão 5.",
        ["Binds 6"] = "Interação do botão 6.",
        ["Binds 7"] = "Interação do botão 7.",
        ["Binds 8"] = "Interação do botão 8.",
        ["Binds 9"] = "Interação do botão 9.",
        ["Binds left"] = "Interação da seta esquerda.",
        ["Binds right"] = "Interação da seta direita.",
        ["Binds up"] = "Interação da seta pra cima.",
        ["Binds down"] = "Interação da seta pra baixo.",
        ["Lock"] = "Trancar/Destrancar o veículo.",
        ["City"] = "Cidade",
        ["EnterDiscord"] = "ENTRAR NO DISCORD",
        ["ConnectCity"] = "CONECTAR NA CIDADE",
        ["kickallMessage"] = "A cidade reiniciou, feche e abra novamente seu FiveM antes de tentar relogar!",
        ["days"] = "Dias",
        ["hours"] = "Horas",
        ["minutes"] = "Minutos",
        ["seconds"] = "Segundos",
    },

    ["pt-pt"] = {
        ["Cancel"] = "Cancelar todas as ações.",
        ["HandsUp"] = "Levantar as mãos.",
        ["Point"] = "Apontar os dedos.",
        ["Engine"] = "Ligar o veículo.",
        ["Binds 1"] = "Interação do botão 1.",
        ["Binds 2"] = "Interação do botão 2.",
        ["Binds 3"] = "Interação do botão 3.",
        ["Binds 4"] = "Interação do botão 4.",
        ["Binds 5"] = "Interação do botão 5.",
        ["Binds 6"] = "Interação do botão 6.",
        ["Binds 7"] = "Interação do botão 7.",
        ["Binds 8"] = "Interação do botão 8.",
        ["Binds 9"] = "Interação do botão 9.",
        ["Binds left"] = "Interação da seta esquerda.",
        ["Binds right"] = "Interação da seta direita.",
        ["Binds up"] = "Interação da seta para cima.",
        ["Binds down"] = "Interação da seta para baixo.",
        ["Lock"] = "Trancar/Destrancar o veículo.",
        ["City"] = "Cidade",
        ["EnterDiscord"] = "ENTRAR NO DISCORD",
        ["ConnectCity"] = "CONECTAR NA CIDADE",
        ["kickallMessage"] = "A cidade reiniciou, fecha e abre novamente o teu FiveM antes de tentares relogar!",
        ["days"] = "Dias",
        ["hours"] = "Horas",
        ["minutes"] = "Minutos",
        ["seconds"] = "Segundos",
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