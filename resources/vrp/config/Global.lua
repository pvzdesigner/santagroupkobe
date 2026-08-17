-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
Whitelisted = GetConvar("Whitelist", "false")
if Whitelisted == "true" then
    Whitelisted = true
else
    Whitelisted = false
end
SpawnCoords = vec3(-28.08,-145.96,56.99)
cityName = GetConvar("cityName", "")
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAINTENANCE
-----------------------------------------------------------------------------------------------------------------------------------------
Maintenance = false
MaintenanceText = "Servidor reiniciando!"
MaintenanceLicenses = {
	["ce615964a7cee36cc5333f7eb44ea3a29905387d"] = true
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- ARENA (Itens recebidos ao entrar na arena)
-----------------------------------------------------------------------------------------------------------------------------------------
ArenaItens = {
    ["Pistol"] = {
        { ["WEAPON_COMBATPISTOL"] = 1 },
        { ["WEAPON_PISTOL_MK2"] = 1} ,
        { ["WEAPON_PISTOL_AMMO"] = 1000 }
    },
    ["DropKill"] = {
        { ["WEAPON_ASSAULTRIFLE_MK2"] = 1 },
        { ["WEAPON_SPECIALCARBINE_MK2"] = 1 },
        { ["WEAPON_PISTOL_MK2"] =  1 },
        { ["WEAPON_PISTOL_AMMO"] = 250 },
        { ["WEAPON_RIFLE_AMMO"] = 250 },
    },
    ["FFAPistola"] = {
        { ["WEAPON_PISTOL_MK2"] = 1 },
        { ["WEAPON_COMBATPISTOL"] = 1 },
        { ["WEAPON_PISTOL_AMMO"] = 500 }
    },
    ["event_pistola"] = {
        { ["WEAPON_PISTOL_MK2"] = 1 },
        { ["WEAPON_PISTOL_AMMO"] = 500 },
        { ["radio"] = 1 },
    },
    ["event_rifle"] = {
        { ["WEAPON_SPECIALCARBINE_MK2"] = 1 },
        { ["WEAPON_RIFLE_AMMO"] = 500 },
        { ["radio"] = 1 },
    },
    ["FFAFuzil"] = {
        { ["WEAPON_ASSAULTRIFLE_MK2 "] = 1 },
        { ["WEAPON_SPECIALCARBINE_MK2"] = 1 },
        { ["WEAPON_RIFLE_AMMO"] = 500 }
    },
    ["AimNPC"] = {
        { ["WEAPON_PISTOL_MK2"] = 1 },
        { ["WEAPON_PISTOL_AMMO"] = 1000 }
    },
    ["AimLabs"] = {
        { ["WEAPON_PISTOL_MK2"] = 1 },
        { ["WEAPON_PISTOL_AMMO"] = 1000 }
    },
    ["InvasaoFuzil"] = {
        { ["WEAPON_SPECIALCARBINE_MK2"] = 1 },
        { ["WEAPON_ASSAULTRIFLE_MK2 "] = 1 },
        { ["WEAPON_RIFLE_AMMO"] = 15000 },
        { ["cocaine"] = 20 },
        { ["bandage"] = 20 },
        { ["joint"] = 20 },
    },
    ["WorldPVP"] = {
        { ["WEAPON_SPECIALCARBINE_MK2"] = 1 },
        { ["WEAPON_ASSAULTRIFLE_MK2 "] = 1 },
        { ["WEAPON_PISTOL_MK2"] = 1 },
        { ["WEAPON_COMBATPISTOL"] = 1 },
        { ["WEAPON_RIFLE_AMMO"] = 15000 },
        { ["WEAPON_PISTOL_AMMO"] = 15000 },
        { ["cocaine"] = 100 },
        { ["bandage"] = 100 },
        { ["joint"] = 100 },
    },
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHARACTERITENS (Itens recebidos ao criar o personagem)
-----------------------------------------------------------------------------------------------------------------------------------------
CharacterItens = {
    {"cellphone",1},
    {"dollars",25000},
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- GROUPBLIPS
-----------------------------------------------------------------------------------------------------------------------------------------
GroupBlips = {
	["Paramedic"] = true,
    ["Policia"] = true,
    ["Tatica"] = true,
    ["Civil"] = true,
    ["Exercito"] = true,
    ["Prf"] = true,
    ["Militar"] = true,
    ["Federal"] = true
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLIENTSTATE
-----------------------------------------------------------------------------------------------------------------------------------------
ClientState = {
    ["Admin"] = true,
    ["Policia"] = true,
    ["Bombeiros"] = true,
    ["Mechanic"] = true,
    ["Paramedic"] = true,
    ["Barragem"] = true,
    ["Gang9"] = true,
    ["Banzas"] = true,
    ["Dixavas"] = true,
    ["Gang4"] = true,
    ["Sindicato"] = true,
    ["Vagos"] = true,
    ["Umbrella"] = true,
    ["Metgala"] = true,
    ["Afetados"] = true,
    ["Pinkmans"] = true,
    ["Hollywood"] = true,
    ["Azuis"] = true,
    ["Vermelhos"] = true,
    ["Amarelos"] = true,
    ["AlcateiaHsT"] = true,
    ["Verdes"] = true,
    ["Roxos"] = true,
    ["LosAztecas"] = true,
    ["Laranjas"] = true,
    ["Brancos"] = true,
    ["Marrons"] = true,
    ["Cinzas"] = true,
    ["Rosas"] = true,
    ["Ballas"] = true,
    ["Bellagio"] = true,
    ["Lavajato"] = true,
    ["Putaria"] = true,
    ["Tequilas"] = true,
    ["Arcade"] = true,
    ["Callisto"] = true,
    ["Bahamas"] = true,
    ["Palazzo"] = true,
    ["Luxor"] = true,
    ["Groove"] = true,
    ["TopGear"] = true,
    ["FerroVelho"] = true,
    ["Morro-do-Sacola"] = true,
    ["CarClube"] = true,
    ["Virtude"] = true,
    ["Big"] = true,
    ["Kraken"] = true,
    ["Redline"] = true,
    ["Bennys"] = true,
    ["DriftKing"] = true,
    ["Forza"] = true,
    ["Overdrive"] = true,
    ["Anonymous"] = true,
    ["Gang2"] = true,
    ["Tropadu7"] = true,
    ["Tribo"] = true,
    ["Gang6"] = true,
    ["Outlaws"] = true,
    ["SonsofAnarchy"] = true,
    ["Fazendinha"] = true,
    ["Gang3"] = true,
    ["Gang8"] = true,
    ["Gang7"] = true,
    ["Gang5"] = true,
    ["Warlocks"] = true,
    ["Gang1"] = true,
    ["Mercenarios"] = true,
    ["LosTugas"] = true,
    ["Caribe"] = true,
    ["Japao"] = true,
    ["Inglaterra"] = true,
    ["Noxus"] = true,
    ["LaMafia"] = true,
    ["Gringa"] = true,
    ["Franca"] = true,
    ["Italia"] = true,
    ["Russia"] = true,
    ["Israel"] = true,
    ["Jamakeikos"] = true,
    ["Playboy"] = true,
    ["Mexico"] = true,
    ["China"] = true,
    ["Tatica"] = true,
    ["Civil"] = true,
    ["Exercito"] = true,
    ["Militar"] = true,
    ["Federal"] = true,
    ["Prf"] = true,
    ["gestaoinfluencer"] = true,
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- INITIAL
-----------------------------------------------------------------------------------------------------------------------------------------
Initial = {
    [1] = {
        ["skinshop"] = {
            [0] = {
                ["pants"] = { item = 4, texture = 2 },
                ["arms"] = { item = 0, texture = 0 },
                ["tshirt"] = { item = 15, texture = 0 },
                ["torso"] = { item = 22, texture = 0 },
                ["vest"] = { item = 0, texture = 0 },
                ["shoes"] = { item = 14, texture = 7 },
                ["mask"] = { item = 0, texture = 0 },
                ["backpack"] = { item = 0, texture = 0 },
                ["hat"] = { item = -1, texture = 0 },
                ["glass"] = { item = 0, texture = 0 },
                ["ear"] = { item = -1, texture = 0 },
                ["watch"] = { item = -1, texture = 0 },
                ["bracelet"] = { item = -1, texture = 0 },
                ["accessory"] = { item = 0, texture = 0 },
                ["decals"] = { item = 0, texture = 0 }
            },
            [1] = {
                ["pants"] = { item = 0, texture = 8 },
                ["arms"] = { item = 14, texture = 0 },
                ["tshirt"] = { item = 15, texture = 0 },
                ["torso"] = { item = 23, texture = 0 },
                ["vest"] = { item = 0, texture = 0 },
                ["shoes"] = { item = 52, texture = 3 },
                ["mask"] = { item = 0, texture = 0 },
                ["backpack"] = { item = 0, texture = 0 },
                ["hat"] = { item = -1, texture = 0 },
                ["glass"] = { item = 0, texture = 0 },
                ["ear"] = { item = -1, texture = 0 },
                ["watch"] = { item = -1, texture = 0 },
                ["bracelet"] = { item = -1, texture = 0 },
                ["accessory"] = { item = 0, texture = 0 },
                ["decals"] = { item = 0, texture = 0 }
            }
        },
        ["barbershop"] = {
            [0] = { 0,0,0.65,2,12,0,-1,4,-1,45,29,29,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7,0 },
            [1] = { 0,6,0.5,9,0,6,6,7,-1,12,15,29,41,0.99,0,4,0.99,25,0,0.99,15,0,0,0,1,0.13,52,-0.32,0,-1,0,0.2,0,-0.1,-0.14,0,-0.04,0.04,0.02,0.48,0,-1,0,0,-0.08,-0.02,1 }
        }
    },
    [2] = {
        ["skinshop"] = {
            [0] = {
                ["pants"] = { item = 4, texture = 2 },
                ["arms"] = { item = 0, texture = 0 },
                ["tshirt"] = { item = 15, texture = 0 },
                ["torso"] = { item = 22, texture = 0 },
                ["vest"] = { item = 0, texture = 0 },
                ["shoes"] = { item = 14, texture = 7 },
                ["mask"] = { item = 0, texture = 0 },
                ["backpack"] = { item = 0, texture = 0 },
                ["hat"] = { item = -1, texture = 0 },
                ["glass"] = { item = 0, texture = 0 },
                ["ear"] = { item = -1, texture = 0 },
                ["watch"] = { item = -1, texture = 0 },
                ["bracelet"] = { item = -1, texture = 0 },
                ["accessory"] = { item = 0, texture = 0 },
                ["decals"] = { item = 0, texture = 0 }
            },
            [1] = {
                ["pants"] = { item = 0, texture = 8 },
                ["arms"] = { item = 14, texture = 0 },
                ["tshirt"] = { item = 15, texture = 0 },
                ["torso"] = { item = 23, texture = 0 },
                ["vest"] = { item = 0, texture = 0 },
                ["shoes"] = { item = 52, texture = 3 },
                ["mask"] = { item = 0, texture = 0 },
                ["backpack"] = { item = 0, texture = 0 },
                ["hat"] = { item = -1, texture = 0 },
                ["glass"] = { item = 0, texture = 0 },
                ["ear"] = { item = -1, texture = 0 },
                ["watch"] = { item = -1, texture = 0 },
                ["bracelet"] = { item = -1, texture = 0 },
                ["accessory"] = { item = 0, texture = 0 },
                ["decals"] = { item = 0, texture = 0 }
            }
        },
        ["barbershop"] = {
            [0] = { 0,8,0.5,0,3,0,-1,4,-1,73,0,0,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7 },
            [1] = { 0,0,1,8,2,0,-1,-1,-1,25,0,4,6,0.45,2,4,0.99,0,2,0.99,26,0,0,0,1,0.13,10,-0.32,0,-1,0,0.2,0,-0.1,-0.14,0,-0.04,0.04,0.02,0.48,0,-1,0,-0.38,-0.08,-0.02,1 }
        }
    },
}
if cityName == "Maresia" then
    Initial = {
        [1] = {
            ["skinshop"] = {
                [0] = {
                    ["pants"] = { item = 4, texture = 2 },
                    ["arms"] = { item = 0, texture = 0 },
                    ["tshirt"] = { item = 15, texture = 0 },
                    ["torso"] = { item = 22, texture = 0 },
                    ["vest"] = { item = 0, texture = 0 },
                    ["shoes"] = { item = 14, texture = 7 },
                    ["mask"] = { item = 0, texture = 0 },
                    ["backpack"] = { item = 0, texture = 0 },
                    ["hat"] = { item = -1, texture = 0 },
                    ["glass"] = { item = 0, texture = 0 },
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                },
                [1] = {
                    ["pants"] = { item = 0, texture = 8 },
                    ["arms"] = { item = 9, texture = 0 },
                    ["tshirt"] = { item = 15, texture = 0 },
                    ["torso"] = { item = 23, texture = 0 },
                    ["vest"] = { item = 0, texture = 0 },
                    ["shoes"] = { item = 160, texture = 0 },
                    ["mask"] = { item = 0, texture = 0 },
                    ["backpack"] = { item = 0, texture = 0 },
                    ["hat"] = { item = -1, texture = 0 },
                    ["glass"] = { item = 0, texture = 0 },
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                }
            },
            ["barbershop"] = {
                [0] = { 0,0,0.65,2,12,0,-1,4,-1,45,29,29,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7,0 },
                [1] = { 0,6,0.5,9,0,6,6,7,-1,12,15,29,41,0.99,0,4,0.99,25,0,0.99,15,0,0,0,1,0.13,52,-0.32,0,-1,0,0.2,0,-0.1,-0.14,0,-0.04,0.04,0.02,0.48,0,-1,0,0,-0.08,-0.02,1 }
            }
        },
        [2] = {
            ["skinshop"] = {
                [0] = {
                    ["pants"] = { item = 4, texture = 2 },
                    ["arms"] = { item = 0, texture = 0 },
                    ["tshirt"] = { item = 15, texture = 0 },
                    ["torso"] = { item = 22, texture = 0 },
                    ["vest"] = { item = 0, texture = 0 },
                    ["shoes"] = { item = 14, texture = 7 },
                    ["mask"] = { item = 0, texture = 0 },
                    ["backpack"] = { item = 0, texture = 0 },
                    ["hat"] = { item = -1, texture = 0 },
                    ["glass"] = { item = 0, texture = 0 },
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                },
                [1] = {
                    ["pants"] = { item = 0, texture = 8 },
                    ["arms"] = { item = 9, texture = 0 },
                    ["tshirt"] = { item = 15, texture = 0 },
                    ["torso"] = { item = 23, texture = 0 },
                    ["vest"] = { item = 0, texture = 0 },
                    ["shoes"] = { item = 160, texture = 0 },
                    ["mask"] = { item = 0, texture = 0 },
                    ["backpack"] = { item = 0, texture = 0 },
                    ["hat"] = { item = -1, texture = 0 },
                    ["glass"] = { item = 0, texture = 0 },
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                }
            },
            ["barbershop"] = {
                [0] = { 0,8,0.5,0,3,0,-1,4,-1,73,0,0,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7 },
                [1] = { 0,0,1,8,2,0,-1,-1,-1,25,0,4,6,0.45,2,4,0.99,0,2,0.99,26,0,0,0,1,0.13,10,-0.32,0,-1,0,0.2,0,-0.1,-0.14,0,-0.04,0.04,0.02,0.48,0,-1,0,-0.38,-0.08,-0.02,1 }
            }
        },
    }
elseif cityName == "Santa" then
        Initial = {
            [1] = {
                ["skinshop"] = {
                    [0] = {
                        ["pants"] = { item = 31, texture = 0 },
                        ["arms"] = { item = 198, texture = 0 },
                        ["tshirt"] = { item = 15, texture = 0 },
                        ["torso"] = { item = 22, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 26, texture = 2 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                        ["hat"] = { item = -1, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = -1, texture = 0 },
                        ["watch"] = { item = -1, texture = 0 },
                        ["bracelet"] = { item = -1, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 }
                    },
                    [1] = {
                        ["pants"] = { item = 148, texture = 0 },
                        ["arms"] = { item = 14, texture = 0 },
                        ["tshirt"] = { item = 15, texture = 0 },
                        ["torso"] = { item = 23, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 171, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                        ["hat"] = { item = -1, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = -1, texture = 0 },
                        ["watch"] = { item = -1, texture = 0 },
                        ["bracelet"] = { item = -1, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 }
                    }
                },
                ["barbershop"] = {
                    [0] = { 0,0,0.65,2,12,0,-1,4,-1,45,29,29,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7,0 },
                    [1] = { 3,6,1,0,12,0,-1,-1,-1,74,0,4,0,0,2,0,0,0,2,0.99,26,0,0,0,0,0,0,-1,-1,-0.94,-0.31,0.24,0.25,-0.1,-0.79,-0.72,-1,-0.32,-0.61,-0.25,0,-1,0,-0.38,-0.65,-1,1,0,0,0 }
                }
            },
            [2] = {
                ["skinshop"] = {
                    [0] = {
                        ["pants"] = { item = 31, texture = 0 },
                        ["arms"] = { item = 198, texture = 0 },
                        ["tshirt"] = { item = 15, texture = 0 },
                        ["torso"] = { item = 22, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 26, texture = 2 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                        ["hat"] = { item = -1, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = -1, texture = 0 },
                        ["watch"] = { item = -1, texture = 0 },
                        ["bracelet"] = { item = -1, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 }
                    },
                    [1] = {
                        ["pants"] = { item = 148, texture = 0 },
                        ["arms"] = { item = 14, texture = 0 },
                        ["tshirt"] = { item = 15, texture = 0 },
                        ["torso"] = { item = 23, texture = 0 },
                        ["vest"] = { item = 0, texture = 0 },
                        ["shoes"] = { item = 171, texture = 0 },
                        ["mask"] = { item = 0, texture = 0 },
                        ["backpack"] = { item = 0, texture = 0 },
                        ["hat"] = { item = -1, texture = 0 },
                        ["glass"] = { item = 0, texture = 0 },
                        ["ear"] = { item = -1, texture = 0 },
                        ["watch"] = { item = -1, texture = 0 },
                        ["bracelet"] = { item = -1, texture = 0 },
                        ["accessory"] = { item = 0, texture = 0 },
                        ["decals"] = { item = 0, texture = 0 }
                    }
                },
                ["barbershop"] = {
                    [0] = { 0,8,0.5,0,3,0,-1,4,-1,73,0,0,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7 },
                    [1] = { 3,6,1,0,12,0,-1,-1,-1,74,0,4,0,0,2,0,0,0,2,0.99,26,0,0,0,0,0,0,-1,-1,-0.94,-0.31,0.24,0.25,-0.1,-0.79,-0.72,-1,-0.32,-0.61,-0.25,0,-1,0,-0.38,-0.65,-1,1,0,0,0 }
                }
            },
        }
elseif cityName == "Kingdom" then
    Initial = {
        [1] = {
            ["skinshop"] = {
                [0] = {
                    ["pants"] = { item = 28, texture = 0 },
                    ["arms"] = { item = 11, texture = 0 },
                    ["tshirt"] = { item = 32, texture = 0 },
                    ["torso"] = { item = 33, texture = 0 },
                    ["vest"] = { item = 0, texture = 0 },
                    ["shoes"] = { item = 10, texture = 0 },
                    ["mask"] = { item = 0, texture = 0 },
                    ["backpack"] = { item = 0, texture = 0 },
                    ["hat"] = { item = -1, texture = 0 },
                    ["glass"] = { item = 0, texture = 0 },
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                },
                [1] = {
                    ["pants"] = { item = 53, texture = 0 }, -- calças
                    ["arms"] = { item = 14, texture = 0 }, -- mãos
                    ["tshirt"] = { item = 217, texture = 0 }, -- blusa
                    ["torso"] = { item = 17, texture = 0 }, -- jaqueta
                    ["vest"] = { item = 0, texture = 0 }, -- colete
                    ["shoes"] = { item = 101, texture = 0 }, -- sapatos
                    ["mask"] = { item = 0, texture = 0 }, -- mascara
                    ["backpack"] = { item = 0, texture = 0 }, -- mochila
                    ["hat"] = { item = -1, texture = 0 }, -- chapeu
                    ["glass"] = { item = 0, texture = 0 }, 
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                }
            },
            ["barbershop"] = {
                [0] = { 0,0,0.65,2,12,0,-1,4,-1,45,29,29,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7,0 },
                [1] = { 3,6,1,0,12,0,-1,-1,-1,74,0,4,0,0,2,0,0,0,2,0.99,26,0,0,0,0,0,0,-1,-1,-0.94,-0.31,0.24,0.25,-0.1,-0.79,-0.72,-1,-0.32,-0.61,-0.25,0,-1,0,-0.38,-0.65,-1,1,0,0,0 }
            }
        },
        [2] = {
            ["skinshop"] = {
                [0] = {
                    ["pants"] = { item = 28, texture = 0 },
                    ["arms"] = { item = 11, texture = 0 },
                    ["tshirt"] = { item = 32, texture = 0 },
                    ["torso"] = { item = 33, texture = 0 },
                    ["vest"] = { item = 0, texture = 0 },
                    ["shoes"] = { item = 10, texture = 0 },
                    ["mask"] = { item = 0, texture = 0 },
                    ["backpack"] = { item = 0, texture = 0 },
                    ["hat"] = { item = -1, texture = 0 },
                    ["glass"] = { item = 0, texture = 0 },
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                },
                [1] = {
                    ["pants"] = { item = 53, texture = 0 }, -- calças
                    ["arms"] = { item = 14, texture = 0 }, -- mãos
                    ["tshirt"] = { item = 217, texture = 0 }, -- blusa
                    ["torso"] = { item = 17, texture = 0 }, -- jaqueta
                    ["vest"] = { item = 0, texture = 0 }, -- colete
                    ["shoes"] = { item = 101, texture = 0 }, -- sapatos
                    ["mask"] = { item = 0, texture = 0 }, -- mascara
                    ["backpack"] = { item = 0, texture = 0 }, -- mochila
                    ["hat"] = { item = -1, texture = 0 }, -- chapeu
                    ["glass"] = { item = 0, texture = 0 }, 
                    ["ear"] = { item = -1, texture = 0 },
                    ["watch"] = { item = -1, texture = 0 },
                    ["bracelet"] = { item = -1, texture = 0 },
                    ["accessory"] = { item = 0, texture = 0 },
                    ["decals"] = { item = 0, texture = 0 }
                }
            },
            ["barbershop"] = {
                [0] = { 0,8,0.5,0,3,0,-1,4,-1,73,0,0,0,0,0,0,0,0,30,0.99,0,1,0.88,0,-1,0,0,-1,0.84,0.72,0.46,0,0,0.3,-0.3,0,-0.58,-0.72,-0.52,0.21,0.37,0.79,0.6,0.71,0.43,-0.7 },
                [1] = { 3,6,1,0,12,0,-1,-1,-1,74,0,4,0,0,2,0,0,0,2,0.99,26,0,0,0,0,0,0,-1,-1,-0.94,-0.31,0.24,0.25,-0.1,-0.79,-0.72,-1,-0.32,-0.61,-0.25,0,-1,0,-0.38,-0.65,-1,1,0,0,0 }
            }
        },
    }
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- POLICECLEANER
-----------------------------------------------------------------------------------------------------------------------------------------
PoliceCleaner = {
    ["WEAPON_PISTOL"] = true,
    ["WEAPON_PISTOL_MK2"] = true,
    ["WEAPON_COMPACTRIFLE"] = true,
    ["WEAPON_APPISTOL"] = true,
    ["WEAPON_HEAVYPISTOL"] = true,
    ["WEAPON_MACHINEPISTOL"] = true,
    ["WEAPON_MICROSMG"] = true,
    ["WEAPON_NAILGUN"] = true,
    ["WEAPON_MINISMG"] = true,
    ["WEAPON_SNSPISTOL"] = true,
    ["WEAPON_SNSPISTOL_MK2"] = true,
    ["WEAPON_VINTAGEPISTOL"] = true,
    ["WEAPON_PISTOL50"] = true,
    ["WEAPON_REVOLVER"] = true,
    ["WEAPON_COMBATPISTOL"] = true,
    ["WEAPON_FNFAL"] = true,
    ["WEAPON_COLTXM177"] = true,
    ["WEAPON_CARBINERIFLE"] = true,
    ["WEAPON_CARBINERIFLE_MK2"] = true,
    ["WEAPON_ADVANCEDRIFLE"] = true,
    ["WEAPON_BULLPUPRIFLE"] = true,
    ["WEAPON_BULLPUPRIFLE_MK2"] = true,
    ["WEAPON_SPECIALCARBINE"] = true,


    ["WEAPON_TACTICALRIFLE"] = true,
    ["WEAPON_MILITARYRIFLE"] = true,
    ["WEAPON_COMBATMG_MK2"] = true,
    ["WEAPON_TECPISTOL"] = true,
    ["WEAPON_SNIPERRIFLE"] = true,

    ["WEAPON_SPECIALCARBINE_MK2"] = true,
    ["WEAPON_PARAFAL"] = true,
    ["WEAPON_PUMPSHOTGUN"] = true,
    ["WEAPON_PUMPSHOTGUN_MK2"] = true,
    ["WEAPON_MUSKET"] = true,
    ["WEAPON_SAWNOFFSHOTGUN"] = true,
    ["WEAPON_SMG"] = true,
    ["WEAPON_SMG_MK2"] = true,
    ["WEAPON_ASSAULTRIFLE"] = true,
    ["WEAPON_ASSAULTRIFLE_MK2"] = true,
    ["WEAPON_ASSAULTSMG"] = true,
    ["WEAPON_GUSENBERG"] = true,
    ["WEAPON_STUNGUN"] = true,
    ["WEAPON_MOLOTOV"] = true,
    ["WEAPON_SMOKEGRENADE"] = true,
    ["WEAPON_HATCHET"] = true,
    ["WEAPON_KATANA"] = true,
    ["WEAPON_KARAMBIT"] = true,
    ["WEAPON_BATTLEAXE"] = true,
    ["WEAPON_MACHETE"] = true,
    ["WEAPON_STONE_HATCHET"] = true,
    ["WEAPON_KNUCKLE"] = true,
    ["WEAPON_NIGHTSTICK"] = true,
    ["WEAPON_PISTOL_AMMO"] = true,
    ["WEAPON_NAIL_AMMO"] = true,
    ["WEAPON_SMG_AMMO"] = true,
    ["WEAPON_RIFLE_AMMO"] = true,
    ["WEAPON_SHOTGUN_AMMO"] = true,
    ["WEAPON_MUSKET_AMMO"] = true,
    ["dinheirosujo"] = true,
    ["cocaine"] = true,
    ["joint"] = true,
    ["meth"] = true,
    ["lockpick"] = true,
    ["c4"] = true,
    ["hood"] = true,
    ["handcuff"] = true
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- NOTCLEANGG
-----------------------------------------------------------------------------------------------------------------------------------------
NotCleanGG = {
    ["premium01"] = true,
    ["premium02"] = true,
    ["premium03"] = true,
    ["premium04"] = true,
    ["premium05"] = true,
    ["picole2"] = true,
    ["petretriever"] = true,
    ["petrottweiler"] = true,
    ["petwesty"] = true,
    ["petpug"] = true,
    ["petbulldog"] = true,
    ["petgreyhound"] = true,
    ["LoboSirius"] = true,
    ["Tigor"] = true,
    ["Rajah"] = true,
    ["pethusky"] = true,
    ["petshepherd"] = true,
    ["petpoodle"] = true,
    ["petcanecorso"] = true,
    ["petdoberman"] = true,
    ["petcat"] = true,
    ["petsphynx"] = true,
    ["monkey"] = true,
    ["megaphone"] = true,
    ["kitarmas1"] = true,
    ["kitarmas2"] = true,
    ["kitarmas3"] = true,
    ["kitarmas4"] = true,
    ["kitarmas5"] = true,
    ["kitarmas6"] = true,
    ["kitorgs"] = true,
    ["postit"] = true,
    ["vipsorteio"] = true,
    ["kitfogueteiro"] = true,
    ["kitcriminal"] = true,
    ["kitmafioso"] = true,
    ["kitdosraul"] = true,
    ["kitboqueta"] = true,
	["gemstone"] = true,
    ["premiumplate"] = true,
    ["phonechange"] = true,
    ["newchars"] = true,
    ["creator"] = true,
    ["namechange"] = true,
    ["creditcard"] = true,
    ["vehkey"] = true,
    ["propertys"] = true,
    ["rolepass"] = true,
	["money1"] = true,
	["money2"] = true,
	["money3"] = true,
	["money4"] = true,
	["money5"] = true,
	["packbasic"] = true,
	["packelite"] = true,
	["packpremium"] = true,
    ["weedleaf"] = true,
    ["silk"] = true,
    ["cokeleaf"] = true,
    ["sulfuric"] = true,
    ["saline"] = true,
    ["acetone"] = true,
    ["aguadestilada"] = true,
    ["cloro"] = true,
    ["capsula"] = true,
    ["polvora"] = true,
    ["weaponbody"] = true,
    ["molas"] = true,
    ["WEAPON_GRENADELAUNCHER"] = true,
    ["WEAPON_MINIGUN"] = true,
    ["WEAPON_FIREWORK"] = true,
    ["WEAPON_HOMINGLAUNCHER"] = true,
    ["WEAPON_RAILGUN"] = true,
    ["WEAPON_RPG"] = true,
    ["WEAPON_RPG_AMMO"] = true,
    ["WEAPON_MINIGUN_AMMO"] = true,
    ["WEAPON_RAYPISTOL"] = true,
    ["WEAPON_RAYCARBINE"] = true,
    ["WEAPON_RAYMINIGUN"] = true,
    ["WEAPON_TONYSTARK"] = true,
    ["WEAPON_PABSS"] = true,
}
-----------------------------------------------------------------------------------------------------------------------------------------
-- INICIANTE
-----------------------------------------------------------------------------------------------------------------------------------------
InicianteItems = {
    ["WEAPON_PISTOL"] = true,
    ["WEAPON_PISTOL_MK2"] = true,
    ["WEAPON_COMPACTRIFLE"] = true,
    ["WEAPON_APPISTOL"] = true,
    ["WEAPON_HEAVYPISTOL"] = true,
    ["WEAPON_MACHINEPISTOL"] = true,
    ["WEAPON_MICROSMG"] = true,
    ["WEAPON_NAILGUN"] = true,
    ["WEAPON_MINISMG"] = true,
    ["WEAPON_SNSPISTOL"] = true,
    ["WEAPON_SNSPISTOL_MK2"] = true,
    ["WEAPON_VINTAGEPISTOL"] = true,
    ["WEAPON_PISTOL50"] = true,
    ["WEAPON_REVOLVER"] = true,
    ["WEAPON_COMBATPISTOL"] = true,
    ["WEAPON_FNFAL"] = true,
    ["WEAPON_COLTXM177"] = true,
    ["WEAPON_CARBINERIFLE"] = true,
    ["WEAPON_CARBINERIFLE_MK2"] = true,
    ["WEAPON_ADVANCEDRIFLE"] = true,
    ["WEAPON_BULLPUPRIFLE"] = true,
    ["WEAPON_BULLPUPRIFLE_MK2"] = true,
    ["WEAPON_SPECIALCARBINE"] = true,
    ["WEAPON_SPECIALCARBINE_MK2"] = true,
    ["WEAPON_PARAFAL"] = true,
    ["WEAPON_PUMPSHOTGUN"] = true,
    ["WEAPON_PUMPSHOTGUN_MK2"] = true,
    ["WEAPON_MUSKET"] = true,
    ["WEAPON_SAWNOFFSHOTGUN"] = true,
    ["WEAPON_SMG"] = true,
    ["WEAPON_SMG_MK2"] = true,
    ["WEAPON_ASSAULTRIFLE"] = true,
    ["WEAPON_ASSAULTRIFLE_MK2"] = true,
    ["WEAPON_ASSAULTSMG"] = true,
    ["WEAPON_GUSENBERG"] = true,
    ["WEAPON_STUNGUN"] = true,
    ["WEAPON_MOLOTOV"] = true,
    ["WEAPON_SMOKEGRENADE"] = true,
    ["WEAPON_HATCHET"] = true,
    ["WEAPON_KATANA"] = true,
    ["WEAPON_KARAMBIT"] = true,
    ["WEAPON_BATTLEAXE"] = true,
    ["WEAPON_MACHETE"] = true,
    ["WEAPON_STONE_HATCHET"] = true,
    ["WEAPON_KNUCKLE"] = true,
    ["WEAPON_NIGHTSTICK"] = true,
    ["WEAPON_PISTOL_AMMO"] = true,
    ["WEAPON_NAIL_AMMO"] = true,
    ["WEAPON_SMG_AMMO"] = true,
    ["WEAPON_RIFLE_AMMO"] = true,
    ["WEAPON_SHOTGUN_AMMO"] = true,
    ["WEAPON_MUSKET_AMMO"] = true,
    ["dinheirosujo"] = true,
    ["cocaine"] = true,
    ["joint"] = true,
    ["meth"] = true,
    ["lockpick"] = true,
    ["c4"] = true,
    ["hood"] = true,
    ["handcuff"] = true
}

StoreLink = {
    ["Santa"] = "https://loja.cidadesantarp.com/",
    ["Galaxy"] = "https://lojagalaxy.santagroup.gg/",
    ["Universo"] = "https://loja.universoroleplay.com/",
    ["CidadeNobre"] = "https://loja.cidadenobre.com/",
    ["Caravelas"] = "https://caravelas-rp.tebex.io/",
    ["Kingdom"] = "https://store.kngestate.com/",
    ["Grande"] = "https://lojagrande.santagroup.gg/",
    ["Alexandria"] = "https://lojaalexandria.santagroup.gg/",
    ["Maresia"] = "https://lojamaresia.santagroup.gg/",
    ["Gaules"] = "https://lojagaules.santagroup.gg/",
    ["Fronteira"] = "https://fronteirarp.hydrus.gg/",
}

Logos = {
    ["Dev-Season3"] = "./assets/images/logo.webp",
    ["Santa"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/santa.png",
	["Grande"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/grande.png",
	["Alexandria"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/alexandria2.png",
	["Maresia"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/maresia.png",
	["Galaxy"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/galaxy.png",
    ["Universo"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/universo.png",
    ["Gaules"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/santa.png",
    ["Fronteira"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/santa.png",
    ["CidadeNobre"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/nobre.png",
    ["Caravelas"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/caravelas2.png",
    ["Kingdom"] = "https://santaimagens.roleplayrp.com/img/imagens_hud/kng.png",
}

DiscordConv = {
    ["Dev-Season3"] = "./assets/images/logo.webp",
	["Santa"] = "",
	["Grande"] = "",
	["Alexandria"] = "",
	["Maresia"] = "",
	["Galaxy"] = "",
    ["Universo"] = "",
    ["Gaules"] = "",
    ["Fronteira"] = "",
    ["CidadeNobre"] = "",
    ["Caravelas"] = "",
    ["Kingdom"] = "",
}

function GetLogo(City)
    return Logos[City]
end

function GetDiscordConv(City)
    return DiscordConv[City]
end