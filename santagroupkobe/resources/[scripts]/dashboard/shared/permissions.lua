---@class Permissions
Permissions = {
    ["tickets_admin"] = {
        ["Admin"] = 5,
        ["Intercambio"] = 5,
        ["Festival"] = 5,
        ["Resenha"] = 1,
    },
    ["tickets_health"] = {
        ["Paramedic"] = 5,
        ["Bombeiros"] = 5,
    },
    ["tickets_police"] = {
        ["Policia"] = 5,
    },
    ["tickets_mechanic"] = {
        ["Mechanic"] = 5,
    },
    ["tickets_purchases"] = {
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
        ["Admin"] = 2,
    },
    ["wallstreet_dashboard"] = {
        ["Admin"] = 3,
        ["WallStreet"] = 5,
    },
    ["groups"] = {
        ["Admin"] = 5,
        ["WallStreet"] = 5,
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
        ["gestaoinfluencer"] = 3,
        ["Festival"] = 5,
        ["Resenha"] = 1,
        ["EquipeQA"] = 3,
    },
    ["suspects"] = {
        ["Admin"] = 5,
        ["WallStreet"] = 5,
        ["Afiliado"] = 5,
    },
    ["rdm"] = {
        ["Admin"] = 5,
        ["Intercambio"] = 5,
        ["Afiliado"] = 5,
    },
    ["tickets_rdm"] = {
        ["Admin"] = 5,
        ["Intercambio"] = 5,
        ["Afiliado"] = 5,
    },
    ["clients"] = {
        ["Admin"] = 2,
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
    },
    ["spectate"] = {
        ["Admin"] = 3,
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
        ["WallStreet"] = 5,
        ["EquipeQA"] = 1,
    },
    ["teleport"] = {
        ["Admin"] = 5,
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
        ["WallStreet"] = 5,
        ["EquipeQA"] = 3,
    },
    ["copyId"] = {
        ["Admin"] = 5,
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
        ["WallStreet"] = 5,
        ["gestaoinfluencer"] = 3,
        ["Festival"] = 5,
        ["Resenha"] = 5,
        ["EquipeQA"] = 3,
    },
    ["cancel"] = {
        ["Admin"] = 3,
        ["Afiliado"] = 5,
        ["Comercial"] = 5,
        ["WallStreet"] = 5,
        ["Policia"] = 1,
        ["Bombeiros"] = 1,
        ["Paramedic"] = 1,
        ["Mechanic"] = 1,
    },
    ["commercial"] = {
        ["Comercial"] = 5,
        ["Admin"] = 1,
        ["Afiliado"] = 5,
    },
    ["ranking"] = {
        ["Admin"] = 5,
        ["Intercambio"] = 5,
        ["Festival"] = 5,
        ["Resenha"] = 1,
    },
    ["configure"] = {
        ["Admin"] = 2,
    },
}

CheckGroups = {
    ["Admin"] = true,
    ["WallStreet"] = true,
    ["Intercambio"] = true,
    ["Afiliado"] = true,
    ["Bombeiros"] = true,
    ["Policia"] = true,
    ["Mechanic"] = true,
    ["gestaoinfluencer"] = true,
    ["Festival"] = true,
    ["Resenha"] = true,
    ["EquipeQA"] = true,
}

---@class TicketsTypes
TicketsTypes = {
    'admin',
    'health',
    'police',
    'mechanic',
    'purchases',
    'rdm',
}