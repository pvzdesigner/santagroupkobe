lang = GetConvar("language", "pt-br") or "pt-br"

translations = {
    ["en-us"] = {
        ["admin_question_1"] = "Your issue wasn't resolved? How about explaining your feedback better?",
        ["admin_question_2"] = "Your issue wasn't resolved? How about explaining your feedback better?",
        ["admin_question_3"] = "Your issue wasn't resolved? How about explaining your feedback better?",
        ["admin_question_4"] = "Your issue wasn't resolved? How about explaining your feedback better?",
        ["admin_question_5"] = "Your issue wasn't resolved? How about explaining your feedback better?",
        ["admin_question_6"] = "Your issue wasn't resolved? How about explaining your feedback better?",
        ["admin_question_7"] = "How about leaving your feedback for city improvement?",
        ["admin_question_8"] = "How about leaving your feedback for city improvement?",
        ["admin_question_9"] = "Was your issue resolved? How about giving us feedback on the service?",
        ["admin_question_10"] = "Was your issue resolved? How about giving us feedback on the service?",
        ["default_question_1"] = "What do you think needs improvement in the city?",
        ["default_question_2"] = "What do you think needs improvement in the city?",
        ["default_question_3"] = "What do you think needs improvement in the city?",
        ["default_question_4"] = "What do you think needs improvement in the city?",
        ["default_question_5"] = "What do you think needs improvement in the city?",
        ["default_question_6"] = "What do you think needs improvement in the city?",
        ["default_question_7"] = "How about leaving your feedback for city improvement?",
        ["default_question_8"] = "How about leaving your feedback for city improvement?",
        ["default_question_9"] = "What made you decide to stay in the city?",
        ["default_question_10"] = "What made you decide to stay in the city?",
        ["rateCity"] = "Would you like to rate the city?",
    },
    ["pt-br"] = {
        ["admin_question_1"] = "Seu problema não foi resolvido? Que tal explicar melhor seu feedback?",
        ["admin_question_2"] = "Seu problema não foi resolvido? Que tal explicar melhor seu feedback?",
        ["admin_question_3"] = "Seu problema não foi resolvido? Que tal explicar melhor seu feedback?",
        ["admin_question_4"] = "Seu problema não foi resolvido? Que tal explicar melhor seu feedback?",
        ["admin_question_5"] = "Seu problema não foi resolvido? Que tal explicar melhor seu feedback?",
        ["admin_question_6"] = "Seu problema não foi resolvido? Que tal explicar melhor seu feedback?",
        ["admin_question_7"] = "Que tal deixar seu feedback para melhoria da cidade?",
        ["admin_question_8"] = "Que tal deixar seu feedback para melhoria da cidade?",
        ["admin_question_9"] = "Seu problema foi resolvido? Que tal nos deixar um feedback do atendimento?",
        ["admin_question_10"] = "Seu problema foi resolvido? Que tal nos deixar um feedback do atendimento?",
        ["default_question_1"] = "O que precisa melhorar na cidade na sua opnião?",
        ["default_question_2"] = "O que precisa melhorar na cidade na sua opnião?",
        ["default_question_3"] = "O que precisa melhorar na cidade na sua opnião?",
        ["default_question_4"] = "O que precisa melhorar na cidade na sua opnião?",
        ["default_question_5"] = "O que precisa melhorar na cidade na sua opnião?",
        ["default_question_6"] = "O que precisa melhorar na cidade na sua opnião?",
        ["default_question_7"] = "Que tal deixar seu feedback para melhoria da cidade?",
        ["default_question_8"] = "Que tal deixar seu feedback para melhoria da cidade?",
        ["default_question_9"] = "O que foi que te fez ficar definitivamente na cidade?",
        ["default_question_10"] = "O que foi que te fez ficar definitivamente na cidade?",
        ["rateCity"] = "Gostaria de avaliar a cidade?",
    },
    ["pt-pt"] = {
        ["admin_question_1"] = "O seu problema não foi resolvido? Que tal explicar melhor o seu feedback?",
        ["admin_question_2"] = "O seu problema não foi resolvido? Que tal explicar melhor o seu feedback?",
        ["admin_question_3"] = "O seu problema não foi resolvido? Que tal explicar melhor o seu feedback?",
        ["admin_question_4"] = "O seu problema não foi resolvido? Que tal explicar melhor o seu feedback?",
        ["admin_question_5"] = "O seu problema não foi resolvido? Que tal explicar melhor o seu feedback?",
        ["admin_question_6"] = "O seu problema não foi resolvido? Que tal explicar melhor o seu feedback?",
        ["admin_question_7"] = "Que tal deixar o seu feedback para a melhoria da cidade?",
        ["admin_question_8"] = "Que tal deixar o seu feedback para a melhoria da cidade?",
        ["admin_question_9"] = "O seu problema foi resolvido? Que tal nos deixar um feedback sobre o atendimento?",
        ["admin_question_10"] = "O seu problema foi resolvido? Que tal nos deixar um feedback sobre o atendimento?",
        ["default_question_1"] = "O que precisa melhorar na cidade, na sua opinião?",
        ["default_question_2"] = "O que precisa melhorar na cidade, na sua opinião?",
        ["default_question_3"] = "O que precisa melhorar na cidade, na sua opinião?",
        ["default_question_4"] = "O que precisa melhorar na cidade, na sua opinião?",
        ["default_question_5"] = "O que precisa melhorar na cidade, na sua opinião?",
        ["default_question_6"] = "O que precisa melhorar na cidade, na sua opinião?",
        ["default_question_7"] = "Que tal deixar o seu feedback para a melhoria da cidade?",
        ["default_question_8"] = "Que tal deixar o seu feedback para a melhoria da cidade?",
        ["default_question_9"] = "O que foi que o fez ficar definitivamente na cidade?",
        ["default_question_10"] = "O que foi que o fez ficar definitivamente na cidade?",
        ["rateCity"] = "Gostaria de avaliar a cidade?",
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