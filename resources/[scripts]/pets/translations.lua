lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["getup"] = "Get up",
        ["sit"] = "Sit",
        ["sleep"] = "Sleep",
        ["enterCar"] = "Get into car",
        ["follow"] = "Follow",
        ["guard"] = "Guard",
        ["exitCar"] = "Get pet out of car",
        ["changeName"] = "Change pet name",
    },

    ["pt-br"] = {
        ["getup"] = "Levantar",
        ["sit"] = "Sentar",
        ["sleep"] = "Dormir",
        ["enterCar"] = "Entrar no carro",
        ["follow"] = "Seguir",
        ["guard"] = "Guardar",
        ["exitCar"] = "Retirar Pet",
        ["changeName"] = "Mudar Nome",
    },

    ["pt-pt"] = {
        ["getup"] = "Levantar",
        ["sit"] = "Sentar",
        ["sleep"] = "Dormir",
        ["enterCar"] = "Entrar no carro",
        ["follow"] = "Seguir",
        ["guard"] = "Guardar",
        ["exitCar"] = "Retirar Pet",
        ["changeName"] = "Mudar Nome",
    }
    
}

---@param key string The translation key to check
---@return boolean Returns true if translation exists, false otherwise
function CheckTranslation(key)
    if not translations[lang] then
        print("[DEBUG] Translation not found for Lang: " .. lang)
        return false
    end
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