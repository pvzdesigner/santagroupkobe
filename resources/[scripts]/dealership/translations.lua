lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["dealership"] = "Open Dealership",
        
        -- Purchase Dialog
        ["purchase_vehicle_prompt"] = "Do you want to open the store to purchase the vehicle?",
        ["yes"] = "Yes",
        ["no"] = "No",
        
        -- Test Drive Dialog
        ["test_drive_prompt"] = "Start the test drive",
        ["test_drive_accept"] = "Yes, start test",
        ["test_drive_decline"] = "No, I'll come back later",
    },
    
    ["pt-br"] = {
        ["dealership"] = "Abrir Concessionaria",
        
        -- Purchase Dialog
        ["purchase_vehicle_prompt"] = "Deseja abrir a loja para efetuar a compra do veiculo?",
        ["yes"] = "Sim",
        ["no"] = "Não",
        
        -- Test Drive Dialog
        ["test_drive_prompt"] = "Iniciar o teste",
        ["test_drive_accept"] = "Sim, iniciar o teste",
        ["test_drive_decline"] = "Não, volto depois",
    },

    ["pt-pt"] = {
        ["dealership"] = "Abrir Concessionário",
        
        -- Purchase Dialog
        ["purchase_vehicle_prompt"] = "Deseja abrir a loja para efetuar a compra do veículo?",
        ["yes"] = "Sim",
        ["no"] = "Não",
        
        -- Test Drive Dialog
        ["test_drive_prompt"] = "Iniciar o teste",
        ["test_drive_accept"] = "Sim, iniciar o teste",
        ["test_drive_decline"] = "Não, volto depois",
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