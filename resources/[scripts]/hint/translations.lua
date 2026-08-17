lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["title"] = "Objective",
        ["hide"] = {
            ["name"] = "Hint",
            ["description"] = "Hide Hint",
            ["defaultKey"] = "H"
        },
        ["testCommand"] = {
            ["name"] = "Hint",
            ["description"] = "Lorem <br> consectetur."
        }
    },
    ["pt-br"] = {
        ["title"] = "Objetivo",
        ["hide"] = {
            ["name"] = "Dica",
            ["description"] = "Esconder Dica",
            ["defaultKey"] = "H"
        },
        ["testCommand"] = {
            ["name"] = "Dica",
            ["description"] = "Lorem <br> consectetur."
        }
    },
    ["pt-pt"] = {
        ["title"] = "Objetivo",
        ["hide"] = {
            ["name"] = "Dica",
            ["description"] = "Esconder Dica",
            ["defaultKey"] = "H"
        },
        ["testCommand"] = {
            ["name"] = "Dica",
            ["description"] = "Lorem <br> consectetur."
        }
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