lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["enter_apartment"] = "Enter Apartment",
        ["arena_track"] = "~g~E~w~ - ARENA TRACK ",
        ["deposit_dogtags"] = "~g~E~w~ - DEPOSIT DOGTAGS",
        ["store_dogtags"] = "Store DogTags",
        ["domination"] = "Domination",
        ["init_domination"] = "START DOMINATION",
        ["leaving_track"] = "You are leaving the track",
        ["exiting_track"] = "Exiting Track",
        ["exit_track"] = "exittrack",
        ["team_name"] = "Team name:",
        ["team_ids"] = "Team IDs: Example (1,2,3,4,5)",
        ["spectator_ids"] = "Spectator IDs: Example (1,2,3,4,5)",
        ["world"] = "World:",
        ["event_name"] = "Event name:",
        ["arena_type"] = "Arena type:",
        ["rounds_amount"] = "Number of rounds:",
        ["weapon_type"] = "Type: [Rifle/Pistol]",
        ["internWarning"] = "INTERNAL WARNING",
    },
    ["pt-br"] = {
        ["enter_apartment"] = "Entrar Apartamento",
        ["arena_track"] = "~g~E~w~ - ARENA PISTA ",
        ["deposit_dogtags"] = "~g~E~w~ - DEPOSITAR DOGTAGS",
        ["store_dogtags"] = "Guardar DogTags",
        ["domination"] = "Dominação",
        ["init_domination"] = "INICIAR DOMINAÇÃO",
        ["leaving_track"] = "Você esta saindo da pista",
        ["exiting_track"] = "Saindo Pista",
        ["exit_track"] = "sairpista",
        ["team_name"] = "Nome do time:",
        ["team_ids"] = "Ids para o time: Exemplo (1,2,3,4,5)",
        ["spectator_ids"] = "Ids Espectadores: Exemplo (1,2,3,4,5)",
        ["world"] = "Mundo:",
        ["event_name"] = "Nome do evento:",
        ["arena_type"] = "Tipo de arena:",
        ["rounds_amount"] = "Quantidade de rounds:",
        ["weapon_type"] = "Tipo: [Rifle/Pistola]",
        ["internWarning"] = "AVISO INTERNO",
    },
    ["pt-pt"] = {
        ["enter_apartment"] = "Entrar Apartamento",
        ["arena_track"] = "~g~E~w~ - ARENA PISTA",
        ["deposit_dogtags"] = "~g~E~w~ - DEPOSITAR DOGTAGS",
        ["store_dogtags"] = "Guardar DogTags",
        ["domination"] = "Dominação",
        ["init_domination"] = "INICIAR DOMINAÇÃO",
        ["leaving_track"] = "Você está saindo da pista",
        ["exiting_track"] = "Saindo Pista",
        ["exit_track"] = "sairpista",
        ["team_name"] = "Nome do time:",
        ["team_ids"] = "Ids para o time: Exemplo (1,2,3,4,5)",
        ["spectator_ids"] = "Ids Espectadores: Exemplo (1,2,3,4,5)",
        ["world"] = "Mundo:",
        ["event_name"] = "Nome do evento:",
        ["arena_type"] = "Tipo de arena:",
        ["rounds_amount"] = "Quantidade de rounds:",
        ["weapon_type"] = "Tipo: [Rifle/Pistola]",
        ["internWarning"] = "AVISO INTERNO",
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