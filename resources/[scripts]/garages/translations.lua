lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["openGarages"] = "Open Garage",
        ["plate"] = "plate",
        ["buyVehicleRequest"] = "Buy %s for $%s?",
        ["buyVehicleYes"] = "Yes, complete payment",
        ["buyVehicleNo"] = "No, changed my mind",
        ["days"] = "Days",
        ["hours"] = "Hours",
        ["minutes"] = "Minutes",
        ["seconds"] = "Seconds",
    },

    ["pt-br"] = {
        ["openGarages"] = "Abrir Garagem",
        ["plate"] = "placa",
        ["buyVehicleRequest"] = "Comprar %s por $%s?",
        ["buyVehicleYes"] = "Sim, concluír pagamento",
        ["buyVehicleNo"] = "Não, mudei de ideia",
        ["days"] = "Dias",
        ["hours"] = "Horas",
        ["minutes"] = "Minutos",
        ["seconds"] = "Segundos",
    },

    ["pt-pt"] = {
        ["openGarages"] = "Abrir Garagem",
        ["plate"] = "matrícula",
        ["buyVehicleRequest"] = "Comprar %s por $%s?",
        ["buyVehicleYes"] = "Sim, concluir pagamento",
        ["buyVehicleNo"] = "Não, mudei de ideia",
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