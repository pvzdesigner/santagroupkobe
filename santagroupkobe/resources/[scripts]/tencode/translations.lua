lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["closegang"] = "closegang",
        ["gang"] = "gang",
        ["gangFree"] = "Free Gang- Claim it on Discord | Call 'Gang Support'",
        ["callmedic"] = "Call Medic.",
        ["enterTencodes"] = "Handle police codes.",
        ["toggleRadar"] = "Toggle vehicle radar.",
        ["toggleFreeze"] = "Lock/Unlock vehicle radar.",
    },

    ["pt-br"] = {
        ["closegang"] = "facperto",
        ["gang"] = "fac",
        ["gangFree"] = "Fac Livre - Assuma no Discord | Call 'Pegar Fac'",
        ["callmedic"] = "Chamar Medico.",
        ["enterTencodes"] = "Manusear o código policial.",
        ["toggleRadar"] = "Ativar/Desativar radar das viaturas.",
        ["toggleFreeze"] = "Travar/Destravar radar das viaturas.",
    },

    ["pt-pt"] = {
        ["closegang"] = "facperto",
        ["gang"] = "fac",
        ["gangFree"] = "Fac Livre - Assuma no Discord | Chame 'Pegar Fac'",
        ["callmedic"] = "Chamar Médico.",
        ["enterTencodes"] = "Manusear o código policial.",
        ["toggleRadar"] = "Ativar/Desativar radar das viaturas.",
        ["toggleFreeze"] = "Travar/Destravar radar das viaturas.",
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