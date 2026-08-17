cityName = GetConvar("cityName", "")
banConfig = {
    ["ADV"] = {
        ["Heading"] = _t("warn_user"),
        ["Button"] = _t("warn_button"),
        ["Info"] = {
            { name = _t("select_option"), value = "1", fine = 5000 },
            { name = _t("warn_looting"), value = "120", fine = 5000 },
            { name = _t("warn_force_rp"), value = "120", fine = 5000 },
            { name = _t("warn_anti_rp"), value = "720", fine = 5000 },
            { name = _t("warn_no_faction"), value = "120", fine = 5000 },
            { name = _t("warn_rdm"), value = "720", fine = 5000 },
            { name = _t("warn_toxic"), value = "720", fine = 5000 },
            { name = _t("warn_vdm"), value = "720", fine = 5000 },
            { name = _t("warn_no_value_life"), value = "250", fine = 5000 },
            { name = _t("warn_combat_logging"), value = "720", fine = 5000 },
            { name = _t("warn_meta_gaming"), value = "600", fine = 5000 },
            { name = _t("warn_cop_bait"), value = "600", fine = 5000 },
            { name = _t("warn_revenge_kill"), value = "600", fine = 5000 },
            { name = _t("warn_return_action"), value = "600", fine = 5000 },
            { name = _t("warn_bug_abuse"), value = "600", fine = 5000 },
        },

    },
    ["BAN"] = {
        ["Heading"] = _t("ban_user"),
        ["Button"] = _t("ban_button"),
        ["Info"] = {
            { name = _t("select_option"), value = "1" },
            { name = _t("ban_swearing"), value = "99999" },
            { name = _t("ban_disrespect"), value = "99999" },
            { name = _t("ban_illegal_programs"), value = "99999" },
            { name = _t("ban_dark_rp"), value = "99999" },
            { name = _t("ban_hacker"), value = "99999" },
        }
    }
}

if cityName == "Santa" then
    banConfig["ADV"]["Info"] = {
        { name = _t("select_option"), value = "1", fine = 5000 },
        { name = "Nivel 1", value = "240", fine = 5000 },
        { name = "Nivel 2", value = "360", fine = 5000 },
        { name = "Nivel 3", value = "720", fine = 5000 },
        { name = _t("warn_rdm"), value = "720", fine = 5000 },
        { name = _t("warn_vdm"), value = "720", fine = 5000 },
        { name = "CL", value = "720", fine = 5000 },
        { name = "Puxar ação sem realiza-la", value = "100", fine = 5000 },
        { name = "Abuso de bug", value = "1000", fine = 5000 },
    }

elseif cityName == "Nobre" then
    banConfig["ADV"]["Info"] = {
        { name = _t("select_option"), value = "1", fine = 5000 },
        { name = _t("warn_force_rp"), value = "120", fine = 5000 },
        { name = _t("warn_anti_rp"), value = "720", fine = 5000 },
        { name = _t("warn_no_faction"), value = "120", fine = 5000 },
        { name = _t("warn_rdm"), value = "720", fine = 5000 },
        { name = _t("warn_toxic"), value = "720", fine = 5000 },
        { name = _t("warn_vdm"), value = "720", fine = 5000 },
        { name = _t("warn_no_value_life"), value = "250", fine = 5000 },
        { name = _t("warn_combat_logging"), value = "720", fine = 5000 },
        { name = _t("warn_meta_gaming"), value = "600", fine = 5000 },
        { name = _t("warn_cop_bait"), value = "600", fine = 5000 },
        { name = _t("warn_revenge_kill"), value = "600", fine = 5000 },
        { name = _t("warn_return_action"), value = "600", fine = 5000 },
        { name = _t("warn_bug_abuse"), value = "600", fine = 5000 },
    }

elseif cityName == "Alexandria" then
    banConfig["ADV"]["Info"] = {
        { name = _t("select_option"), value = "1", fine = 5000 },
        { name = _t("warn_rdm"), value = "240", fine = 5000 },
        { name = _t("warn_vdm"), value = "240", fine = 5000 },
        { name = "CL", value = "360", fine = 5000 },
        { name = "Horário pacificado", value = "120", fine = 5000 },
        { name = "Quebra de regras", value = "120", fine = 5000 },
        { name = "Ação sem identificação", value = "120", fine = 5000 },
        { name = "Fuzil sul", value = "120", fine = 5000 },
        { name = _t("warn_toxic"), value = "360", fine = 5000 },
        { name = "Quebra de regras FacXFac", value = "180", fine = 5000 },
        { name = "Nível 5", value = "720", fine = 5000 },
    }
end