lang = GetConvar("language", "pt-br") or "pt-br"
translations = {
    ["en-us"] = {
        ["passportLabel"] = "Passport:",
        ["priceLabel"] = "Price to charge: (minimum %s gems, 10%% fee)",
        ["transferConfirm"] = "Transfer skin %s to %s %s for %s Gems?",
        ["acceptTransfer"] = "Accept skin %s from %s %s for %s Gems?",
        ["purchaseConfirm"] = "Purchase %s for $%s gems?",
        ["rarity_legendary"] = "Legendary",
        ["rarity_epic"] = "<b1>Epic</b1>",
        ["rarity_rare"] = "<b2>Rare</b2>",
        ["rarity_normal"] = "Normal",
        ["skin_equipped"] = "Equipped",
        ["skin_unequipped"] = "Unequipped"
    },
    
    ["pt-br"] = {
        ["passportLabel"] = "Passaporte:",
        ["priceLabel"] = "Valor a ser cobrado: (valor mínimo %s gems, taxa de 10%%)",
        ["transferConfirm"] = "Transferir a skin %s para %s %s no valor de %s Gemas?",
        ["acceptTransfer"] = "Aceitar a skin %s de %s %s no valor de %s Gemas?",
        ["purchaseConfirm"] = "Comprar %s por $%s gemas?",
        ["rarity_legendary"] = "Lendária",
        ["rarity_epic"] = "<b1>Épica</b1>",
        ["rarity_rare"] = "<b2>Rara</b2>",
        ["rarity_normal"] = "Normal",
        ["skin_equipped"] = "Equipada",
        ["skin_unequipped"] = "Desequipada"
    },

    ["pt-pt"] = {
        ["passportLabel"] = "Passaporte:",
        ["priceLabel"] = "Valor a ser cobrado: (valor mínimo %s gemas, taxa de 10%%)",
        ["transferConfirm"] = "Transferir a skin %s para %s %s no valor de %s Gemas?",
        ["acceptTransfer"] = "Aceitar a skin %s de %s %s no valor de %s Gemas?",
        ["purchaseConfirm"] = "Comprar %s por $%s gemas?",
        ["rarity_legendary"] = "Lendária",
        ["rarity_epic"] = "<b1>Épica</b1>",
        ["rarity_rare"] = "<b2>Rara</b2>",
        ["rarity_normal"] = "Normal",
        ["skin_equipped"] = "Equipada",
        ["skin_unequipped"] = "Desequipada"
    }
    
}

-- Helper function to get rarity translation
function GetRarityLabel(rarity)
    local rarityKey = "rarity_" .. string.lower(rarity)
    if CheckTranslation(rarityKey) then
        return _t(rarityKey)
    else
        return rarity -- Fallback to original value if translation not found
    end
end

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