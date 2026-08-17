ORGS_CONFIG = {}

ORGS_CONFIG["QG_01"] = {
    GARAGES = {
        -- QG_01
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2036.25,4469.04,57.24,42.52),
                ["Positions"] = {
                    [1] = vector4(-2041.05,4473.55,57.26,116.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1926.1,4460.76,36.09,306.15),
                ["Positions"] = {
                    [1] = vector4(-1931.9,4457.08,35.1,59.53),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_01",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2048.51,4458.56,57.68,45.36),
                ["Positions"] = {
                    [1] = vector4(-2052.34,4463.7,57.29,124.73),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_01",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1963.7,4484.68,34.56,337.33),
                ["Positions"] = {
                    [1] = vector4(-1965.04,4480.51,33.75,36.86),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-1809.0,4386.93,51.56), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_01" },
        { Coords = vec3(-2045.45,4460.5,57.56), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_01" },
        { Coords = vec3(-1992.3,4504.5,31.16), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_01" },

        { Coords = vec3(-2029.05,4474.19,57.2), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_01" },
        { Coords = vec3(-1796.5,4479.05,14.88), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_01" },
        
    },
    CHESTS = {
        { ["Name"] = "QG_01-2", ["Coords"] = vec3(-1946.98,4489.52,34.93), ["Mode"] = "2" },
        { ["Name"] = "QG_01-3", ["Coords"] = vec3(-1950.89,4483.34,34.93), ["Mode"] = "2" },
        { ["Name"] = "QG_01-4", ["Coords"] = vec3(-1954.12,4474.99,34.9), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1960.81,4455.93,36.75), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(-1930.39,4435.23,39.93),"QG_01" }, 
    },
    INTERPHONE = {
        
        -- {vector3(-2042.4,4462.82,57.46),"QG_01"},
    },
    SURVIVAL = {
        ["QG_01"] = vec3(-1943.85,4462.05,35.38),
    },
    WORLD_PVP = {
        {vector4(-1932.63,4443.62,38.91,204.1),"QG_01"},
    },
    RISK_ZONES = {
        {vec3(-1943.85,4462.05,35.38),"QG_01"},
        
    },
    RDM_ZONES = {
        ["QG_01"] = {
            { 
                vector2(-2064.20, 4436.55),
                vector2(-2014.20, 4468.74),
                vector2(-1963.07, 4519.49),
                vector2(-1923.30, 4560.77),
                vector2(-1907.39, 4574.03),
                vector2(-1869.51, 4579.71),
                vector2(-1808.90, 4554.33),
                vector2(-1774.43, 4511.92),
                vector2(-1766.48, 4477.83),
                vector2(-1741.86, 4464.58),
                vector2(-1703.60, 4452.84),
                vector2(-1708.52, 4404.36),
                vector2(-1747.16, 4334.30),
                vector2(-1778.60, 4308.17)
            }, {
                name="QG_01",
                debugGrid=true,
            },
        }         
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_02"] = {
    GARAGES = {
        -- QG_02
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(299.9,-2741.56,6.0,14.18),
                ["Positions"] = {
                    [1] = vector4(294.11,-2736.27,6.0,5.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(287.25,-2672.25,6.02,274.97),
                ["Positions"] = {
                    [1] = vector4(291.05,-2665.78,5.32,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_02",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(300.16,-2725.64,5.91,96.38),
                ["Positions"] = {
                    [1] = vector4(291.42,-2711.6,6.0,357.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_02",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(302.99,-2672.83,6.0,79.38),
                ["Positions"] = {
                    [1] = vector4(295.46,-2672.72,5.32,0.0),
                },
            },
        },  
        
    },    
    DOORS = {
        { Coords = vec3(293.34,-2679.04,6.00), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_02" }, 
    },
    CHESTS = {
        
        { ["Name"] = "QG_02-2", ["Coords"] = vec3(345.09,-2708.74,1.7), ["Mode"] = "2" },
        { ["Name"] = "QG_02-3", ["Coords"] = vec3(340.07,-2706.39,1.7), ["Mode"] = "2" },
        { ["Name"] = "QG_02-4", ["Coords"] = vec3(346.26,-2698.98,1.7), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(354.11,-2722.31,5.96), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(354.28,-2704.15,1.7),"QG_02" },
        
    },
    INTERPHONE = {
        
        -- {vector3(290.92,-2678.41,6.0),"QG_02"},
    },
    SURVIVAL = {
        ["QG_02"] = vec3(322.78,-2724.8,5.98),
        
    },
    WORLD_PVP = {
        {vector4(326.01,-2731.89,5.98,31.19),"QG_02"},
        
    },
    RISK_ZONES = {
        {vec3(322.78,-2724.8,5.98),"QG_02"}, -- QG_02
        
    },
    RDM_ZONES = {
        ["QG_02"] = {
            {
                vector2(313.64, -2750.76),
                vector2(279.55, -2752.27),
                vector2(282.20, -2679.92),
                vector2(335.61, -2684.09),
                vector2(344.32, -2692.05),
                vector2(356.44, -2695.08),
                vector2(366.67, -2707.58),
                vector2(370.45, -2721.21),
                vector2(367.05, -2736.36),
                vector2(356.82, -2746.59),
                vector2(349.24, -2751.14),
                vector2(337.88, -2753.41)
            }, {
                name="QG_02",
                debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_03"] = {
    GARAGES = {
        -- QG_03
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-583.68,314.96,84.89,357.17),
                ["Positions"] = {
                    [1] = vector4(-580.61,314.85,84.55,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-567.65,273.91,83.02,187.09),
                ["Positions"] = {
                    [1] = vector4(-575.55,268.38,82.6,82.21),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_03",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-574.7,338.51,84.64,170.08),
                ["Positions"] = {
                    [1] = vector4(-567.08,327.88,84.45,266.46),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_03",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-542.13,312.08,83.02,283.47),
                ["Positions"] = {
                    [1] = vector4(-538.1,307.69,82.87,175.75),
                },
            },
        },
        
    },    
    DOORS = {
        { Coords = vec3(-542.29,325.76,82.99), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_03" },
        { Coords = vec3(-564.64,276.26,83.12), Hash = 993120320, Lock = true, Distance = 5.5, Perm = "QG_03" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_03-2", ["Coords"] = vec3(-571.59,289.36,79.18), ["Mode"] = "2" },
        { ["Name"] = "QG_03-3", ["Coords"] = vec3(-552.97,289.24,82.18), ["Mode"] = "2" },
        { ["Name"] = "QG_03-4", ["Coords"] = vec3(-568.61,291.3,79.18), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-560.13,287.1,82.18), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(-576.59,286.91,79.18),"QG_03" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-562.97,274.75,83.02),"QG_03"},
        
    },
    SURVIVAL = {
        ["QG_03"] = vec3(-540.52,325.73,82.9),
    },
    WORLD_PVP = {
        
        {vector4(-567.08,308.5,84.57,255.12),"QG_03"},
        
    },
    RISK_ZONES = {
        
        {vec3(-540.52,325.73,82.9),"QG_03"}, -- QG_03
        
        
    },
    RDM_ZONES = {
        ["QG_03"] = {
            {  
                vector2(-626.14, 276.52),
                vector2(-618.56, 348.11),
                vector2(-586.36, 345.45),
                vector2(-585.61, 334.47),
                vector2(-574.62, 337.88),
                vector2(-538.64, 335.23),
                vector2(-541.67, 272.73),
                vector2(-550.00, 262.50)
            }, {
                name="QG_03",
                --debugGrid=true,
            },
        }   
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_04"] = {
    GARAGES = {
        -- QG_04
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2312.26,-270.03,47.99,300.48),
                ["Positions"] = {
                    [1] = vector4(-2308.8,-274.47,47.06,201.26),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2016.9,-156.38,28.32,189.93),
                ["Positions"] = {
                    [1] = vector4(-2015.31,-158.71,27.53,96.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2295.69,-290.29,47.48,334.49),
                ["Positions"] = {
                    [1] = vector4(-2293.35,-289.33,46.61,240.95),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_04",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2031.57,-157.81,27.16,187.09),
                ["Positions"] = {
                    [1] = vector4(-2030.49,-162.51,26.32,102.05),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_04",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2309.18,-252.11,48.02,138.9),
                ["Positions"] = {
                    [1] = vector4(-2310.05,-255.17,47.97,212.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_04",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2183.03,-268.23,36.19,56.7),
                ["Positions"] = {
                    [1] = vector4(-2183.15,-258.48,36.48,331.66),
                },
            },
        },
        
    },    
    DOORS = {
        { Coords = vec3(-2025.94,-145.26,27.89), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_04" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_04-2", ["Coords"] = vec3(-2242.54,-264.21,46.42), ["Mode"] = "2" },
        { ["Name"] = "QG_04-3", ["Coords"] = vec3(-2239.37,-258.87,46.42), ["Mode"] = "2" },
        { ["Name"] = "QG_04-4", ["Coords"] = vec3(-2232.21,-261.27,46.42), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2303.56,-263.8,48.09), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(-2237.89,-266.41,46.42),"QG_04" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-2021.51,-147.29,28.26),"QG_04"},
        
    },
    SURVIVAL = {
        ["QG_04"] = vec3(-2033.18,-137.57,27.68),
        
    },
    WORLD_PVP = {
        
        {vector4(-2304.93,-269.18,48.12,107.72),"QG_04"},
        
    },
    RISK_ZONES = {
        {vec3(-2033.18,-137.57,27.68),"QG_04"}, -- QG_04
        
        
    },
    RDM_ZONES = {
        
        ["QG_04"] = {
            {   
                vector2(-2015.15,-146.07),
                vector2(-2050.61,-150.77),
                vector2(-2118.65,-183.05),
                vector2(-2168.25,-240.44),
                vector2(-2199.27,-306.8),
                vector2(-2222.26,-316.69),
                vector2(-2229.66,-315.86),
                vector2(-2287.26,-296.41),
                vector2(-2317.47,-271.58),
                vector2(-2333.49,-240.83),
                vector2(-2316.42,-231.98),
                vector2(-2296.94,-259.12),
                vector2(-2291.59,-232.7),
                vector2(-2291.39,-218.54),
                vector2(-2254.1,-124.68),
                vector2(-2240.21,-112.74),
                vector2(-2179.29,-127.33),
                vector2(-2177.48,-114.48),
                vector2(-2150.5,-114.56),
                vector2(-2082.34,-128.8),
                vector2(-2050.37,-119.97),
                vector2(-2020.47,-133.54)
            }, {
                name="QG_04",
                --debugGrid=true,
            }, 
        }       
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_05"] = {
    GARAGES = {
        
        -- QG_05
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-483.49,-1390.36,30.21,221.11),
                ["Positions"] = {
                    [1] = vector4(-483.28,-1404.02,29.44,317.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-461.76,-1117.78,28.59,158.75),
                ["Positions"] = {
                    [1] = vector4(-455.76,-1115.52,28.91,255.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-467.73,-1370.75,27.58,167.25),
                ["Positions"] = {
                    [1] = vector4(-469.39,-1370.62,27.47,153.08),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_05",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-478.32,-1381.27,29.27,31.19),
                ["Positions"] = {
                    [1] = vector4(-496.97,-1396.1,29.47,48.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_05",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-490.53,-1394.96,29.37,48.19),
                ["Positions"] = {
                    [1] = vector4(-500.74,-1390.33,29.44,232.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_05",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-473.19,-1114.83,27.57,110.56),
                ["Positions"] = {
                    [1] = vector4(-464.75,-1111.6,28.21,249.45),
                },
            },
        },
        
        
    },    
    DOORS = {
        { Coords = vec3(-429.75,-1218.38,20.62), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_05" },
        { Coords = vec3(-469.56,-1119.99,27.94), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_05" },
        { Coords = vec3(-484.29,-1397.44,29.6), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_05" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_05-2", ["Coords"] = vec3(-494.69,-1326.19,29.72), ["Mode"] = "2" },
        { ["Name"] = "QG_05-3", ["Coords"] = vec3(-476.33,-1333.58,26.59), ["Mode"] = "2" },
        { ["Name"] = "QG_05-4", ["Coords"] = vec3(-477.52,-1377.94,28.9), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-465.24,-1338.06,26.62), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(-488.43,-1380.63,29.72),"QG_05" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-480.68,-1400.51,29.34),"QG_05"},
        
    },
    SURVIVAL = {
        ["QG_05"] = vec3(-467.19,-1359.56,26.59),
        
    },
    WORLD_PVP = {
        {vector4(-469.05,-1336.68,26.61,130.4),"QG_05"},
        
    },
    RISK_ZONES = {
        {vec3(-467.19,-1359.56,26.59),"QG_05"}, -- QG_05
        
    },
    RDM_ZONES = {  
        ["QG_05"] = {
            {
                vector2(-446.21, -1121.97),
                vector2(-472.35, -1114.02),
                vector2(-487.12, -1118.56),
                vector2(-498.11, -1133.71),
                vector2(-499.62, -1149.62),
                vector2(-487.88, -1165.15),
                vector2(-478.41, -1182.20),
                vector2(-465.91, -1207.20),
                vector2(-469.32, -1237.12),
                vector2(-487.50, -1284.09),
                vector2(-512.88, -1347.73),
                vector2(-506.44, -1376.14),
                vector2(-489.02, -1394.70),
                vector2(-469.32, -1403.03),
                vector2(-443.94, -1403.41),
                vector2(-431.06, -1404.92),
                vector2(-421.59, -1354.92),
                vector2(-422.35, -1254.92),
                vector2(-422.35, -1160.98),
                vector2(-422.73, -1138.64)
            }, {
                name="QG_05",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_06"] = {
    GARAGES = {
        
        -- QG_06
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(434.1,6522.48,28.12,2.84),
                ["Positions"] = {
                    [1] = vector4(424.0,6529.11,27.63,354.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_06",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(433.88,6518.22,28.44,167.25),
                ["Positions"] = {
                    [1] = vector4(423.42,6511.5,27.72,0.0),
                },
            },
        },
        
    },    
    DOORS = {
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_06-2", ["Coords"] = vec3(416.72,6537.04,27.87), ["Mode"] = "2" },
        { ["Name"] = "QG_06-3", ["Coords"] = vec3(409.43,6531.68,27.87), ["Mode"] = "2" },
        { ["Name"] = "QG_06-4", ["Coords"] = vec3(406.55,6506.23,27.89), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(412.98,6508.62,27.89), ["Mode"] = "Personal" },            
    },
    CRAFT = {
        
        { vec3(414.62,6522.84,27.89),"QG_06" },
        
    },
    INTERPHONE = {
        
        -- {vector3(422.04,6553.9,27.26),"QG_06"},
        
    },
    SURVIVAL = {
        
        ["QG_06"] = vec3(423.13,6479.29,28.81),
        
    },
    WORLD_PVP = {
        
        {vector4(431.37,6470.96,29.59,164.41),"QG_06"},
        
    },
    RISK_ZONES = {
        
        {vec3(423.13,6479.29,28.81),"QG_06"}, -- QG_06
        
        
    },
    RDM_ZONES = {
        
        ["QG_06"] = {
            {
                vector2(386.74, 6540.53),
                vector2(389.77, 6421.97),
                vector2(423.48, 6425.00),
                vector2(475.00, 6425.76),
                vector2(495.45, 6424.24),
                vector2(496.97, 6529.17),
                vector2(446.97, 6536.36),
                vector2(402.65, 6539.77)
            }, {
                name="QG_06",
                --debugGrid=true,
            }, 
        }       
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_07"] = {
    GARAGES = {
        
        -- QG_07
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(944.39,1731.84,165.57,181.42),
                ["Positions"] = {
                    [1] = vector4(946.73,1722.97,165.53,277.8),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(858.44,1849.84,141.57,221.11),
                ["Positions"] = {
                    [1] = vector4(857.42,1852.5,141.27,28.35),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_07",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(924.07,1729.6,166.41,195.6),
                ["Positions"] = {
                    [1] = vector4(905.97,1718.34,167.37,96.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_07",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(869.54,1856.22,142.14,198.43),
                ["Positions"] = {
                    [1] = vector4(864.04,1849.85,141.77,116.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_07",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(871.61,1719.64,171.72,11.27),
                ["Positions"] = {
                    [1] = vector4(863.65,1707.02,169.95,275.97),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(929.83,1731.31,166.16), Hash = 115679102, Lock = true, Distance = 5.5, Perm = "QG_07" },
        { Coords = vec3(763.89,1868.26,122.36), Hash = 115679102, Lock = true, Distance = 5.5, Perm = "QG_07" },
        { Coords = vec3(931.11,1730.7,166.11), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_07" },
        { Coords = vec3(838.53,1714.0,171.73), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_07" },
        { Coords = vec3(762.35,1868.59,122.33), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_07" },
        
    },
    CHESTS = {
        { ["Name"] = "QG_07-2", ["Coords"] = vec3(826.7,1781.27,150.32), ["Mode"] = "2" },
        { ["Name"] = "QG_07-3", ["Coords"] = vec3(826.41,1772.8,150.62), ["Mode"] = "2" },
        { ["Name"] = "QG_07-4", ["Coords"] = vec3(905.91,1752.18,171.73), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(925.69,1755.97,164.69), ["Mode"] = "Personal" },
        
        
    },
    CRAFT = {
        
        { vec3(847.93,1857.7,140.85),"QG_07" },
        { vec3(834.45,1757.9,155.32),"QG_07" },
        
    },
    INTERPHONE = {
        
        -- {vector3(933.88,1730.71,165.99),"QG_07"},
        
    },
    SURVIVAL = {
        
        ["QG_07"] = vec3(926.21,1762.66,164.45),
        
    },
    WORLD_PVP = {
        
        {vector4(917.9,1756.77,164.4,291.97),"QG_07"},
        
    },
    RISK_ZONES = {
        
        {vec3(926.21,1762.66,164.45),"QG_07"}, -- QG_07
        
        
    },
    RDM_ZONES = {
        
        ["QG_07"] = {
            { 
                vector2(1007.58, 1722.35),
                vector2(955.30, 1727.65),
                vector2(842.80, 1706.82),
                vector2(812.50, 1706.06),
                vector2(770.83, 1742.80),
                vector2(728.03, 1796.97),
                vector2(731.44, 1825.76),
                vector2(766.67, 1833.71),
                vector2(833.71, 1873.48),
                vector2(912.50, 1868.18),
                vector2(970.45, 1807.20)
            }, {
                name="QG_07",
                --debugGrid=true,
            },   
        }     
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_08"] = {
    GARAGES = {        
        -- QG_08
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-366.67,-185.92,37.25,204.1),
                ["Positions"] = {
                    [1] = vector4(-362.86,-192.97,37.54,291.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-351.0,-140.03,60.61,102.05),
                ["Positions"] = {
                    [1] = vector4(-342.44,-142.58,60.61,308.98),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-373.06,-95.26,45.66,104.89),
                ["Positions"] = {
                    [1] = vector4(-365.59,-89.15,45.76,340.16),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_08",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-339.75,-86.24,45.66,257.96),
                ["Positions"] = {
                    [1] = vector4(-350.24,-88.33,45.76,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_08",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-376.86,-149.4,38.69,300.48),
                ["Positions"] = {
                    [1] = vector4(-371.94,-138.77,38.69,305.70 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_08",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-334.24,-144.76,60.61,255.12),
                ["Positions"] = {
                    [1] = vector4(-342.15,-142.48,60.19,116.23),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-356.59,-179.74,37.76), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_08" },
        { Coords = vec3(-295.51,-97.89,47.04), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_08" },
        { Coords = vec3(-394.64,-64.89,44.87), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_08" },
        { Coords = vec3(-411.13,-83.96,41.94), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_08" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_08-2", ["Coords"] = vec3(-344.63,-155.82,44.58), ["Mode"] = "2" },
        { ["Name"] = "QG_08-3", ["Coords"] = vec3(-349.06,-87.11,39.01), ["Mode"] = "2" },
        { ["Name"] = "QG_08-4", ["Coords"] = vec3(-350.61,-159.34,39.01), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-353.61,-154.08,39.01), ["Mode"] = "Personal" },
        
        
    },
    CRAFT = {
        
        { vec3(-315.2,-124.5,39.01),"QG_08" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-352.06,-178.35,38.01),"QG_08"},
        
    },
    SURVIVAL = {
        
        ["QG_08"] = vec3(-360.15,-148.48,38.25),
        
    },
    WORLD_PVP = {
        
        {vector4(-379.96,-101.14,39.06,150.24),"QG_08"},
        
    },
    RISK_ZONES = {
        
        {vec3(-360.15,-148.48,38.25),"QG_08"}, -- QG_08
        
        
    },
    RDM_ZONES = {
        
        ["QG_08"] = {
            {
                vector2(-361.36, -194.70),
                vector2(-423.86, -89.02),
                vector2(-398.48, -64.39),
                vector2(-292.42, -102.65),
                vector2(-303.79, -132.58),
                vector2(-295.83, -139.39),
                vector2(-302.27, -166.29)
            }, {
                name="QG_08",
                --debugGrid=true,
            },               
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_09"] = {
    GARAGES = {
        
        -- QG_09
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(763.63,-810.9,26.32,153.08),
                ["Positions"] = {
                    [1] = vector4(767.66,-802.7,26.32,175.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(719.48,-763.74,24.97,22.68),
                ["Positions"] = {
                    [1] = vector4(722.95,-759.4,25.22,178.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_09",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(764.44,-820.57,26.29,85.04),
                ["Positions"] = {
                    [1] = vector4(770.19,-822.09,26.34,175.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_09",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(718.86,-771.05,24.82,45.36),
                ["Positions"] = {
                    [1] = vector4(721.15,-782.92,24.82,178.59),
                },
            },
        },
        
    },    
    DOORS = {
        { Coords = vec3(756.25,-792.44,26.28), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_09" },
        { Coords = vec3(721.85,-825.13,24.68), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_09" },
        { Coords = vec3(681.12,-784.60,24.37), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_09" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_09-2", ["Coords"] = vec3(701.46,-806.24,16.88), ["Mode"] = "2" },
        { ["Name"] = "QG_09-3", ["Coords"] = vec3(715.92,-791.05,16.48), ["Mode"] = "2" },
        { ["Name"] = "QG_09-4", ["Coords"] = vec3(732.59,-795.29,18.06), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(723.82,-809.2,16.88), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(709.79,-806.25,16.88),"QG_09" },
        
    },
    INTERPHONE = {
        
        -- {vector3(765.82,-797.86,26.23),"QG_09"},
        
    },
    SURVIVAL = {
        
        ["QG_09"] = vec3(726.76,-796.7,16.48),
        
    },
    WORLD_PVP = {
        
        {vector4(710.25,-791.19,16.48,172.92),"QG_09"},
        
    },
    RISK_ZONES = {
        
        {vec3(726.76,-796.7,16.48),"QG_09"}, -- QG_09
        
    },
    RDM_ZONES = {
        
        ["QG_09"] = {
            {
                vector2(672.73, -834.09),
                vector2(669.70, -750.00),
                vector2(671.97, -681.06),
                vector2(684.09, -666.67),
                vector2(766.67, -668.94),
                vector2(771.97, -674.62),
                vector2(771.21, -836.74)
            }, {
                name="QG_09",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_10"] = {
    GARAGES = {
        
        -- QG_10
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(362.33,-0.73,82.99,291.97),
                ["Positions"] = {
                    [1] = vector4(354.07,-5.26,82.14,221.11),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(449.1,22.22,87.27,289.14),
                ["Positions"] = {
                    [1] = vector4(452.58,24.12,87.45,238.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(333.74,21.39,86.1,249.45),
                ["Positions"] = {
                    [1] = vector4(325.96,21.46,86.14,340.16),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(345.8,54.93,93.57,65.2),
                ["Positions"] = {
                    [1] = vector4(341.57,63.12,95.39,334.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_10",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(369.55,4.58,82.99,34.02),
                ["Positions"] = {
                    [1] = vector4(374.17,0.64,82.13,127.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_10",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(328.36,6.43,82.77,70.87),
                ["Positions"] = {
                    [1] = vector4(320.85,6.59,82.23,343.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_10",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(393.8,23.57,91.33,42.52),
                ["Positions"] = {
                    [1] = vector4(389.83,31.55,91.53,337.33),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(340.75,37.76,89.89), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_10" },
        { Coords = vec3(413.64,31.11,91.26), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_10" },
        { Coords = vec3(354.43,18.78,84.77), Hash = -1140189596, Lock = true, Distance = 5.5, Perm = "QG_10" },
        { Coords = vec3(376.62,-30.52,91.26), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_10" },
        { Coords = vec3(375.62,-31.41,91.26), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_10" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_10-2", ["Coords"] = vec3(409.28,0.43,84.92), ["Mode"] = "2" },
        { ["Name"] = "QG_10-3", ["Coords"] = vec3(395.25,-20.83,91.93), ["Mode"] = "2" },
        { ["Name"] = "QG_10-4", ["Coords"] = vec3(411.46,-18.06,91.93), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(394.77,-15.52,91.93), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(412.45,7.63,84.92),"QG_10" },
        
    },
    INTERPHONE = {
        
        -- {vector3(342.16,45.53,91.43),"QG_10"},
        
    },
    SURVIVAL = {
        
        ["QG_10"] = vec3(405.05,19.34,91.33),
        
    },
    WORLD_PVP = {
        
        {vector4(351.16,-8.34,91.26,337.33),"QG_10"},
        
    },
    RISK_ZONES = {
        
        {vec3(405.05,19.34,91.33),"QG_10"}, -- QG_10
        
        
    },
    RDM_ZONES = {
        
        ["QG_10"] = {
            {
                vector2(321.97, -1.14),
                vector2(346.59, 70.08),
                vector2(420.45, 41.29),
                vector2(379.17, -34.47),
                vector2(370.08, -29.17),
                vector2(371.21, -21.59)
            }, {
                name="QG_10",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = true,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_11"] = {
    GARAGES = {
        
        -- QG_11
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1521.69,287.79,74.86,277.8),
                ["Positions"] = {
                    [1] = vector4(-1493.07,246.94,61.28,252.29),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1493.24,243.79,61.1,235.28),
                ["Positions"] = {
                    [1] = vector4(-1500.93,234.48,60.61,263.63),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_11",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1613.48,360.23,81.45,155.91),
                ["Positions"] = {
                    [1] = vector4(-1609.54,360.02,81.45,155.91),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_11",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1643.2,381.09,94.27,263.63),
                ["Positions"] = {
                    [1] = vector4(-1637.49,373.48,94.27,178.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_11",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1530.48,342.31,87.16,153.08),
                ["Positions"] = {
                    [1] = vector4(-1530.44,337.34,86.71,226.78),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_11",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1510.31,277.93,71.24,28.35),
                ["Positions"] = {
                    [1] = vector4(-1514.43,276.41,70.26,212.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_15",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1568.51,342.07,86.98,337.33),
                ["Positions"] = {
                    [1] = vector4(-1574.83,346.92,86.52,85.04),
                },
            },
        },
         {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_15",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1480.54,253.26,61.62,235.28),
                ["Positions"] = {
                    [1] = vector4(-1473.28,253.46,61.59,314.65),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1488.11,251.74,61.54), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_11" },
        { Coords = vec3(-1634.67,309.29,59.19), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_11" },
        { Coords = vec3(-1643.4,403.57,88.68), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_11" },
        { Coords = vec3(-1577.86,445.3,108.34), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_11" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_11-2", ["Coords"] = vec3(-1571.28,378.44,98.66), ["Mode"] = "2" },
        { ["Name"] = "QG_11-3", ["Coords"] = vec3(-1564.99,331.57,87.06), ["Mode"] = "2" },
        { ["Name"] = "QG_11-4", ["Coords"] = vec3(-1528.95,299.62,83.42), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1522.29,303.29,83.36), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1553.76,338.37,87.25),"QG_11" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1485.05,254.63,61.6),"QG_11"},
        
    },
    SURVIVAL = {
        
        ["QG_11"] = vec3(-1526.59,302.02,83.42),
        
    },
    WORLD_PVP = {
        
        {vector4(-1568.21,338.46,86.98,124.73),"QG_11"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1526.59,302.02,83.42),"QG_11"}, -- QG_11
        
        
    },
    RDM_ZONES = {
        
        ["QG_11"] = {
            {
                vector2(-1482.58, 251.52),
                vector2(-1475.76, 353.79),
                vector2(-1509.85, 375.76),
                vector2(-1532.95, 375.38),
                vector2(-1559.85, 385.61),
                vector2(-1565.91, 389.77),
                vector2(-1566.67, 441.67),
                vector2(-1584.09, 460.61),
                vector2(-1589.39, 521.97),
                vector2(-1605.30, 537.88),
                vector2(-1634.09, 535.61),
                vector2(-1660.61, 504.55),
                vector2(-1654.55, 492.42),
                vector2(-1683.33, 473.48),
                vector2(-1694.70, 490.91),
                vector2(-1734.47, 476.89),
                vector2(-1727.27, 400.00),
                vector2(-1693.18, 412.88),
                vector2(-1658.71, 411.36),
                vector2(-1645.45, 395.83),
                vector2(-1634.09, 302.65),
                vector2(-1610.98, 303.41),
                vector2(-1590.91, 295.45),
                vector2(-1572.73, 277.27),
                vector2(-1542.80, 255.68),
                vector2(-1512.88, 244.70)
            }, {
                name="QG_11",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_12"] = {
    GARAGES = {
        
        -- QG_12
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(880.26,-2121.58,30.46,357.17),
                ["Positions"] = {
                    [1] = vector4(875.98,-2125.6,30.55,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(852.94,-2107.81,30.57,175.75),
                ["Positions"] = {
                    [1] = vector4(864.27,-2111.39,30.38,354.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_12",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(869.04,-2120.47,30.53,277.8),
                ["Positions"] = {
                    [1] = vector4(864.27,-2111.39,30.38,354.34),
                },
            },
        }, 
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_12",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(917.7,-2141.73,30.43,11.34),
                ["Positions"] = {
                    [1] = vector4(920.87,-2148.19,30.4,175.75),
                },
            },
        },        
        
    },    
    DOORS = {
        
        { Coords = vec3(909.06,-2097.5,30.55), Hash = -1958316735, Lock = true, Distance = 5.5, Perm = "QG_12" },
        { Coords = vec3(867.59,-2094.55,30.38), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_12" },
        { Coords = vec3(915.13,-2138.05,30.5), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_12" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_12-2", ["Coords"] = vec3(888.55,-2102.33,34.88), ["Mode"] = "2" },
        { ["Name"] = "QG_12-3", ["Coords"] = vec3(898.46,-2100.63,34.88), ["Mode"] = "2" },
        { ["Name"] = "QG_12-4", ["Coords"] = vec3(915.93,-2105.15,30.46), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(916.45,-2099.7,30.46), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(889.53,-2131.81,30.46),"QG_12" },
        
    },
    INTERPHONE = {
        
        -- {vector3(906.02,-2096.8,30.58),"QG_12"},
        
    },
    SURVIVAL = {
        
        ["QG_12"] = vec3(913.53,-2109.94,30.46),
        
    },
    WORLD_PVP = {
        
        {vector4(847.39,-2130.11,30.53,107.72),"QG_12"},
        
    },
    RISK_ZONES = {
        
        {vec3(913.53,-2109.94,30.46),"QG_12"}, -- QG_12
        
    },
    RDM_ZONES = {
        
        ["QG_12"] = {
            {
                vector2(914.02, -2140.53),
                vector2(843.56, -2133.33),
                vector2(844.70, -2093.56),
                vector2(917.05, -2097.73)
            }, {
                name="QG_12",
                --debugGrid=true,
            },  
        }        
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_13"] = {
    GARAGES = {
        
        -- QG_13
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(128.02,-432.1,41.27,93.55),
                ["Positions"] = {
                    [1] = vector4(124.5,-433.05,41.2,340.16),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(137.21,-362.55,44.94,255.12),
                ["Positions"] = {
                    [1] = vector4(133.39,-363.77,44.94,246.62),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(116.97,-415.38,41.27,76.54),
                ["Positions"] = {
                    [1] = vector4(123.28,-415.63,41.2,249.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_13",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(118.48,-456.83,41.27,25.52),
                ["Positions"] = {
                    [1] = vector4(120.14,-444.14,41.38,340.16),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_13",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(135.64,-367.41,44.94,255.12),
                ["Positions"] = {
                    [1] = vector4(133.39,-363.77,44.94,246.62),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_13",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(107.6,-451.04,41.27,269.3),
                ["Positions"] = {
                    [1] = vector4(113.91,-443.82,41.38,340.16),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(148.3,-345.92,44.94), Hash = -1551033277, Lock = true, Distance = 5.5, Perm = "QG_13" },
        { Coords = vec3(133.77,-415.78,41.27), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_13" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_13-2", ["Coords"] = vec3(134.31,-345.29,50.33), ["Mode"] = "2" },
        { ["Name"] = "QG_13-3", ["Coords"] = vec3(120.49,-381.17,50.36), ["Mode"] = "2" },
        { ["Name"] = "QG_13-4", ["Coords"] = vec3(131.12,-352.89,44.94), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(133.63,-347.1,44.97), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(139.35,-390.56,50.36),"QG_13" },
    },
    INTERPHONE = {
        
        -- {vector3(145.59,-342.19,44.52),"QG_13"},
        
    },
    SURVIVAL = {
        
        ["QG_13"] = vec3(124.36,-389.14,44.94),
        
    },
    WORLD_PVP = {
        
        {vector4(138.84,-395.85,44.94,62.37),"QG_13"},
        
    },
    RISK_ZONES = {
        
        {vec3(124.36,-389.14,44.94),"QG_13"}, -- QG_13
        
    },
    RDM_ZONES = {
        
        ["QG_13"] = {
            {
                vector2(129.55, -331.06),
                vector2(169.32, -344.32),
                vector2(115.91, -477.27),
                vector2(77.27, -469.70)
            }, {
                name="QG_13",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_14"] = {
    GARAGES = {
        
        -- QG_14
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2737.89,3444.11,56.19,272.13),
                ["Positions"] = {
                    [1] = vector4(2756.68,3436.95,56.09,257.96),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2773.18,3474.43,55.44,249.45),
                ["Positions"] = {
                    [1] = vector4(2774.22,3471.33,55.45,260.79),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_14",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2744.87,3456.45,55.87,246.62),
                ["Positions"] = {
                    [1] = vector4(2759.87,3446.34,55.94,252.29),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_14",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2757.46,3486.52,55.54,257.96),
                ["Positions"] = {
                    [1] = vector4(2789.16,3505.88,54.9,257.96),
                },
            },
        },
        
        
    },    
    DOORS = {
        
        { Coords = vec3(2745.84,3427.07,56.38), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_14" },
        { Coords = vec3(2739.29,3429.86,56.46), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_14" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_14-2", ["Coords"] = vec3(2745.1,3498.26,61.3), ["Mode"] = "2" },
        { ["Name"] = "QG_14-3", ["Coords"] = vec3(2747.1,3501.33,61.3), ["Mode"] = "2" },
        { ["Name"] = "QG_14-4", ["Coords"] = vec3(2752.36,3487.26,55.71), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2749.88,3481.48,55.71), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2719.19,3467.06,55.71),"QG_14" },   
        
    },
    INTERPHONE = {
        
        -- {vector3(2748.28,3424.66,56.36),"QG_14"},
        
    },
    SURVIVAL = {
        
        ["QG_14"] = vec3(2732.31,3497.57,55.71),
        
    },
    WORLD_PVP = {
        
        {vector4(2757.35,3478.03,55.62,243.78),"QG_14"},
        
    },
    RISK_ZONES = {
        
        {vec3(2732.31,3497.57,55.71),"QG_14"}, -- QG_14       
        
    },
    RDM_ZONES = {
        
        ["QG_14"] = {
            {
                vector2(2754.92, 3375.76),
                vector2(2748.86, 3391.67),
                vector2(2718.94, 3404.55),
                vector2(2617.80, 3442.80),
                vector2(2661.36, 3541.67),
                vector2(2760.23, 3507.95),
                vector2(2765.15, 3515.15),
                vector2(2808.71, 3499.24)
            }, {
                name="QG_14",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_15"] = {
    GARAGES = {
        
        -- fac 15
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1812.5,451.44,128.51,0.0),
                ["Positions"] = {
                    [1] = vector4(-1816.14,458.87,128.56,82.21),
                },
            },
        },        
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1787.14,407.94,113.45,0.0),
                ["Positions"] = {
                    [1] = vector4(-1794.21,397.59,113.45,121.89),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1517.43,274.66,70.25,300.48),
                ["Positions"] = {
                    [1] = vector4(-1507.72,265.72,66.12,232.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1513.59,308.72,82.46,90.71),
                ["Positions"] = {
                    [1] = vector4(-1519.43,316.36,82.38,184.26),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1620.94,438.52,108.58,187.09),
                ["Positions"] = {
                    [1] = vector4(-1618.11,434.7,108.5,274.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1607.55,354.9,81.49,17.01),
                ["Positions"] = {
                    [1] = vector4(-1610.12,357.67,81.37,127.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_15",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1785.75,478.8,133.42,266.46),
                ["Positions"] = {
                    [1] = vector4(-1781.68,483.79,133.05,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_15",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1643.27,381.21,94.27,218.27),
                ["Positions"] = {
                    [1] = vector4(-1637.47,373.46,94.27,172.92),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_15",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1625.48,401.44,88.38,147.41),
                ["Positions"] = {
                    [1] = vector4(-1630.99,398.81,87.94,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_15",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1801.52,403.05,112.96,0.0),
                ["Positions"] = {
                    [1] = vector4(-1797.59,394.01,112.78,102.05),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1800.07,473.2,133.69), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_15" },
        { Coords = vec3(-1800.01,472.91,133.69), Hash = -349730013, Lock = true, Distance = 5.5, Perm = "QG_15" },
        { Coords = vec3(-1798.19,469.53,133.69), Hash = 724862427, Lock = true, Distance = 5.5, Perm = "QG_15" },
        { Coords = vec3(-1864.89,350.08,88.93), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_15" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_15-2", ["Coords"] = vec3(-1802.36,429.92,128.73), ["Mode"] = "2" },
        { ["Name"] = "QG_15-3", ["Coords"] = vec3(-1792.78,438.61,128.28), ["Mode"] = "2" },
        { ["Name"] = "QG_15-4", ["Coords"] = vec3(-1799.03,438.57,128.28), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1809.74,435.3,128.73), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1794.51,422.55,128.28),"QG_15" },
        { vec3(-1808.01,429.55,128.73),"QG_15" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1801.88,478.69,133.87),"QG_15"},
        
    },
    SURVIVAL = {
        
        ["QG_15"] = vec3(-1796.05,433.8,128.28),
        
    },
    WORLD_PVP = {
        
        {vector4(-1811.35,438.04,128.7,348.67),"QG_15"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1796.05,433.8,128.28),"QG_15"}, -- QG_15
        
    },
    RDM_ZONES = {
        
        ["QG_15"] = {
            {
                vector2(-1855.68, 346.59),
                vector2(-1855.30, 362.12),
                vector2(-1840.15, 373.11),
                vector2(-1810.23, 383.33),
                vector2(-1793.18, 378.79),
                vector2(-1771.97, 396.21),
                vector2(-1753.03, 398.48),
                vector2(-1729.55, 420.45),
                vector2(-1741.29, 475.00),
                vector2(-1839.02, 471.97),
                vector2(-1856.44, 436.74),
                vector2(-1888.64, 379.55),
                vector2(-1880.30, 341.67)
            }, {
                name="QG_15",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_16"] = {
    GARAGES = {
        
        -- QG_16
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1369.09,1157.74,113.75,116.23),
                ["Positions"] = {
                    [1] = vector4(1360.78,1163.28,113.6,181.42),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1399.75,1114.81,114.83,189.93),
                ["Positions"] = {
                    [1] = vector4(1392.04,1117.94,114.75,87.88),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_16",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1415.28,1115.97,114.83,79.38),
                ["Positions"] = {
                    [1] = vector4(1411.82,1119.0,114.76,85.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_16",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1374.61,1137.12,114.09,96.38),
                ["Positions"] = {
                    [1] = vector4(1371.14,1132.32,113.94,22.68),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1320.19,1107.54,106.05), Hash = -1153093533, Lock = true, Distance = 5.5, Perm = "QG_16" },
        { Coords = vec3(1313.02,1188.97,106.9), Hash = -768779561, Lock = true, Distance = 5.5, Perm = "QG_16" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_16-2", ["Coords"] = vec3(1391.54,1158.78,114.33), ["Mode"] = "2" },
        { ["Name"] = "QG_16-3", ["Coords"] = vec3(1403.87,1144.53,114.33), ["Mode"] = "2" },
        { ["Name"] = "QG_16-4", ["Coords"] = vec3(1399.96,1139.62,114.33), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1394.73,1150.11,114.33), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1393.24,1134.59,114.33),"QG_16" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1321.27,1103.94,105.95),"QG_16"},
        
    },
    SURVIVAL = {
        
        ["QG_16"] = vec3(1398.9,1142.04,114.33),
        
    },
    WORLD_PVP = {
        
        {vector4(1419.43,1134.19,114.36,45.36),"QG_16"},
        
    },
    RISK_ZONES = {
        
        {vec3(1398.9,1142.04,114.33),"QG_16"}, -- QG_16
        
    },
    RDM_ZONES = {
        
        ["QG_16"] = {
            {
                vector2(1299.24, 1201.89),
                vector2(1315.15, 1190.91),
                vector2(1501.14, 1193.94),
                vector2(1514.39, 1173.86),
                vector2(1524.62, 1069.32),
                vector2(1520.45, 1029.17),
                vector2(1498.86, 1015.15),
                vector2(1373.86, 1013.26),
                vector2(1375.38, 1093.56),
                vector2(1299.62, 1079.55),
                vector2(1295.08, 1137.12)
            }, {
                name="QG_16",
                --debugGrid=true,
            },
        }  
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_17"] = {
    GARAGES = {
        
        -- QG_17
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(861.43,355.53,118.35,274.97),
                ["Positions"] = {
                    [1] = vector4(864.81,378.56,117.68,124.73),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(901.14,336.02,112.22,138.9),
                ["Positions"] = {
                    [1] = vector4(896.22,334.74,112.07,45.36),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_17",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(848.41,359.02,117.73,22.68),
                ["Positions"] = {
                    [1] = vector4(833.82,365.16,117.61,127.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_17",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(848.47,358.88,117.73,39.69),
                ["Positions"] = {
                    [1] = vector4(841.24,360.76,117.83,119.06),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_17",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(848.47,358.88,117.73,39.69),
                ["Positions"] = {
                    [1] = vector4(841.24,360.76,117.83,119.06),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_17",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(919.4,337.31,112.22,232.45),
                ["Positions"] = {
                    [1] = vector4(925.96,339.72,112.07,136.07),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(837.57,231.60,82.94), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_17" },
        { Coords = vec3(857.79,367.20,117.96), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_17" },
        { Coords = vec3(919.13,462.54,120.69), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_17" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_17-2", ["Coords"] = vec3(903.21,383.95,119.25), ["Mode"] = "2" },
        { ["Name"] = "QG_17-3", ["Coords"] = vec3(978.78,487.06,112.25), ["Mode"] = "2" },
        { ["Name"] = "QG_17-4", ["Coords"] = vec3(899.57,359.74,112.49), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(929.15,391.51,112.47), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(890.0,383.37,119.23),"QG_17" },
        
    },
    INTERPHONE = {
        
        -- {vector3(860.8,369.88,118.03),"QG_17"},
        
    },
    SURVIVAL = {
        
        ["QG_17"] = vec3(912.86,366.52,112.32),
        
    },
    WORLD_PVP = {
        
        {vector4(949.51,412.95,112.03,198.43),"QG_17"},
        
    },
    RISK_ZONES = {
        
        {vec3(912.86,366.52,112.32),"QG_17"}, -- QG_17
        
        
    },
    RDM_ZONES = {
        
        ["QG_17"] = {
            {
                vector2(1010.61, 481.44),
                vector2(998.11, 495.45),
                vector2(975.00, 504.55),
                vector2(947.73, 510.98),
                vector2(917.05, 513.64),
                vector2(922.35, 479.55),
                vector2(920.83, 450.00),
                vector2(905.30, 415.91),
                vector2(880.68, 384.47),
                vector2(841.29, 346.21),
                vector2(803.79, 329.92),
                vector2(830.30, 289.39),
                vector2(799.24, 254.17),
                vector2(813.64, 230.68),
                vector2(832.20, 221.59),
                vector2(875.76, 276.52),
                vector2(935.98, 336.36),
                vector2(977.27, 386.36),
                vector2(982.95, 417.05),
                vector2(990.91, 452.65),
                vector2(1004.55, 471.97)
            }, {
                name="QG_17",
                --debugGrid=true,
            },
        }  
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_18"] = {
    GARAGES = {
        
        -- QG_18
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1540.99,-435.67,35.59,0.0),
                ["Positions"] = {
                    [1] = vector4(-1525.99,-433.6,35.55,229.61),
                    [2] = vector4(-1530.46,-439.16,35.54,232.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1808.26,480.66,133.72,8.51),
                ["Positions"] = {
                    [1] = vector4(-1807.22,485.78,133.7,269.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1887.12,2039.19,140.88,0.0),
                ["Positions"] = {
                    [1] = vector4(-1889.96,2026.05,140.83,158.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1910.24,2025.02,140.73,0.0),
                ["Positions"] = {
                    [1] = vector4(-1897.85,2021.42,140.88,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_18",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1924.11,2058.74,140.83,0.0),
                ["Positions"] = {
                    [1] = vector4(-1911.79,2055.26,140.83,260.79),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_18",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1897.92,1998.56,141.81,0.0),
                ["Positions"] = {
                    [1] = vector4(-1898.26,2003.89,141.89,269.3),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1886.69,2007.83,141.64), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_18" },
        { Coords = vec3(-1876.8,2039.56,140.22), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_18" },
        { Coords = vec3(-1919.44,2069.39,140.36), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_18" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_18-2", ["Coords"] = vec3(-1890.52,2063.78,145.57), ["Mode"] = "2" },
        { ["Name"] = "QG_18-3", ["Coords"] = vec3(-1899.63,2066.72,140.85), ["Mode"] = "2" },
        { ["Name"] = "QG_18-4", ["Coords"] = vec3(-1881.59,2060.72,140.98), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1880.58,2055.0,140.98), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(-1871.06,2056.28,140.97),"QG_18" },
        { vec3(-1890.85,2058.49,140.98),"QG_18" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1872.51,2042.29,139.85),"QG_18"},
        
    },
    SURVIVAL = {
        
        ["QG_18"] = vec3(-1888.62,2044.84,141.84),
        
    },
    WORLD_PVP = {
        
        {vector4(-1897.42,2059.38,140.91,85.04),"QG_18"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1888.62,2044.84,141.84),"QG_18"}, -- QG_18        
        
    },
    RDM_ZONES = {
        
        ["QG_18"] = {
            {
                vector2(-1909.09, 1979.17),
                vector2(-1875.38, 1978.79),
                vector2(-1872.35, 2007.95),
                vector2(-1839.39, 2034.85),
                vector2(-1840.53, 2070.08),
                vector2(-1875.38, 2095.45),
                vector2(-1915.53, 2089.02),
                vector2(-1937.12, 2061.74),
                vector2(-1944.70, 2025.76),
                vector2(-1930.68, 2020.45),
                vector2(-1910.23, 2008.33)
            }, {
                name="QG_18",
                --debugGrid=true,
            },        
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_19"] = {
    GARAGES = {
        -- QG_19
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1531.66,80.09,56.73,65.2),
                ["Positions"] = {
                    [1] = vector4(-1527.74,88.03,56.6,255.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-973.05,326.05,70.7,150.24),
                ["Positions"] = {
                    [1] = vector4(-971.06,316.57,70.36,209.77),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1037.47,320.72,66.88,124.73),
                ["Positions"] = {
                    [1] = vector4(-1047.13,319.15,66.79,291.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_19",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1519.25,82.16,56.55,5.67),
                ["Positions"] = {
                    [1] = vector4(-1527.74,88.03,56.6,255.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_19",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1065.32,297.12,70.75,259.90),
                ["Positions"] = {
                    [1] = vector4(-1061.63,293.96,70.75,10.02),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_19",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1010.13,298.28,68.34,269.3),
                ["Positions"] = {
                    [1] = vector4(-1001.57,296.42,68.29,289.14),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_19",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1054.98,320.93,66.64,8.51),
                ["Positions"] = {
                    [1] = vector4(-1048.98,318.24,66.78,110.56),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1036.19,329.23,68.04), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_19" },
        { Coords = vec3(-1064.75,316.19,65.88), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_19" },
        { Coords = vec3(-953.39,300.84,70.79), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_19" },
        { Coords = vec3(-944.08,291.8,70.4), Hash = -1568354151, Lock = true, Distance = 5.5, Perm = "QG_19" },
        { Coords = vec3(-955.72,336.4,71.33), Hash = -1568354151, Lock = true, Distance = 5.5, Perm = "QG_19" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_19-2", ["Coords"] = vec3(-1051.93,308.84,62.21), ["Mode"] = "2" },
        { ["Name"] = "QG_19-3", ["Coords"] = vec3(-1047.79,299.06,62.21), ["Mode"] = "2" },
        { ["Name"] = "QG_19-4", ["Coords"] = vec3(-1042.43,302.87,66.99), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1058.63,298.54,65.98), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        { vec3(-1047.46,310.48,62.21),"QG_19" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1040.03,331.48,67.9),"QG_19"},
        
    },
    SURVIVAL = {
        
        ["QG_19"] = vec3(-1049.47,303.29,66.99),
        
    },
    WORLD_PVP = {
        
        {vector4(-995.98,316.3,69.19,5.67),"QG_19"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1049.47,303.29,66.99),"QG_19"}, -- QG_19       
        
    },
    RDM_ZONES = {
        
        ["QG_19"] = {
            {
                vector2(-1071.21, 278.03),
                vector2(-1059.47, 273.48),
                vector2(-1001.52, 273.48),
                vector2(-946.97, 267.05),
                vector2(-926.89, 258.33),
                vector2(-920.45, 263.64),
                vector2(-928.03, 294.70),
                vector2(-931.06, 324.62),
                vector2(-932.95, 334.85),
                vector2(-947.73, 348.11),
                vector2(-966.29, 356.06),
                vector2(-986.36, 339.77),
                vector2(-1009.85, 332.20),
                vector2(-1038.64, 331.06),
                vector2(-1056.82, 331.82),
                vector2(-1068.18, 328.79),
                vector2(-1071.21, 304.92),
                vector2(-1071.97, 290.15)
            }, {
                name="QG_19",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_20"] = {
    GARAGES = {
        --QG_20
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1465.3,62.66,52.93,218.27),
                ["Positions"] = {
                    [1] = vector4(-1465.43,60.07,52.81,269.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1655.06,97.5,63.59,147.41),
                ["Positions"] = {
                    [1] = vector4(-1655.39,89.4,63.62,59.53),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_20",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1515.33,91.21,56.14,141.74),
                ["Positions"] = {
                    [1] = vector4(-1517.93,87.16,56.28,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_20",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1608.92,68.35,61.11,255.12),
                ["Positions"] = {
                    [1] = vector4(-1615.06,65.73,61.3,51.03),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_20",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1478.53,61.27,53.6,99.22),
                ["Positions"] = {
                    [1] = vector4(-1477.19,56.35,53.48,113.39),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1613.65,78.07,61.57), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_20" },
        { Coords = vec3(-1579.05,152.66,58.67), Hash = -185971240, Lock = true, Distance = 5.5, Perm = "QG_20" },
        { Coords = vec3(-1441.81,172.49,55.81), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_20" },
        { Coords = vec3(-1433.94,235.81,60.04), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_20" },
        { Coords = vec3(-1461.54,65.58,52.91), Hash = -1859471240, Lock = true, Distance = 5.5, Perm = "QG_20" },
        { Coords = vec3(-1471.05,68.25,53.3), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_20" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_20-2", ["Coords"] = vec3(-1537.54,135.34,56.11), ["Mode"] = "2" },
        { ["Name"] = "QG_20-3", ["Coords"] = vec3(-1532.94,151.44,56), ["Mode"] = "2" },
        { ["Name"] = "QG_20-4", ["Coords"] = vec3(-1570.7,127.3,58.32), ["Mode"] = "2" },
        { ["Name"] = "QG_20-4", ["Coords"] = vec3(-1524.97,118.28,55.64), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1582.16,131.36,58.76), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1524.34,142.37,60.81),"QG_20" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1611.49,70.59,61.27),"QG_20"},
        
    },
    SURVIVAL = {
        
        ["QG_20"] = vec3(-1564.62,104.01,57.59),
        
    },
    WORLD_PVP = {
        
        {vector4(-1587.3,114.12,60.02,226.78),"QG_20"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1564.62,104.01,57.59),"QG_20"}, -- QG_20
        
    },
    RDM_ZONES = {
        
        ["QG_20"] = {
            {
                vector2(-1745.08, 63.64),
                vector2(-1664.02, -10.23),
                vector2(-1614.02, -75.38),
                vector2(-1570.83, -150.76),
                vector2(-1546.59, -156.82),
                vector2(-1448.11, -75.38),
                vector2(-1435.98, -45.08),
                vector2(-1435.98, -2.65),
                vector2(-1449.62, 96.97),
                vector2(-1440.53, 160.23),
                vector2(-1406.06, 203.03),
                vector2(-1441.67, 245.83),
                vector2(-1453.79, 244.32),
                vector2(-1500.00, 194.70),
                vector2(-1670.45, 105.68),
                vector2(-1702.27, 88.64),
                vector2(-1729.92, 79.17)
            }, {
                name="QG_20",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_22"] = {
        GARAGES = {
            -- QG_22
            {
                ["Info"] = {
                    ["Name"] = "Garage",
                    ["Payment"] = false,
                    ["Perm"] = nil,
                    ["Level"] = nil,
                },
                ["Teleport"] = false,
                ["Spawns"] = {
                    ["Open"] = vector4(-298.23,223.73,87.94,170.08),
                    ["Positions"] = {
                        [1] = vector4(-293.01,234.55,88.46,345.83),
                    },
                },
            },
            {
                ["Info"] = {
                    ["Name"] = "Garage",
                    ["Payment"] = false,
                    ["Perm"] = nil,
                    ["Level"] = nil,
                },
                ["Teleport"] = false,
                ["Spawns"] = {
                    ["Open"] = vector4(-339.89,229.01,85.88,19.85),
                    ["Positions"] = {
                        [1] = vector4(-347.89,236.4,85.39,286.3),
                    },
                },
            },
            {
                ["Info"] = {
                    ["Name"] = "vip",
                --["Heli"] = true,
                    ["Payment"] = false,
                    ["Perm"] = "QG_22",
                    ["Level"] = nil,
                },
                ["Spawns"] = {
                    ["Open"] = vector4(-323.19,234.2,86.86,167.25),
                    ["Positions"] = {
                        [1] = vector4(-327.3,243.74,86.59,286.3),
                    },
                },
            },
            {
                ["Info"] = {
                    ["Name"] = "vip",
                --["Heli"] = true,
                    ["Payment"] = false,
                    ["Perm"] = "QG_22",
                    ["Level"] = nil,
                },
                ["Spawns"] = {
                    ["Open"] = vector4(-355.85,210.91,86.51,272.13),
                    ["Positions"] = {
                        [1] = vector4(-342.12,191.77,88.28,11.93),
                    },
                },
            },
            {
                ["Info"] = {
                    ["Name"] = "vip",
                --["Heli"] = true,
                    ["Payment"] = false,
                    ["Perm"] = "QG_22",
                    ["Level"] = nil,
                },
                ["Spawns"] = {
                    ["Open"] = vector4(-351.77,285.29,84.81,277.8),
                    ["Positions"] = {
                        [1] = vector4(-344.69,292.62,85.21,195.6),
                    },
                },
            },
            
        }, 
    DOORS = {
        
        { Coords = vec3(-333.66,229.53,86.25), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_22" },
        { Coords = vec3(-328.94,230.91,86.54), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_22" },
        { Coords = vec3(-294.29,242.13,88.75), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_22" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_22-2", ["Coords"] = vec3(-307.22,209.23,145.31), ["Mode"] = "2" },
        { ["Name"] = "QG_22-3", ["Coords"] = vec3(-281.43,223.4,78.82), ["Mode"] = "2" },
        { ["Name"] = "QG_22-4", ["Coords"] = vec3(-288.11,215.1,81.77), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-303.13,209.21,88.06), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-310.53,213.66,145.31),"QG_22" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-337.08,229.53,86.04),"QG_22"},
        
    },
    SURVIVAL = {
        
        ["QG_22"] = vec3(-299.12,227.28,88.01),
        
    },
    WORLD_PVP = {
        
        {vector4(-359.14,176.26,87.92,175.75),"QG_22"},
        
    },
    RISK_ZONES = {
        
        {vec3(-299.12,227.28,88.01),"QG_22"}, -- QG_22        
        
    },
    RDM_ZONES = {
        
        ["QG_22"] = {
            {
                vector2(-360.61, 217.05),
                vector2(-323.48, 226.89),
                vector2(-289.02, 240.91),
                vector2(-283.33, 189.39),
                vector2(-281.44, 139.39),
                vector2(-361.36, 138.64),
                vector2(-362.12, 182.58)
            }, {
                name="QG_22",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_23"] = {
    GARAGES = {
        -- QG_23
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1006.8,895.68,210.91,0.0),
                ["Positions"] = {
                    [1] = vector4(999.96,892.38,209.71,138.9),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(833.39,1030.28,278.93,175.75),
                ["Positions"] = {
                    [1] = vector4(831.37,1022.39,279.66,144.57),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(838.38,1027.17,279.08,320.32),
                ["Positions"] = {
                    [1] = vector4(831.33,1022.29,279.0,328.82),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(916.99,1059.83,276.39,0.0),
                ["Positions"] = {
                    [1] = vector4(922.86,1060.33,274.72,232.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_23",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1005.14,904.9,211.38,0.0),
                ["Positions"] = {
                    [1] = vector4(993.8,914.71,211.84,5.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_23",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(827.5,1029.9,278.97,218.27),
                ["Positions"] = {
                    [1] = vector4(831.37,1022.39,279.66,144.57),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_23",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1662.32,494.4,128.87,0.0),
                ["Positions"] = {
                    [1] = vector4(-1668.94,500.93,128.87,28.35),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_23",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(814.0,1154.29,318.9,0.0),
                ["Positions"] = {
                    [1] = vector4(808.75,1162.82,320.6,28.35),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1003.52,899.2,210.66), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_23" },
        { Coords = vec3(811.34,1152.08,318.19), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_23" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_23-2", ["Coords"] = vec3(1034.92,917.0,222.06), ["Mode"] = "2" },
        { ["Name"] = "QG_23-3", ["Coords"] = vec3(1036.28,877.79,223.71), ["Mode"] = "2" },
        { ["Name"] = "QG_23-4", ["Coords"] = vec3(961.28,1024.29,259.0), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1019.86,938.29,219.96), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(965.57,1019.41,259.0),"QG_23" }, --
        
    },
    INTERPHONE = {
        
        -- {vector3(1000.36,904.69,210.66),"QG_23"},
        
    },
    SURVIVAL = {
        
        ["QG_23"] = vec3(1029.75,943.68,220.78),
        
    },
    WORLD_PVP = {
        
        {vector4(1020.76,883.51,220.36,36.86),"QG_23"},
        
    },
    RISK_ZONES = {
        
        {vec3(1029.75,943.68,220.78),"QG_23"}, -- QG_23
        
    },
    RDM_ZONES = {
        
        ["QG_23"] = {
            {
                vector2(985.61, 875.00),
                vector2(1032.58, 856.82),
                vector2(1078.03, 924.24),
                vector2(1043.94, 1045.45),
                vector2(938.64, 1124.24),
                vector2(798.48, 1215.15),
                vector2(733.33, 1174.24),
                vector2(746.21, 1087.88),
                vector2(763.64, 1022.73),
                vector2(835.61, 978.03),
                vector2(915.15, 990.91),
                vector2(978.79, 952.27)
            }, {
                name="QG_23",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_24"] = {
    GARAGES = {
        -- QG_24
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-610.58,-1603.74,26.74,357.17),
                ["Positions"] = {
                    [1] = vector4(-615.24,-1592.83,26.74,136.07),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-632.28,-1662.35,25.97,334.49),
                ["Positions"] = {
                    [1] = vector4(-629.12,-1654.5,25.81,337.33),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-562.27,-1656.07,19.17,246.62),
                ["Positions"] = {
                    [1] = vector4(-554.62,-1663.22,19.16,238.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-668.87,-1644.72,24.82,133.23),
                ["Positions"] = {
                    [1] = vector4(-671.97,-1642.95,24.65,223.94),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-610.62,-1603.68,26.74,62.37),
                ["Positions"] = {
                    [1] = vector4(-611.65,-1598.22,26.74,85.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_24",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-555.01,-1645.84,19.11,161.58),
                ["Positions"] = {
                    [1] = vector4(-550.87,-1645.89,19.02,158.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_24",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-630.73,-1649.4,25.97,68.04),
                ["Positions"] = {
                    [1] = vector4(-626.86,-1652.96,25.81,340.16),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_24",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-630.84,-1612.11,26.02,56.7),
                ["Positions"] = {
                    [1] = vector4(-633.99,-1614.01,25.49,147.41),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_24",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3247.53,5201.65,20.47,238.12),
                ["Positions"] = {
                    [1] = vector4(3253.44,5211.04,20.39,232.45),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-656.53,-1639.49,25.04), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_24" },    
        { Coords = vec3(-646.4,-1645.92,25.34), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_24" },    
        { Coords = vec3(-563.78,-1650.71,19.19), Hash = 1286392437, Lock = true, Distance = 5.5, Perm = "QG_24" },    
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_24-2", ["Coords"] = vec3(-629.23,-1634.47,26.05), ["Mode"] = "2" },
        { ["Name"] = "QG_24-3", ["Coords"] = vec3(-620.87,-1640.04,26.35), ["Mode"] = "2" },
        { ["Name"] = "QG_24-4", ["Coords"] = vec3(-624.44,-1609.7,26.89), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-612.55,-1609.5,26.89), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-641.61,-1654.72,25.97),"QG_24" },
        
    },
    INTERPHONE = {
        -- {vector3(-653.64,-1641.48,25.02),"QG_24"},
        
    },
    SURVIVAL = {
        
        ["QG_24"] = vec3(-621.61,-1620.93,33.01),
        
    },
    WORLD_PVP = {
        
        {vector4(-616.35,-1643.98,25.97,141.74),"QG_24"},
        
    },
    RISK_ZONES = {
        
        {vec3(-621.61,-1620.93,33.0),"QG_24"}, -- QG_24 
        
    },
    RDM_ZONES = {
        
        ["QG_24"] = {
            {
                vector2(-610.98, -1685.98),
                vector2(-623.48, -1680.30),
                vector2(-637.50, -1670.83),
                vector2(-644.70, -1662.88),
                vector2(-653.03, -1656.06),
                vector2(-659.85, -1648.48),
                vector2(-668.18, -1640.15),
                vector2(-675.00, -1633.33),
                vector2(-668.18, -1617.05),
                vector2(-659.85, -1606.06),
                vector2(-646.59, -1594.70),
                vector2(-634.85, -1582.95),
                vector2(-623.86, -1573.11),
                vector2(-607.20, -1571.21),
                vector2(-589.39, -1572.35),
                vector2(-573.48, -1578.03),
                vector2(-560.23, -1585.23),
                vector2(-547.73, -1593.94),
                vector2(-529.92, -1603.03),
                vector2(-506.06, -1618.18),
                vector2(-526.14, -1635.98),
                vector2(-545.08, -1652.27),
                vector2(-564.77, -1668.18),
                vector2(-589.39, -1681.06)
            }, {
                name="QG_24",
                --debugGrid=true,
            },
        }  
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_27"] = {
    GARAGES = {
        -- QG_27        
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1511.78,-442.95,35.59,34.02),
                ["Positions"] = {
                    [1] = vector4(-1508.86,-437.34,35.45,124.73),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_27",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1529.67,-450.68,35.59,314.65),
                ["Positions"] = {
                    [1] = vector4(-1512.31,-435.13,35.44,85.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_27",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1525.92,-414.63,35.59,229.61),
                ["Positions"] = {
                    [1] = vector4(-1515.45,-423.69,35.44,221.11),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_27",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1534.8,-425.67,35.59,238.12),
                ["Positions"] = {
                    [1] = vector4(-1530.84,-433.79,35.44,232.45),
                },
            },
        },
        
    },    
    DOORS = {
  
        { Coords = vec3(-1516.29,-449.92,35.44), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_27" },      
        { Coords = vec3(-1593.23,-401.94,43.0), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_27" }, 
    },
    CHESTS = {
        
        { ["Name"] = "QG_27-2", ["Coords"] = vec3(-1567.23,-407.76,48.26), ["Mode"] = "2" },
        { ["Name"] = "QG_27-3", ["Coords"] = vec3(-1563.61,-403.74,48.26), ["Mode"] = "2" },
        { ["Name"] = "QG_27-4", ["Coords"] = vec3(-1562.62,-420.79,42.6), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1551.71,-410.76,42.76), ["Mode"] = "Personal" },        
        
    },
    CRAFT = {
        
        { vec3(-1568.2,-416.61,48.26),"QG_27" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1512.34,-448.69,35.44),"QG_27"},
        
    },
    SURVIVAL = {
        
        ["QG_27"] = vec3(-1562.86,-407.68,42.38),
        
    },
    WORLD_PVP = {
        
        {vector4(-1553.12,-428.65,42.14,243.78),"QG_27"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1562.86,-407.68,42.38),"QG_27"}, -- QG_27
        
        
    },
    RDM_ZONES = {
        
        ["QG_27"] = {
            {
                vector2(-1559.85, -360.23),
                vector2(-1479.17, -431.82),
                vector2(-1482.58, -444.70),
                vector2(-1565.91, -494.32),
                vector2(-1620.83, -451.52),
                vector2(-1622.35, -437.50)
            }, {
                name="QG_27",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_28"] = {
    GARAGES = {
        -- QG_28
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1823.98,6413.85,41.16,107.72),
                ["Positions"] = {
                    [1] = vector4(1821.18,6417.87,40.07,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1885.94,6448.17,85.13,51.03),
                ["Positions"] = {
                    [1] = vector4(1889.58,6439.9,85.13,153.08),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_28",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1749.47,6398.66,36.48,155.91),  
                ["Positions"] = {
                    [1] = vector4(1727.91,6394.08,34.1,164.41),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1741.64,6396.2,35.47), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_28" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_28-2", ["Coords"] = vec3(1869.12,6412.61,47.31), ["Mode"] = "2" },
        { ["Name"] = "QG_28-3", ["Coords"] = vec3(1871.12,6407.91,47.31), ["Mode"] = "2" },
        { ["Name"] = "QG_28-4", ["Coords"] = vec3(1859.62,6398.46,46.64), ["Mode"] = "2" },	
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1865.45,6395.93,46.64), ["Mode"] = "Personal" },
        
        
    },
    CRAFT = {
        { vec3(1871.64,6411.42,47.31),"QG_28" },	
        
    },
    INTERPHONE = {
        
        -- {vector3(1739.39,6391.97,35.32),"QG_28"},
        
    },
    SURVIVAL = {
        
        ["QG_28"] = vec3(1855.76,6389.41,45.48),
        
    },
    WORLD_PVP = {
        
        {vector4(1012.36,899.04,211.8,79.38),"QG_28"},
        
    },
    RISK_ZONES = {
        
        {vec3(1855.76,6389.41,45.48),"QG_28"}, -- QG_28
        
        
    },
    RDM_ZONES = {
        
        ["QG_28"] = {
            {
                vector2(1729.55, 6364.39),
                vector2(1748.86, 6409.85),
                vector2(1778.79, 6414.77),
                vector2(1801.89, 6434.47),
                vector2(1842.80, 6429.17),
                vector2(2068.56, 6469.32),
                vector2(2081.82, 6407.20),
                vector2(2025.38, 6351.89),
                vector2(1970.45, 6293.18),
                vector2(1896.97, 6336.36),
                vector2(1815.91, 6354.55)
            }, {
                name="QG_28",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_29"] = {
    GARAGES = {
        -- QG_29 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-316.33,2042.75,145.77,325.99),
                ["Positions"] = {
                    [1] = vector4(-318.07,2031.86,147.35,334.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-202.6,1922.6,203.26,170.08),
                ["Positions"] = {
                    [1] = vector4(-199.1,1930.3,203.19,170.08),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(22.98,3698.19,39.95,0.0),
                ["Positions"] = {
                    [1] = vector4(29.41,3694.59,40.36,215.44),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-189.19,1907.79,197.5,14.18),
                ["Positions"] = {
                    [1] = vector4(-198.89,1906.51,196.11,257.96),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_29",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(28.73,3724.88,39.66,0.0),
                ["Positions"] = {
                    [1] = vector4(34.61,3722.34,40.3,150.24),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_29",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-198.09,1921.85,203.26,172.92),
                ["Positions"] = {
                    [1] = vector4(-199.1,1930.3,203.19,170.08),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_29",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-199.3,1909.92,196.15,164.41),
                ["Positions"] = {
                    [1] = vector4(-198.89,1906.51,196.11,257.96),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_29",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-149.49,1910.7,197.41,215.44),
                ["Positions"] = {
                    [1] = vector4(-156.77,1916.39,197.48,178.59),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-172.86,1903.43,198.12), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_29" },
        { Coords = vec3(-305.98,2051.86,143.85), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_29" },
                
    },
    CHESTS = {
        
        { ["Name"] = "QG_29-2", ["Coords"] = vec3(-298.03,1931.19,165.3), ["Mode"] = "2" },
        { ["Name"] = "QG_29-3", ["Coords"] = vec3(-287.05,1922.33,165.3), ["Mode"] = "2" },
        { ["Name"] = "QG_29-4", ["Coords"] = vec3(-284.94,1930.32,165.3), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-269.24,1939.03,163.51), ["Mode"] = "Personal" },
        
    },
    CRAFT = {

        { vec3(-294.35,1919.21,165.3),"QG_29" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-173.2,1906.98,198.04),"QG_29"},
        
    },
    SURVIVAL = {
        
        ["QG_29"] = vec3(-172.53,1902.93,198.12),
        
    },
    WORLD_PVP = {
        
        { vector3(-302.98,1928.76,158.12),"QG_29" },
        
    },
    RISK_ZONES = {
        
        {vec3(-172.53,1902.93,198.12),"QG_29"},
        
    },
    RDM_ZONES = {        
        ["QG_29"] = {
            {
                vector2(-176.89, 1877.27),
                vector2(-276.52, 1829.92),
                vector2(-345.45, 1882.58),
                vector2(-364.02, 1986.74),
                vector2(-365.91, 2039.39),
                vector2(-305.68, 2101.14),
                vector2(-210.98, 2043.18),
                vector2(-145.08, 1960.61)
            }, {
                name="QG_29",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_30"] = {
    GARAGES = {
        -- QG_30
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(603.24,362.38,118.49,0.0),
                ["Positions"] = {
                    [1] = vector4(604.67,355.14,119.01,297.64),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(532.42,448.22,174.26,294.81),
                ["Positions"] = {
                    [1] = vector4(525.5,442.78,174.13,294.81),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_30",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(588.22,355.24,121.03,0.0),
                ["Positions"] = {
                    [1] = vector4(590.34,346.84,121.76,300.48),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_30",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(533.53,441.33,174.11,76.54),
                ["Positions"] = {
                    [1] = vector4(524.41,441.13,174.13,113.39),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(476.25,404.11,140.11,0.0),
                ["Positions"] = {
                    [1] = vector4(468.57,403.17,139.26,28.35),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_30",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(480.64,371.68,137.8,0.0),
                ["Positions"] = {
                    [1] = vector4(475.79,372.18,138.45,2.84),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(460.22,410.44,139.6), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_30" },
        { Coords = vec3(652.62,359.66,111.78), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_30" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_30-2", ["Coords"] = vec3(499.85,399.63,146.37), ["Mode"] = "2" },
        { ["Name"] = "QG_30-3", ["Coords"] = vec3(486.88,400.37,142.65), ["Mode"] = "2" },
        { ["Name"] = "QG_30-4", ["Coords"] = vec3(477.51,393.7,139.08), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(480.99,366.81,137.58), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(501.13,389.27,152.86),"QG_30" },
        { vec3(511.86,355.63,145.36),"QG_30" },
        
    },
    INTERPHONE = {
        
        -- {vector3(655.42,354.35,111.07),"QG_30"},
        
    },
    SURVIVAL = {
        
        ["QG_30"] = vec3(509.62,358.61,145.35),
        
    },
    WORLD_PVP = {
        { vector3(481.9,360.39,137.26),"QG_30" },
    },
    RISK_ZONES = {
        
        {vec3(509.62,358.61,145.35),"QG_30"},
        
    },
    RDM_ZONES = {
        
        ["QG_30"] = {
            {
                vector2(465.15, 400.76),
                vector2(483.33, 342.42),
                vector2(517.42, 322.73),
                vector2(562.88, 326.52),
                vector2(620.45, 353.03),
                vector2(645.45, 353.79),
                vector2(654.55, 426.52),
                vector2(557.58, 468.94),
                vector2(497.73, 459.09)
            }, {
                name="QG_30",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_31"] = {
    GARAGES = {
        -- QG_31
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(951.8,3232.09,38.22,0.0),
                ["Positions"] = {
                    [1] = vector4(916.8,3221.75,38.5,96.38),
                },
            },
        },      
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1100.96,3251.11,37.91,257.96),
                ["Positions"] = {
                    [1] = vector4(1079.4,3252.32,37.66,280.63),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_31",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(949.96,3221.5,38.45,0.0),
                ["Positions"] = {
                    [1] = vector4(936.88,3222.85,39.14,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_31",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1106.41,3261.72,38.01,144.57),
                ["Positions"] = {
                    [1] = vector4(1097.37,3254.5,37.91,277.8),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(933.57,3222.3,38.54), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_31" },
        { Coords = vec3(1111.9,3255.66,38.11), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_31" },
        { Coords = vec3(1117.39,3527.86,34.51), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_31" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_31-2", ["Coords"] = vec3(1020.53,3280.3,44.13), ["Mode"] = "2" },
        { ["Name"] = "QG_31-3", ["Coords"] = vec3(1009.81,3288.08,44.13), ["Mode"] = "2" },
        { ["Name"] = "QG_31-4", ["Coords"] = vec3(1034.3,3342.66,46.74), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1018.63,3318.28,44.11), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1064.06,3284.3,44.13),"QG_31" },
        { vec3(1007.08,3303.93,44.13),"QG_31" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1114.3,3261.18,38.03),"QG_31"},
        
    },
    SURVIVAL = {
        
        ["QG_31"] = vec3(1026.93,3303.46,44.15),
        
    },
    WORLD_PVP = {
        
        {vector4(1129.48,3529.27,34.61,354.34),"QG_31"},
        
    },
    RISK_ZONES = {
        
        {vec3(1026.93,3303.46,44.15),"QG_31"},
        
    },
    RDM_ZONES = {
        ["QG_31"] = {
            {
                vector2(1146.97, 3519.70),
                vector2(1190.91, 3248.48),
                vector2(1115.15, 3230.30),
                vector2(918.18, 3196.97),
                vector2(910.61, 3256.06),
                vector2(980.30, 3287.88),
                vector2(969.70, 3518.18)
            }, {
                name="QG_31",
                --debugGrid=true,
            }, 
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_32"] = {
    GARAGES = {
        -- QG_32
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(165.68,669.91,207.56,39.69),
                ["Positions"] = {
                    [1] = vector4(166.33,665.56,207.17,257.96),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(185.04,757.8,210.61,127.56),
                ["Positions"] = {
                    [1] = vector4(191.19,763.8,210.5,28.35),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(130.99,714.77,209.93,357.17),
                ["Positions"] = {
                    [1] = vector4(134.51,709.4,209.71,51.03),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_32",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(125.83,711.62,209.81,235.28),
                ["Positions"] = {
                    [1] = vector4(131.1,711.59,209.81,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_32",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(182.63,761.53,210.67,317.49),
                ["Positions"] = {
                    [1] = vector4(191.19,763.8,210.5,28.35),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_32",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(164.1,782.21,209.73,36.86),
                ["Positions"] = {
                    [1] = vector4(165.78,778.29,209.88,317.49),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(122.34,575.81,183.09), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_32" },
        { Coords = vec3(170.72,783.84,208.77), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_32" },
        { Coords = vec3(119.75,718.48,209.06), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_32" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_32-2", ["Coords"] = vec3(156.1,718.49,208.7), ["Mode"] = "2" },
        { ["Name"] = "QG_32-3", ["Coords"] = vec3(174.59,716.44,208.67), ["Mode"] = "2" },
        { ["Name"] = "QG_32-4", ["Coords"] = vec3(189.49,730.28,208.62), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(164.62,662.52,207.34), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(179.13,681.64,207.45),"QG_32" },
        { vec3(140.17,724.0,213.45),"QG_32" },
        { vec3(180.64,660.3,207.56),"QG_32" },
        
    },
    INTERPHONE = {
        
        -- {vector3(126.66,575.99,183.22),"QG_32"},
        
    },
    SURVIVAL = {
        
        ["QG_32"] = vec3(167.06,669.72,207.61),
        
    },
    WORLD_PVP = {
        
        {vector4(150.12,682.83,210.1,314.65),"QG_32"},
        
    },
    RISK_ZONES = {
        
        {vec3(167.06,669.72,207.61),"QG_32"}, -- QG_32        
        
    },
    RDM_ZONES = {
        
        ["QG_32"] = {
            {
                vector2(33.33, 559.09),
                vector2(204.55, 581.82),
                vector2(216.67, 676.52),
                vector2(238.64, 707.58),
                vector2(200.00, 781.06),
                vector2(152.27, 809.09),
                vector2(80.30, 775.76),
                vector2(71.97, 646.21)
            }, {
                name="QG_32",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_33"] = {
    GARAGES = {
        -- QG_33
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1299.95,-724.89,64.74,328.82),
                ["Positions"] = {
                    [1] = vector4(1300.41,-721.14,64.53,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1320.03,-717.15,65.31,167.25),
                ["Positions"] = {
                    [1] = vector4(1317.37,-720.6,65.16,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1338.26,-756.48,71.49,155.91),
                ["Positions"] = {
                    [1] = vector4(1336.32,-761.78,71.53,70.87),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1309.13,-712.9,64.89,158.75),
                ["Positions"] = {
                    [1] = vector4(1312.65,-721.22,65.02,65.2),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_33",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1279.28,-734.26,63.94,56.7),
                ["Positions"] = {
                    [1] = vector4(1271.66,-735.24,63.49,317.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_33",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1301.94,-689.2,65.36,82.21),
                ["Positions"] = {
                    [1] = vector4(1298.5,-685.01,65.46,348.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_33",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1330.22,-778.23,71.49,348.67),
                ["Positions"] = {
                    [1] = vector4(1331.89,-772.97,71.49,68.04),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1292.47,-715.52,64.74), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_33" },  
        { Coords = vec3(1270.05,-754.6,65.82), Hash = -1934898817, Lock = true, Distance = 5.5, Perm = "QG_33" },  
        { Coords = vec3(1310.51,-663.96,69.08), Hash = -1934898817, Lock = true, Distance = 5.5, Perm = "QG_33" },  

        
    },
    CHESTS = {
        
        { ["Name"] = "QG_33-2", ["Coords"] = vec3(1334.19,-705.21,70.25), ["Mode"] = "2" },
        { ["Name"] = "QG_33-3", ["Coords"] = vec3(1404.3,-718.45,68.9), ["Mode"] = "2" },
        { ["Name"] = "QG_33-4", ["Coords"] = vec3(1341.92,-695.3,70.25), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1348.2,-715.75,67.74), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1332.23,-696.56,70.25),"QG_33" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1290.33,-719.11,64.67),"QG_33"},
        
    },
    SURVIVAL = {
        
        ["QG_33"] = vec3(1340.52,-703.88,66.39),
        
    },
    WORLD_PVP = {
        
        {vector4(1315.85,-707.27,67.85,150.24),"QG_33"},
        
    },
    RISK_ZONES = {
        
        {vec3(1340.52,-703.88,66.39),"QG_33"}, -- QG_33        
        
    },
    RDM_ZONES = {
        
        ["QG_33"] = {
            {
                vector2(1303.03, -654.55),
                vector2(1350.76, -659.09),
                vector2(1398.48, -655.30),
                vector2(1418.94, -643.18),
                vector2(1456.82, -645.45),
                vector2(1503.79, -661.36),
                vector2(1538.64, -688.64),
                vector2(1568.18, -738.64),
                vector2(1556.82, -785.61),
                vector2(1500.76, -832.58),
                vector2(1413.64, -873.48),
                vector2(1364.39, -894.70),
                vector2(1311.36, -856.06),
                vector2(1276.52, -802.27),
                vector2(1259.85, -756.82),
                vector2(1287.88, -719.70),
                vector2(1303.03, -688.64)
            }, {
                name="QG_33",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_34"] = {
    GARAGES = {
        -- QG_34
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(954.23,-312.64,66.98,45.36),
                ["Positions"] = {
                    [1] = vector4(948.39,-315.87,66.93,323.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(799.56,-236.98,66.12,68.04),
                ["Positions"] = {
                    [1] = vector4(790.46,-232.5,66.12,65.2),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(779.0,-287.85,59.97,144.57),
                ["Positions"] = {
                    [1] = vector4(778.91,-298.79,59.56,209.77),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_34",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(785.2,-322.98,59.87,8.51),
                ["Positions"] = {
                    [1] = vector4(764.35,-316.02,59.88,34.02),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_34",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(790.59,-253.95,66.12,70.87),
                ["Positions"] = {
                    [1] = vector4(783.29,-249.9,66.12,65.2),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(724.69,-352.78,43.17), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(754.13,-340.76,46.35), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(826.94,-320.55,57.15), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(706.22,-252.21,64.0), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(653.32,-340.83,38.28), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(638.04,-408.5,24.65), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(854.46,-308.28,65.55), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(800.14,-276.11,66.46), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(798.45,-276.97,66.49), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_34" },
        { Coords = vec3(739.09,-255.53,66.35), Hash = -1156020871, Lock = true, Distance = 1.0, Perm = "QG_34" },
        { Coords = vec3(742.34,-257.3,66.32), Hash = -1156020871, Lock = true, Distance = 1.0, Perm = "QG_34" },
        { Coords = vec3(854.01,-306.44,65.58), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_34" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_34-2", ["Coords"] = vec3(744.06,-307.21,57.02), ["Mode"] = "2" },
        { ["Name"] = "QG_34-3", ["Coords"] = vec3(748.59,-291.7,62.95), ["Mode"] = "2" },
        { ["Name"] = "QG_34-4", ["Coords"] = vec3(749.49,-285.46,59.72), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(731.78,-299.88,56.14), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        -- { vec3(749.54,-368.71,45.46),"QG_34" },
        { vec3(737.24,-271.51,58.55),"QG_34" },
        
    },
    INTERPHONE = {
        
        -- {vector3(757.8,-340.36,46.71),"QG_34"},
        
    },
    SURVIVAL = {
        
        ["QG_34"] = vec3(752.31,-315.5,59.8),
        
    },
    WORLD_PVP = {
        
        {vector4(717.95,-354.5,43.24,289.14),"QG_34"},
        
    },
    RISK_ZONES = {
        
        {vec3(752.31,-315.5,59.8),"QG_34"}, -- QG_34
        
    },
    RDM_ZONES = {
        
        ["QG_34"] = {
            {
                vector2(664.39, -383.33),
                vector2(622.35, -360.23),
                vector2(734.85, -187.12),
                vector2(854.55, -251.52),
                vector2(854.92, -329.55)
            }, {
                name="QG_34",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_36"] = {
    GARAGES = {
        -- QG_36
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2894.52,2726.88,71.61,0.0),
                ["Positions"] = {
                    [1] = vector4(2900.77,2722.11,72.67,209.77),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2714.72,2739.99,40.83,0.0),
                ["Positions"] = {
                    [1] = vector4(2715.92,2733.34,40.84,147.41),
                },
            },
        },     
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2707.02,2777.28,37.88,0.0),
                ["Positions"] = {
                    [1] = vector4(2703.29,2779.11,38.54,119.06),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2833.19,2795.39,57.49,0.0),
                ["Positions"] = {
                    [1] = vector4(2826.86,2787.76,58.3,187.09),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_36",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2801.36,2627.91,113.99,0.0),
                ["Positions"] = {
                    [1] = vector4(2803.27,2619.2,114.44,209.77),
                },
            },
        },       
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_36",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2764.16,2807.31,41.35,0.0),
                ["Positions"] = {
                    [1] = vector4(2779.93,2812.24,41.59,308.98),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_36",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2687.11,2754.68,37.44,0.0),
                ["Positions"] = {
                    [1] = vector4(2686.34,2767.11,38.54,212.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_36",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2655.82,2733.47,40.64,0.0),
                ["Positions"] = {
                    [1] = vector4(2648.31,2734.25,41.27,102.05),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(2806.99,2823.83,41.97), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_36" },
        { Coords = vec3(2901.84,2719.01,72.17), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_36" },
        { Coords = vec3(2591.21,2723.83,42.5), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_36" },        
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_36-2", ["Coords"] = vec3(2778.39,2688.3,56.06), ["Mode"] = "2" },
        { ["Name"] = "QG_36-3", ["Coords"] = vec3(2727.12,2700.93,55.87), ["Mode"] = "2" },
        { ["Name"] = "QG_36-4", ["Coords"] = vec3(2785.9,2704.08,55.87), ["Mode"] = "2" },
        {["Name"] = "PlayerChest", ["Coords"] = vec3(2781.35,2707.76,55.86), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2734.48,2753.0,46.71),"QG_36" },
        { vec3(2761.22,2687.9,55.86),"QG_36" },
        { vec3(2760.82,2688.3,55.86),"QG_36" },
        { vec3(2691.29,2717.91,40.98),"QG_36" },
        
    },
    INTERPHONE = {
        
        -- {vector3(2589.78,2729.46,42.53),"QG_36"},
        
    },
    SURVIVAL = {
        
        ["QG_36"] = vec3(2682.4,2723.24,40.94),
        
    },
    WORLD_PVP = {
        
        { vector3(2771.86,2696.88,55.84),"QG_36" },
        
    },
    RISK_ZONES = {
        
        {vec3(2682.4,2723.24,40.94),"QG_36"},
        
    },
    RDM_ZONES = {
        
        ["QG_36"] = {
            {
                vector2(2760.61, 2822.73),
                vector2(2915.15, 2653.03),
                vector2(2816.67, 2551.52),
                vector2(2560.61, 2701.52)
            }, {
                name="QG_36",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_40"] = {
    GARAGES = {
        -- QG_40
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1805.98,377.6,172.17,294.81),
                ["Positions"] = {
                    [1] = vector4(1809.57,378.0,172.05,198.43),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1809.99,470.64,171.36,62.37),
                ["Positions"] = {
                    [1] = vector4(1809.75,473.68,171.31,277.8),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1907.69,485.82,171.7,0.0),
                ["Positions"] = {
                    [1] = vector4(1906.54,494.55,171.72,345.83),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_40",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1899.79,489.62,171.87,5.67),
                ["Positions"] = {
                    [1] = vector4(1909.86,508.44,171.95,345.83),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_40",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1945.17,604.33,176.22,0.0),
                ["Positions"] = {
                    [1] = vector4(1938.74,597.21,176.59,331.66),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_40",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1822.65,446.44,168.35,116.23),
                ["Positions"] = {
                    [1] = vector4(1816.08,445.26,168.48,68.04),
                },
            },
        },
    },    
    DOORS = {

        { Coords = vec3(1893.34,478.22,171.80), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_40" },
        { Coords = vec3(1808.05,380.68,172.22), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_40" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_40-2", ["Coords"] = vec3(1838.09,453.21,166.66), ["Mode"] = "2" },
        { ["Name"] = "QG_40-3", ["Coords"] = vec3(1846.28,449.94,166.66), ["Mode"] = "2" },
        { ["Name"] = "QG_40-4", ["Coords"] = vec3(1830.0,456.44,166.75), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1846.49,421.36,166.7), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1833.57,401.77,166.66),"QG_40" },
        { vec3(1846.37,425.32,166.64),"QG_40" },
        
    },
    INTERPHONE = {
        
    },
    SURVIVAL = {
        
        ["QG_40"] = vec3(1836.62,403.84,166.64),
        
    },
    WORLD_PVP = {
        
        { vector3(1833.72,454.04,166.66),"QG_40" },
        
    },
    RISK_ZONES = {
        
        {vec3(1836.62,403.84,166.64),"QG_40"}, -- Amarelos
        
    },
    RDM_ZONES = {        
        ["QG_40"] = {
            {
                vector2(1827.27, 367.42),
                vector2(1639.39, 359.09),
                vector2(1519.70, 389.39),
                vector2(1547.73, 521.97),
                vector2(1581.06, 556.06),
                vector2(1643.94, 547.73),
                vector2(1695.45, 610.61),
                vector2(1743.18, 603.79),
                vector2(1793.94, 543.18),
                vector2(1871.97, 506.82),
                vector2(1909.09, 470.45),
                vector2(1874.24, 389.39)
            }, {
                name="QG_40",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_41"] = {
    GARAGES = {
        -- QG_41
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2184.53,3980.71,33.67,0.0),
                ["Positions"] = {
                    [1] = vector4(2184.95,3974.34,33.55,121.89),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2084.63,3863.1,33.14,215.44),
                ["Positions"] = {
                    [1] = vector4(2079.93,3856.15,33.23,116.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2417.07,3980.46,38.32,0.0),
                ["Positions"] = {
                    [1] = vector4(2415.21,3988.42,39.07,255.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_41",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2105.35,3861.42,32.69,0.0),
                ["Positions"] = {
                    [1] = vector4(2101.52,3849.47,32.62,127.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_41",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2393.86,3990.62,37.54,0.0),
                ["Positions"] = {
                    [1] = vector4(2388.69,3996.95,37.59,255.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_41",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2233.17,3978.32,33.67,0.0),
                ["Positions"] = {
                    [1] = vector4(2235.49,3986.0,33.55,90.71),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_41",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2243.52,3878.0,39.02,107.72),
                ["Positions"] = {
                    [1] = vector4(2255.44,3880.7,40.71,206.93),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(2092.03,3863.07,33.19), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_41" },
        { Coords = vec3(2430.73,3984.11,36.7), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_41" },        
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_41-2", ["Coords"] = vec3(2330.71,4018.92,41.08), ["Mode"] = "2" },
        { ["Name"] = "QG_41-3", ["Coords"] = vec3(2201.77,3996.64,34.41), ["Mode"] = "2" },
        { ["Name"] = "QG_41-4", ["Coords"] = vec3(2239.4,3994.66,33.7), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2233.18,3998.11,33.83), ["Mode"] = "Personal" },
        
        
    },
    CRAFT = {
        
        { vec3(2261.64,3964.98,33.77),"QG_41" },
        { vec3(2259.3,3998.7,33.68),"QG_41" },
        { vec3(2310.07,4015.15,41.08),"QG_41" },
        
    },
    INTERPHONE = {
        
        -- {vector3(2093.4,3859.28,33.16),"QG_41"},
        
    },
    SURVIVAL = {
        
        ["QG_41"] = vec3(2092.03,3862.58,33.58),
        
    },
    WORLD_PVP = {
        
        {vector4(2169.63,3976.59,33.65,235.28),"QG_41"},
        
    },
    RISK_ZONES = {
        
        {vec3(2092.03,3862.58,33.58),"QG_41"}, -- QG_41
        
        
    },
    RDM_ZONES = {
        
        ["QG_41"] = {
            {
                vector2(2070.08, 3862.12),
                vector2(2104.17, 3816.29),
                vector2(2120.08, 3817.05),
                vector2(2184.09, 3857.58),
                vector2(2215.91, 3807.95),
                vector2(2300.76, 3855.30),
                vector2(2390.15, 3925.76),
                vector2(2435.61, 3986.36),
                vector2(2459.85, 4035.61),
                vector2(2418.94, 4043.94),
                vector2(2354.55, 4052.27),
                vector2(2274.24, 4027.27),
                vector2(2182.58, 3986.36),
                vector2(2173.48, 4017.42),
                vector2(2127.27, 4016.67),
                vector2(2113.64, 3977.27),
                vector2(2123.48, 3958.33),
                vector2(2103.79, 3905.30)
            }, {
                name="QG_41",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_43"] = {
    GARAGES = {
        -- QG_43
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(74.13,-1877.09,22.98,153.08),
                ["Positions"] = {
                    [1] = vector4(81.37,-1874.05,22.87,325.99),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(76.24,-1925.6,20.96,235.28),
                ["Positions"] = {
                    [1] = vector4(75.84,-1919.72,20.54,48.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_43",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2.81,-1863.49,23.99,328.82),
                ["Positions"] = {
                    [1] = vector4(5.24,-1859.89,23.59,48.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_43",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(43.59,-1896.76,21.82,240.95),
                ["Positions"] = {
                    [1] = vector4(46.66,-1894.81,21.33,48.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_43",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(92.31,-1944.68,20.76,11.34),
                ["Positions"] = {
                    [1] = vector4(97.34,-1942.31,20.35,31.19),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(65.23,-1908.13,21.65), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_43" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_43-2", ["Coords"] = vec3(103.06,-1966.85,20.84), ["Mode"] = "2" },
        { ["Name"] = "QG_43-3", ["Coords"] = vec3(122.51,-1974.73,21.33), ["Mode"] = "2" },
        { ["Name"] = "QG_43-4", ["Coords"] = vec3(110.83,-1967.81,21.33), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(118.74,-1950.93,20.74), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(111.5,-1962.31,20.94),"QG_43" },
        
    },
    INTERPHONE = {
        
        -- {vector3(62.44,-1911.41,21.45),"QG_43"},
        
    },
    SURVIVAL = {
        
        ["QG_43"] = vec3(118.15,-1950.59,20.74),	
        
    },
    WORLD_PVP = {
        
        {vector4(84.74,-1972.54,20.83,320.32),"QG_43"},
        
    },
    RISK_ZONES = {
        
        {vec3(118.15,-1950.59,20.74),"QG_43"}, -- QG_43
        
    },
    RDM_ZONES = {
        ["QG_43"] = {
            {
                vector2(94.32, -2019.32),
                vector2(76.14, -1978.79),
                vector2(29.55, -1939.39),
                vector2(100.38, -1871.21),
                vector2(196.97, -1918.18),
                vector2(151.14, -1976.52),
                vector2(135.61, -1999.24),
                vector2(129.92, -2022.35)
            }, {
                name="QG_43",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_44"] = {
    GARAGES = {
        -- QG_44
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(902.67,13.44,79.03,85.04),
                ["Positions"] = {
                    [1] = vector4(893.73,11.23,78.87,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-681.17,603.43,143.64,0.0),
                ["Positions"] = {
                    [1] = vector4(-685.04,607.28,143.98,144.57),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_44",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(940.38,-38.24,78.76,0.0),
                ["Positions"] = {
                    [1] = vector4(923.97,-58.76,78.76,147.41),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_44",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(918.31,62.75,80.9,119.06),
                ["Positions"] = {
                    [1] = vector4(919.26,52.05,80.9,328.82),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_44",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(886.49,-0.36,78.76,0.0),
                ["Positions"] = {
                    [1] = vector4(871.76,-21.79,78.77,147.41),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(884.8,13.17,78.89), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(888.0,18.33,78.89), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(929.13,82.81,78.81), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(933.28,87.83,78.89), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(958.61,-25.83,78.86), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(955.5,-31.04,78.76), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },
        { Coords = vec3(884.48,-87.75,78.76), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(878.96,-84.34,78.76), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_44" },	
        { Coords = vec3(968.15,85.93,80.98), Hash = -1249591818, Lock = true, Distance = 5.5, Perm = "QG_44" },	  
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_44-2", ["Coords"] = vec3(963.24,24.12,76.99), ["Mode"] = "2" },
        { ["Name"] = "QG_44-3", ["Coords"] = vec3(961.71,21.82,76.99), ["Mode"] = "2" },
        { ["Name"] = "QG_44-4", ["Coords"] = vec3(940.21,52.34,80.29), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(927.18,34.94,80.29), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(944.67,9.64,75.74),"QG_44" },
        { vec3(951.28,45.45,75.74),"QG_44" },
        
    },
    INTERPHONE = {
        
        -- {vector3(880.88,11.99,78.91),"QG_44"},
        
    },
    SURVIVAL = {
        
        ["QG_44"] = vec3(951.88,30.27,76.99),
        
    },
    WORLD_PVP = {
        
        {vector4(908.54,-6.05,78.89,133.23),"QG_44"},
        
    },
    RISK_ZONES = {
        
        {vec3(951.88,30.27,76.99),"QG_44"}, -- QG_44
        
    },
    RDM_ZONES = {
        ["QG_44"] = {
            {
                vector2(923.48, -115.15),
                vector2(953.03, -89.39),
                vector2(929.92, -71.21),
                vector2(1029.55, 73.86),
                vector2(1121.59, 221.21),
                vector2(1079.55, 246.59),
                vector2(1020.08, 168.94),
                vector2(1003.79, 178.79),
                vector2(878.79, 21.97),
                vector2(842.80, -7.58),
                vector2(815.15, -46.59)
            }, {
                name="QG_44",
                --debugGrid=true,
            },
        }        
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_46"] = {
    GARAGES = {
        -- QG_46
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-249.7,-1297.62,31.24,87.88),
                ["Positions"] = {
                    [1] = vector4(-254.83,-1297.12,31.27,90.71 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-232.54,-1311.01,31.29,0.0),
                ["Positions"] = {
                    [1] = vector4(-225.67,-1305.92,31.34,266.46 ),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_46",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-173.4,-1294.0,31.27,181.42),
                ["Positions"] = {
                    [1] = vector4(-173.41,-1302.27,31.32,90.71),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_46",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-193.37,-1283.96,31.54,272.13),
                ["Positions"] = {
                    [1] = vector4(-202.74,-1280.41,31.29,181.42),
                },
            },
        },
        
        
    },    
    DOORS = {
        
        { Coords = vec3(-244.64,-1305.61,31.29), Hash = -1603817716, Lock = true, Distance = 5.5, Perm = "QG_46" },
        { Coords = vec3(-143.72,-1296.81,30.77), Hash = -1603817716, Lock = true, Distance = 5.5, Perm = "QG_46" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_46-2", ["Coords"] = vec3(-196.08,-1340.12,34.9), ["Mode"] = "2" },
        { ["Name"] = "QG_46-3", ["Coords"] = vec3(-196.37,-1318.73,31.1), ["Mode"] = "2" },
        { ["Name"] = "QG_46-4", ["Coords"] = vec3(-216.34,-1317.63,30.9), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-218.22,-1320.89,30.89), ["Mode"] = "Personal" },
        
        
    },
    CRAFT = {
        
        { vec3(-1146.96,-1559.78,7.62),"QG_46" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-245.2,-1312.12,31.29),"QG_46"},
        
    },
    SURVIVAL = {
        
        ["QG_46"] = vec3(-182.04,-1313.84,31.29),
        
    },
    WORLD_PVP = {
        
        {vector4(-154.74,-1306.69,31.29,90.71 ),"QG_46"},
        
    },
    RISK_ZONES = {
        
        {vec3(-182.04,-1313.84,31.29),"QG_46"}, -- QG_46
        
        
    },
    RDM_ZONES = {
        ["QG_46"] = {
            {
                vector2(-253.41, -1253.79),
                vector2(-251.52, -1388.26),
                vector2(-247.35, -1407.95),
                vector2(-231.06, -1414.77),
                vector2(-195.45, -1400.76),
                vector2(-149.62, -1372.73),
                vector2(-123.48, -1351.89),
                vector2(-116.67, -1336.74),
                vector2(-116.67, -1292.80),
                vector2(-117.42, -1258.33),
                vector2(-117.80, -1247.35),
                vector2(-176.14, -1247.35),
                vector2(-223.86, -1251.52)
            }, {
                name="QG_46",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_47"] = {
    GARAGES = {
        
        -- QG_47
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1142.3,-1591.26,4.3,0.0),
                ["Positions"] = {
                    [1] = vector4(-1144.49,-1587.77,4.41,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1116.31,-1573.1,4.38,0.0),
                ["Positions"] = {
                    [1] = vector4(-1121.14,-1568.3,5.07,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_47",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1157.35,-1585.16,4.4,0.0),
                ["Positions"] = {
                    [1] = vector4(-1149.94,-1588.03,5.07,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_47",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1130.47,-1566.39,4.4,0.0),
                ["Positions"] = {
                    [1] = vector4(-1124.18,-1567.42,4.4,308.98),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1160.42,-1596.87,4.36), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_47" },
        { Coords = vec3(-1108.16,-1561.08,4.41), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_47" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_47-2", ["Coords"] = vec3(-1141.0,-1557.0,7.62), ["Mode"] = "2" },
        { ["Name"] = "QG_47-3", ["Coords"] = vec3(-1145.11,-1561.63,7.62), ["Mode"] = "2" },
        { ["Name"] = "QG_47-4", ["Coords"] = vec3(-1145.38,-1550.62,4.43), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1143.46,-1566.11,4.43), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1144.19,-1551.94,7.63),"QG_47" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1109.41,-1557.23,4.38),"QG_47"},
        
    },
    SURVIVAL = {
        
        ["QG_47"] = vec3(-1136.84,-1590.48,5.36),
        
    },
    WORLD_PVP = {
        
        {vector4(-1136.91,-1591.05,4.4,22.68),"QG_47"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1136.84,-1590.48,5.36),"QG_47"}, -- QG_47
        
    },
    RDM_ZONES = {
        
        ["QG_47"] = {
            {
                vector2(-1098.11, -1703.03),
                vector2(-1198.86, -1546.21),
                vector2(-1146.21, -1509.85),
                vector2(-1035.61, -1656.06)
            }, {
                name="QG_47",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_49"] = {
    GARAGES = {
        -- QG_49
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(200.87,1215.43,225.59,0.0),
                ["Positions"] = {
                    [1] = vector4(206.79,1223.02,226.11,286.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(228.15,1164.16,225.47,0.0),
                ["Positions"] = {
                    [1] = vector4(240.59,1156.96,226.11,8.51),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(207.8,1252.07,225.45,0.0),
                ["Positions"] = {
                    [1] = vector4(218.33,1244.02,225.53,286.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_49",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(192.35,1238.63,225.59,0.0),
                ["Positions"] = {
                    [1] = vector4(206.62,1237.61,225.45,286.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_49",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(232.55,1220.54,225.45,0.0),
                ["Positions"] = {
                    [1] = vector4(223.63,1226.31,226.11,195.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_49",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(224.42,1179.99,225.45,0.0),
                ["Positions"] = {
                    [1] = vector4(231.33,1194.59,226.11,195.6),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(248.26,1181.75,225.82), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_49" },       
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_49-2", ["Coords"] = vec3(104.22,1207.15,207.19), ["Mode"] = "2" },
        { ["Name"] = "QG_49-3", ["Coords"] = vec3(106.21,1211.02,207.17), ["Mode"] = "2" },
        { ["Name"] = "QG_49-4", ["Coords"] = vec3(97.96,1244.35,207.17), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(226.82,1150.17,225.6), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(185.6,1214.33,225.59),"QG_49" },
        { vec3(88.55,1236.81,207.17),"QG_49" },
        { vec3(107.82,1212.15,207.17),"QG_49" },
        
    },
    INTERPHONE = {
        
        -- {vector3(248.76,1185.97,226.26),"QG_49"},
        
    },
    SURVIVAL = {
        
        ["QG_49"] = vec3(247.44,1178.42,225.5),
        
    },
    WORLD_PVP = {
        
        {vector4(219.28,1192.44,225.55,286.3),"QG_49"},
        
    },
    RISK_ZONES = {
        
        {vec3(247.44,1178.42,225.5),"QG_49"}, -- QG_49
        
    },
    RDM_ZONES = {
        ["QG_49"] = {
            {
                vector2(235.61, 1274.24),
                vector2(273.48, 1110.61),
                vector2(235.61, 1081.06),
                vector2(156.82, 1081.82),
                vector2(113.64, 1147.73),
                vector2(126.52, 1242.42),
                vector2(175.76, 1272.73)
            }, {
                name="QG_49",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_50"] = {
    GARAGES = {
        -- QG_50
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1037.82,-2497.34,28.48,170.08),
                ["Positions"] = {
                    [1] = vector4(1031.04,-2500.77,28.43,85.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(997.97,-2542.39,28.48,96.38),
                ["Positions"] = {
                    [1] = vector4(987.99,-2546.59,28.29,351.5),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_50",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(955.55,-2536.35,28.29,175.75),
                ["Positions"] = {
                    [1] = vector4(955.57,-2541.33,28.29,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_50",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(929.97,-2492.3,28.51,345.83),
                ["Positions"] = {
                    [1] = vector4(914.81,-2481.58,28.49,269.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_50",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(998.02,-2489.01,28.31,172.92),
                ["Positions"] = {
                    [1] = vector4(992.47,-2499.01,28.29,357.17),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(988.32,-2480.41,28.24), Hash = -1646581307, Lock = true, Distance = 5.5, Perm = "QG_50" },
        { Coords = vec3(993.92,-2481.0,28.29), Hash = -1646581307, Lock = true, Distance = 5.5, Perm = "QG_50" },
        { Coords = vec3(769.63,-2493.52,19.82), Hash = -1646581307, Lock = true, Distance = 5.5, Perm = "QG_50" },
        { Coords = vec3(770.09,-2487.82,19.98), Hash = -1646581307, Lock = true, Distance = 5.5, Perm = "QG_50" },
        { Coords = vec3(931.57,-2477.01,28.31), Hash = -1646581307, Lock = true, Distance = 5.5, Perm = "QG_50" },
        { Coords = vec3(943.76,-2478.19,28.39), Hash = -1646581307, Lock = true, Distance = 5.5, Perm = "QG_50" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_50-2", ["Coords"] = vec3(1026.4,-2538.19,28.29), ["Mode"] = "2" },
        { ["Name"] = "QG_50-3", ["Coords"] = vec3(1011.34,-2551.13,28.29), ["Mode"] = "2" },
        { ["Name"] = "QG_50-4", ["Coords"] = vec3(1003.69,-2550.4,28.29), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1005.22,-2532.0,28.31), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1025.12,-2545.22,32.28),"QG_50" }, 
        
    },
    INTERPHONE = {
        
        -- {vector3(985.34,-2477.07,28.54),"QG_50"},
        
    },
    SURVIVAL = {
        
        ["QG_50"] = vec3(989.56,-2494.81,28.29),
        
    },
    WORLD_PVP = {
        
        {vector4(976.08,-2517.21,28.44,266.46),"QG_50"},
        
    },
    RISK_ZONES = {
        
        {vec3(989.56,-2494.81,28.29),"QG_50"}, -- QG_50
        
    },
    RDM_ZONES = {
        ["QG_50"] = {
            {
                vector2(1053.03, -2477.65),
                vector2(805.30, -2454.17),
                vector2(789.39, -2454.55),
                vector2(758.71, -2465.53),
                vector2(758.33, -2488.26),
                vector2(757.95, -2518.18),
                vector2(755.30, -2537.12),
                vector2(770.08, -2548.86),
                vector2(1046.21, -2570.45)
            }, {
                name="QG_50",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_51"] = {
    GARAGES = {
        -- QG_51
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(585.12,-2829.98,6.05,0.0),
                ["Positions"] = {
                    [1] = vector4(583.94,-2821.19,6.13,325.99),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(628.01,-2782.14,6.05,226.78),
                ["Positions"] = {
                    [1] = vector4(621.1,-2783.64,5.95,45.36),
                },
            },
        },
        
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_51",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(563.77,-2759.72,6.05,0.0),
                ["Positions"] = {
                    [1] = vector4(561.78,-2746.87,6.71,147.41),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_51",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(569.95,-2838.83,6.03,0.0),
                ["Positions"] = {
                    [1] = vector4(569.4,-2850.03,6.67,320.32),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_51",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(616.62,-2717.6,6.3,229.61),
                ["Positions"] = {
                    [1] = vector4(618.16,-2725.02,6.08,175.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_51",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(598.0,-2790.58,6.05,0.0),
                ["Positions"] = {
                    [1] = vector4(595.03,-2771.48,6.05,331.66),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(603.78,-2711.63,6.08), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_51" },    
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_51-2", ["Coords"] = vec3(548.99,-2780.8,6.1), ["Mode"] = "2" },
        { ["Name"] = "QG_51-3", ["Coords"] = vec3(550.54,-2788.36,6.1), ["Mode"] = "2" },
        { ["Name"] = "QG_51-4", ["Coords"] = vec3(567.0,-2781.57,6.08), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(564.06,-2775.42,6.08), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(566.72,-2777.02,6.08),"QG_51" }, 
        
    },
    INTERPHONE = {
        
        -- {vector3(600.66,-2711.14,6.07),"QG_51"},
        
    },
    SURVIVAL = {
        
        ["QG_51"] = vec3(567.62,-2790.32,6.08),
        
    },
    WORLD_PVP = {
        
        {vector4(592.32,-2817.75,6.05,184.26),"QG_51"},
        
    },
    RISK_ZONES = {
        
        {vec3(567.62,-2790.32,6.08),"QG_51"}, -- QG_51
        
        
    },
    RDM_ZONES = {
        ["QG_51"] = {
            {
                vector2(440.91, -2693.18),
                vector2(439.39, -2800.76),
                vector2(567.42, -2868.18),
                vector2(624.24, -2888.64),
                vector2(673.48, -2865.91),
                vector2(661.36, -2734.85),
                vector2(588.64, -2677.27)
            }, {
                name="QG_51",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_52"] = {
    GARAGES = {
        -- QG_52
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(438.0,-1489.19,29.27,0.0),
                ["Positions"] = {
                    [1] = vector4(433.44,-1479.09,29.86,11.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(418.11,-1565.84,29.28,337.33),
                ["Positions"] = {
                    [1] = vector4(419.15,-1557.67,29.15,141.74),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(400.73,-1485.36,29.28,119.06),
                ["Positions"] = {
                    [1] = vector4(400.17,-1496.0,29.28,36.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(496.84,-1494.1,29.28,0.0),
                ["Positions"] = {
                    [1] = vector4(502.86,-1501.34,29.94,175.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_52",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(491.52,-1519.79,29.28,0.0),
                ["Positions"] = {
                    [1] = vector4(500.34,-1519.99,29.94,36.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_52",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(390.39,-1491.25,29.28,303.31),
                ["Positions"] = {
                    [1] = vector4(400.17,-1496.0,29.28,36.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_52",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(451.92,-1493.86,29.28,0.0),
                ["Positions"] = {
                    [1] = vector4(448.78,-1509.89,29.91,45.36),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_52",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(459.08,-1529.09,29.23,14.18),
                ["Positions"] = {
                    [1] = vector4(456.55,-1517.2,29.23,36.86),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(410.93,-1564.57,29.28), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_52" },
        { Coords = vec3(394.66,-1485.08,29.2), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_52" },
        { Coords = vec3(426.49,-1468.7,29.18), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_52" },
        { Coords = vec3(491.66,-1551.66,29.1), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_52" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_52-2", ["Coords"] = vec3(423.93,-1510.66,33.8), ["Mode"] = "2" },
        { ["Name"] = "QG_52-3", ["Coords"] = vec3(410.51,-1501.74,30.14), ["Mode"] = "2" },
        { ["Name"] = "QG_52-4", ["Coords"] = vec3(413.97,-1498.2,33.8), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(426.32,-1560.0,29.28), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(417.3,-1496.9,30.14),"QG_52" },
        { vec3(421.26,-1495.92,33.8),"QG_52" },
        { vec3(488.84,-1525.14,29.28),"QG_52" },
        
    },
    INTERPHONE = {
        
        -- {vector3(390.72,-1486.1,29.13),"QG_52"},
        
    },
    SURVIVAL = {
        
        ["QG_52"] = vec3(403.53,-1502.24,29.28),
        
    },
    WORLD_PVP = {
        
        {vector4(401.66,-1524.58,29.28,209.77),"QG_52"},
        
    },
    RISK_ZONES = {
        
        {vec3(403.53,-1502.24,29.28),"QG_52"}, -- QG_52
        
    },
    RDM_ZONES = {
        ["QG_52"] = {
            {
                vector2(435.98, -1458.33),
                vector2(349.62, -1505.68),
                vector2(349.24, -1524.24),
                vector2(414.39, -1580.30),
                vector2(459.09, -1617.42),
                vector2(476.89, -1596.97),
                vector2(500.00, -1537.88),
                vector2(523.11, -1512.50),
                vector2(521.59, -1453.41),
                vector2(500.76, -1441.29)
            }, {
                name="QG_52",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_53"] = {
    GARAGES = {
        -- QG_53
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-70.83,906.59,235.59,0.0),
                ["Positions"] = {
                    [1] = vector4(-78.87,894.23,235.66,34.02),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1537.79,821.89,181.66,53.86),
                ["Positions"] = {
                    [1] = vector4(-1551.66,824.75,183.26,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1554.38,880.61,181.35,240.95),
                ["Positions"] = {
                    [1] = vector4(-1548.92,873.14,181.32,14.18),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_53",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1532.82,851.49,181.57,297.64),
                ["Positions"] = {
                    [1] = vector4(-1508.3,868.38,181.79,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_53",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1567.40,827.95,186.31,28.16),
                ["Positions"] = {
                    [1] = vector4(-1572.48,833.42,187.02,15.21),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_53",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1579.14,822.89,186.02,314.65),
                ["Positions"] = {
                    [1] = vector4(-1571.03,834.12,185.06,303.31),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-1477.49,884.72,182.89), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_53" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_53-2", ["Coords"] = vec3(-1488.23,841.32,176.99), ["Mode"] = "2" },
        { ["Name"] = "QG_53-3", ["Coords"] = vec3(-1513.43,844.82,181.59), ["Mode"] = "2" },
        { ["Name"] = "QG_53-4", ["Coords"] = vec3(-1510.62,839.44,181.59), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1528.2,842.85,181.59), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1494.32,840.2,176.99),"QG_53" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-1474.91,889.02,182.94),"QG_53"},
        
    },
    SURVIVAL = {
        
        ["QG_53"] = vec3(-1514.18,839.2,186.14),
        
    },
    WORLD_PVP = {
        
        {vector4(-1485.98,847.48,181.59,291.97),"QG_53"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1514.18,839.2,186.14),"QG_53"}, -- QG_53
        
    },
    RDM_ZONES = {
        
        ["QG_53"] = {
            {
                vector2(-1498.11, 913.64),
                vector2(-1511.74, 910.23),
                vector2(-1550.76, 884.85),
                vector2(-1575.38, 860.23),
                vector2(-1609.85, 832.20),
                vector2(-1604.17, 809.85),
                vector2(-1595.83, 787.50),
                vector2(-1604.17, 775.00),
                vector2(-1618.94, 767.80),
                vector2(-1615.15, 747.73),
                vector2(-1603.79, 736.74),
                vector2(-1590.15, 739.77),
                vector2(-1534.47, 765.91),
                vector2(-1521.21, 777.65),
                vector2(-1451.89, 814.02),
                vector2(-1463.26, 857.20),
                vector2(-1475.00, 892.80),
                vector2(-1487.12, 909.47)
            }, {
                name="QG_53",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_54"] = {
    GARAGES = {
        --QG_54
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-63.11,891.84,235.59,87.88),
                ["Positions"] = {
                    [1] = vector4(-72.98,883.81,235.29,19.85),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-71.09,907.59,235.61,110.56),
                ["Positions"] = {
                    [1] = vector4(-78.88,894.23,235.29,34.02),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-119.34,905.64,235.7,62.37),
                ["Positions"] = {
                    [1] = vector4(-113.7,909.87,235.07,8.51),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-120.17,969.38,235.83,2.84),
                ["Positions"] = {
                    [1] = vector4(-117.75,958.74,237.21,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-125.22,1010.81,235.73,62.37),
                ["Positions"] = {
                    [1] = vector4(-113.44,1006.49,235.09,110.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_54",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-131.45,1008.15,235.73,175.75),
                ["Positions"] = {
                    [1] = vector4(-112.69,1019.98,236.45,102.05),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_54",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-115.74,969.67,235.76,25.52),
                ["Positions"] = {
                    [1] = vector4(-117.89,959.57,237.6,0.0),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-135.11,973.03,235.88), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_54" },

        
    },
    CHESTS = {
        
        { ["Name"] = "QG_54-2", ["Coords"] = vec3(-60.13,995.15,234.4), ["Mode"] = "2" },
        { ["Name"] = "QG_54-3", ["Coords"] = vec3(-69.52,1005.76,234.4), ["Mode"] = "2" },
        { ["Name"] = "QG_54-4", ["Coords"] = vec3(-84.69,1004.92,234.4), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-85.78,995.17,234.4), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-66.83,1001.15,234.4),"QG_54" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-132.56,970.62,235.73),"QG_54"},
        
    },
    SURVIVAL = {
        
        ["QG_54"] = vec3(-76.0,996.98,234.4),
        
    },
    WORLD_PVP = {
        
        {vector4(-99.0,938.85,233.03,348.67),"QG_54"},
        
    },
    RISK_ZONES = {
        
        {vec3(-76.0,996.98,234.4),"QG_54"}, -- QG_54
        
        
    },
    RDM_ZONES = {
        ["QG_54"] = {
            {
                vector2(-27.65, 920.45),
                vector2(-48.11, 915.53),
                vector2(-67.05, 910.98),
                vector2(-78.03, 907.20),
                vector2(-102.65, 927.27),
                vector2(-121.59, 943.18),
                vector2(-131.06, 949.62),
                vector2(-130.30, 959.47),
                vector2(-139.39, 966.67),
                vector2(-146.21, 985.23),
                vector2(-148.11, 1000.76),
                vector2(-145.08, 1017.05),
                vector2(-140.91, 1029.92),
                vector2(-130.68, 1023.11),
                vector2(-97.73, 1025.38),
                vector2(-81.44, 1023.86),
                vector2(-60.61, 1005.68),
                vector2(-51.89, 994.70),
                vector2(-43.94, 980.30),
                vector2(-40.91, 950.38),
                vector2(-23.48, 947.73),
                vector2(-26.89, 930.30)
            }, {
                name="QG_54",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_55"] = {
    GARAGES = {
        -- QG_55
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-794.34,-2569.6,13.36,0.0),
                ["Positions"] = {
                    [1] = vector4(-795.59,-2557.68,13.97,331.66),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-796.28,-2625.65,13.95,161.58),
                ["Positions"] = {
                    [1] = vector4(-794.28,-2640.55,13.82,235.28),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-766.14,-2585.89,17.66,0.0),
                ["Positions"] = {
                    [1] = vector4(-790.9,-2659.93,14.46,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_55",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-807.86,-2629.47,13.82,0.0),
                ["Positions"] = {
                    [1] = vector4(-806.8,-2640.1,14.46,150.24),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_55",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-743.02,-2552.62,14.07,0.0),
                ["Positions"] = {
                    [1] = vector4(-746.96,-2541.78,13.95,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_55",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-803.76,-2586.96,13.93,320.32),
                ["Positions"] = {
                    [1] = vector4(-807.66,-2584.21,13.9,337.33),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-822.42,-2607.11,13.95), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_55" },
        { Coords = vec3(-775.02,-2519.09,13.95), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_55" },
        { Coords = vec3(-861.48,-2687.7,13.78), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_55" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_55-2", ["Coords"] = vec3(-770.84,-2597.05,17.66), ["Mode"] = "2" },
        { ["Name"] = "QG_55-3", ["Coords"] = vec3(-757.08,-2561.18,13.58), ["Mode"] = "2" },
        { ["Name"] = "QG_55-4", ["Coords"] = vec3(-764.86,-2558.08,13.58), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-785.02,-2574.6,13.58), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-763.25,-2584.52,13.58),"QG_55" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-778.4,-2517.21,13.78),"QG_55"},
        
    },
    SURVIVAL = {
        
        ["QG_55"] = vec3(-804.94,-2586.72,13.93),
        
    },
    WORLD_PVP = {
        
        {vector4(-772.37,-2536.39,13.87,28.35),"QG_55"},
        
    },
    RISK_ZONES = {
        
        {vec3(-804.94,-2586.72,13.93),"QG_55"}, -- QG_55
        
    },
    RDM_ZONES = {
        ["QG_55"] = {
            {
                vector2(-781.44, -2512.88),
                vector2(-698.11, -2551.52),
                vector2(-801.14, -2733.33),
                vector2(-879.92, -2686.74)
            }, {
                name="QG_55",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_56"] = {
    GARAGES = {
        -- QG_56 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-330.72,-1533.2,27.57,0.0),
                ["Positions"] = {
                    [1] = vector4(-330.61,-1530.07,27.16,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-301.27,-1637.14,32.27,73.71),
                ["Positions"] = {
                    [1] = vector4(-306.8,-1646.58,31.73,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_56",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-313.17,-1527.69,27.6,2.84),
                ["Positions"] = {
                    [1] = vector4(-317.18,-1523.69,27.55,263.63),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_56",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-351.71,-1524.11,27.72,96.38),
                ["Positions"] = {
                    [1] = vector4(-343.63,-1531.22,27.82,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_56",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-273.03,-1675.83,32.18,337.33),
                ["Positions"] = {
                    [1] = vector4(-272.69,-1666.27,32.28,59.53),
                },
            },
        },
        
        
    },    
    DOORS = {
        
        { Coords = vec3(291.72,-2836.0,6.0), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_56" },
        { Coords = vec3(268.13,-2790.38,6.02), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_56" },
        { Coords = vec3(267.1,-2790.5,6.02), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_56" },
        { Coords = vec3(291.46,-2680.91,6.0), Hash = -1483571451, Lock = true, Distance = 5.5, Perm = "QG_56" },
        { Coords = vec3(308.06,-2732.76,6.0), Hash = 11877280133, Lock = true, Distance = 5.5, Perm = "QG_56" },        
        { Coords = vec3(-302.66,-1527.52,27.48), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_56" },
        { Coords = vec3(-359.4,-1561.89,25.24), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_56" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_56-2", ["Coords"] = vec3(-285.95,-1644.97,32.28), ["Mode"] = "2" },
        { ["Name"] = "QG_56-3", ["Coords"] = vec3(-316.61,-1538.63,27.92), ["Mode"] = "2" },
        { ["Name"] = "QG_56-4", ["Coords"] = vec3(-313.5,-1531.41,27.92), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-320.7,-1510.99,29.28), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-284.14,-1632.64,32.69),"QG_56" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_56"},
        
    },
    SURVIVAL = {
        
        ["QG_56"] = vec3(-301.6,-1639.66,32.27),
        
    },
    WORLD_PVP = {
        
        {vector4(-308.51,-1515.34,28.0,277.8),"QG_56"},
        
    },
    RISK_ZONES = {
        
        {vec3(-301.6,-1639.66,32.27),"QG_56"}, -- QG_56
        
    },
    RDM_ZONES = {
        
        ["QG_56"] = {
            {
                vector2(-392.05, -1676.14),
                vector2(-471.97, -1647.35),
                vector2(-363.26, -1501.14),
                vector2(-309.09, -1503.03),
                vector2(-232.58, -1564.02),
                vector2(-243.56, -1578.79),
                vector2(-246.97, -1707.58),
                vector2(-254.17, -1695.83),
                vector2(-328.41, -1648.48),
                vector2(-339.39, -1660.23),
                vector2(-371.21, -1643.94)
            }, {
                name="QG_56",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_58"] = {
    GARAGES = {
        -- QG_58
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2301.4,421.57,174.65,99.22),
                ["Positions"] = {
                    [1] = vector4(-2305.58,431.06,173.79,357.17),
                },
            },
        }  ,
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2283.32,400.3,174.6,76.54),
                ["Positions"] = {
                    [1] = vector4(-2286.42,410.1,174.34,130.4),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_58",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2315.97,456.64,174.6,249.45),
                ["Positions"] = {
                    [1] = vector4(-2306.07,444.49,174.56,357.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_58",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2344.27,382.74,174.68,204.1),
                ["Positions"] = {
                    [1] = vector4(-2334.87,378.88,174.56,294.81),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_58",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2307.04,281.36,169.59,70.87),
                ["Positions"] = {
                    [1] = vector4(-2322.44,293.25,169.58,22.68),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_58",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2342.84,266.02,169.46,331.66),
                ["Positions"] = {
                    [1] = vector4(-2342.41,285.49,169.58,22.68),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-2304.63,460.2,174.46), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_58" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_58-2", ["Coords"] = vec3(-2275.56,261.2,169.59), ["Mode"] = "2" },
        { ["Name"] = "QG_58-3", ["Coords"] = vec3(-2272.37,228.49,169.59), ["Mode"] = "2" },
        { ["Name"] = "QG_58-4", ["Coords"] = vec3(-2285.67,353.94,174.6), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2277.46,380.33,174.6), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2272.77,263.52,169.53),"QG_58" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-2309.44,461.04,174.46),"QG_58"},
        
    },
    SURVIVAL = {
        
        ["QG_58"] = vec3(-2317.39,432.74,174.46),
        
    },
    WORLD_PVP = {
        
        {vector4(-2325.0,369.62,174.6,31.19),"QG_58"},		
        
    },
    RISK_ZONES = {
        
        {vec3(-2317.39,432.74,174.46),"QG_58"}, -- QG_58
        
    },
    RDM_ZONES = {
        
        ["QG_58"] = {
            {
                vector2(-2293.94, 131.82),
                vector2(-2048.48, 231.82),
                vector2(-2172.73, 598.48),
                vector2(-2286.36, 592.42),
                vector2(-2342.42, 410.61),
                vector2(-2381.82, 389.39),
                vector2(-2351.52, 321.21),
                vector2(-2396.97, 300.00)
            }, {
                name="QG_58",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_59"] = {
    GARAGES = {
        -- QG_59
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3040.97,105.05,11.56,229.61),
                ["Positions"] = {
                    [1] = vector4(-3039.75,114.37,11.1,229.61),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2968.95,74.29,11.47,59.53),
                ["Positions"] = {
                    [1] = vector4(-2976.71,77.79,11.04,141.74),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_59",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2999.03,77.31,11.61,243.78),
                ["Positions"] = {
                    [1] = vector4(-2994.71,83.61,11.54,51.03),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_59",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3033.04,140.09,11.61,102.05),
                ["Positions"] = {
                    [1] = vector4(-3040.25,137.6,11.54,206.93),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-3007.83,118.78,14.78), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_59" },
        { Coords = vec3(-3002.99,113.24,14.54), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_59" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_59-2", ["Coords"] = vec3(-3034.04,89.12,12.35), ["Mode"] = "2" },
        { ["Name"] = "QG_59-3", ["Coords"] = vec3(-3005.24,55.02,11.96), ["Mode"] = "2" },
        { ["Name"] = "QG_59-4", ["Coords"] = vec3(-3016.99,71.78,12.27), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3013.26,60.55,11.95), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3038.54,96.36,12.82),"QG_59" },
        { vec3(-2962.53,34.51,11.61),"QG_59" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-3009.63,121.76,14.86),"QG_59"},
        
    },
    SURVIVAL = {
        
        ["QG_59"] = vec3(-3023.61,81.21,11.61),
        
    },
    WORLD_PVP = {
        
        {vector4(-3011.44,80.5,11.68,31.19),"QG_59"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3023.61,81.21,11.61),"QG_59"}, -- QG_59
        
    },
    RDM_ZONES = {
        ["QG_59"] = {
            {
                vector2(-2842.05, 38.64),
                vector2(-2870.83, 48.48),
                vector2(-2910.61, 59.09),
                vector2(-2943.56, 71.97),
                vector2(-2962.50, 82.20),
                vector2(-2984.09, 97.35),
                vector2(-3004.55, 118.56),
                vector2(-3020.83, 140.15),
                vector2(-3029.55, 164.39),
                vector2(-3034.85, 173.11),
                vector2(-3059.85, 173.48),
                vector2(-3059.85, 85.61),
                vector2(-3040.91, 65.91),
                vector2(-3053.03, 48.48),
                vector2(-3050.76, 33.33),
                vector2(-3038.26, 21.59),
                vector2(-3019.32, 15.15),
                vector2(-3004.92, 17.05),
                vector2(-2995.45, 31.44),
                vector2(-2965.15, 17.05),
                vector2(-2934.85, 3.79),
                vector2(-2898.86, -10.98),
                vector2(-2862.50, -21.21),
                vector2(-2854.92, -14.77),
                vector2(-2842.80, 26.14)
            }, {
                name="QG_59",
                --debugGrid=true,
            },
        }  
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_60"] = {
    GARAGES = {
        -- QG_60
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1340.06,-1712.61,57.32,195.6),
                ["Positions"] = {
                    [1] = vector4(1341.21,-1708.56,57.29,280.63),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1374.16,-1709.2,66.14,2.84),
                ["Positions"] = {
                    [1] = vector4(1373.69,-1713.65,65.82,201.26),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1196.1,-1758.46,38.72,127.56),
                ["Positions"] = {
                    [1] = vector4(1195.02,-1751.48,38.01,31.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_60",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1376.09,-1729.72,66.15,289.14),
                ["Positions"] = {
                    [1] = vector4(1374.0,-1717.83,66.15,286.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_60",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1211.47,-1726.67,52.73,108.36),
                ["Positions"] = {
                    [1] = vector4(1205.93,-1731.82,52.73,189.29),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_60",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1302.08,-1726.7,54.0,357.17),
                ["Positions"] = {
                    [1] = vector4(1294.41,-1726.04,53.84,297.64),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1377.25,-1699.46,62.66), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_60" },
        { Coords = vec3(1179.24,-1727.27,35.62), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_60" },
        { Coords = vec3(1383.16,-1726.18,66.15), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_60" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_60-2", ["Coords"] = vec3(1347.39,-1717.71,64.25), ["Mode"] = "2" },
        { ["Name"] = "QG_60-3", ["Coords"] = vec3(1327.94,-1724.84,64.27), ["Mode"] = "2" },
        { ["Name"] = "QG_60-4", ["Coords"] = vec3(1373.44,-1738.28,66.78), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1379.89,-1740.84,66.78), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1317.68,-1730.82,64.25),"QG_60" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1376.87,-1695.7,61.94),"QG_60"},
        
    },
    SURVIVAL = {
        
        ["QG_60"] = vec3(1295.49,-1731.96,53.65),
        
    },
    WORLD_PVP = {
        
        {vector4(1305.79,-1714.07,54.49,206.93),"QG_60"},
        
    },
    RISK_ZONES = {
        
        {vec3(1295.49,-1731.96,53.65),"QG_60"}, -- QG_60
        
    },
    RDM_ZONES = {
        ["QG_60"] = {
            {
                vector2(1165.15, -1756.06),
                vector2(1165.91, -1770.83),
                vector2(1178.79, -1796.21),
                vector2(1195.08, -1806.82),
                vector2(1217.05, -1807.20),
                vector2(1251.89, -1795.08),
                vector2(1310.98, -1777.65),
                vector2(1350.76, -1762.50),
                vector2(1390.91, -1751.14),
                vector2(1383.71, -1715.91),
                vector2(1380.30, -1704.92),
                vector2(1371.59, -1687.50),
                vector2(1354.17, -1664.39),
                vector2(1344.32, -1650.38),
                vector2(1311.74, -1675.76),
                vector2(1297.73, -1656.82),
                vector2(1273.48, -1673.86),
                vector2(1237.88, -1695.08),
                vector2(1195.08, -1715.91),
                vector2(1177.65, -1727.27),
                vector2(1165.53, -1738.64),
                vector2(1164.02, -1748.48)
            }, {
                name="QG_60",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_62"] = {
    GARAGES = {
        -- QG_62
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1540.9,1360.11,98.02,42.52),
                ["Positions"] = {
                    [1] = vector4(1539.84,1363.2,97.53,124.73 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1492.7,1555.6,110.13,280.63),
                ["Positions"] = {
                    [1] = vector4(1495.82,1558.59,109.74,357.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1427.65,1480.88,113.25,257.96),
                ["Positions"] = {
                    [1] = vector4(1432.84,1477.81,112.93,175.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1294.62,1420.11,100.66,0.0),
                ["Positions"] = {
                    [1] = vector4(1300.17,1425.42,100.83,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1540.83,1360.19,98.02,0.0),
                ["Positions"] = {
                    [1] = vector4(1537.84,1362.35,97.86,124.73),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_62",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1519.93,1306.66,117.33,0.0),
                ["Positions"] = {
                    [1] = vector4(1528.44,1304.58,117.81,272.13),
                },
            },
            ["Teleport"] = false,
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_62",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1520.15,1306.73,117.26,277.8),
                ["Positions"] = {
                    [1] = vector4(1528.45,1304.59,117.06,274.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_62",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1530.31,1365.28,97.85,17.01),
                ["Positions"] = {
                    [1] = vector4(1526.73,1363.32,97.43,215.44),
                },
            },
        },      
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_62",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1510.62,1592.31,112.1,0.0),
                ["Positions"] = {
                    [1] = vector4(1500.76,1603.24,113.1,357.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_62",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1440.59,1439.36,108.38,0.0),
                ["Positions"] = {
                    [1] = vector4(1433.86,1442.27,109.25,178.59),
                },
            },
        },
        
        
    },    
    DOORS = {
        
        { Coords = vec3(1555.4,1326.77,94.26), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_62" },
        { Coords = vec3(1292.72,1424.1,100.42), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_62" },
        { Coords = vec3(1497.87,1583.13,111.97), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_62" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_62-2", ["Coords"] = vec3(1547.74,1480.9,108.38), ["Mode"] = "2" },
        { ["Name"] = "QG_62-3", ["Coords"] = vec3(1569.3,1434.28,107.94), ["Mode"] = "2" },
        { ["Name"] = "QG_62-4", ["Coords"] = vec3(1573.84,1417.2,107.03), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1563.66,1422.86,107.54), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1520.08,1391.74,108.23),"QG_62" },
        { vec3(1446.66,1572.36,110.89),"QG_62" },
        { vec3(1508.44,1419.58,101.65),"QG_62" },
        { vec3(1439.71,1406.13,108.65),"QG_62" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1553.37,1324.11,94.31),"QG_62"},
        
    },
    SURVIVAL = {
        
        ["QG_62"] = vec3(1550.77,1383.7,108.24),
        
    },
    WORLD_PVP = {
        
        {vector4(1520.52,1397.23,108.71,175.75),"QG_62"},        
        
    },
    RISK_ZONES = {
        
        {vec3(1550.77,1383.7,108.24),"QG_62"}, -- QG_62
        
    },
    RDM_ZONES = {
        ["QG_62"] = {
            {
                vector2(1280.30, 1384.85),
                vector2(1369.70, 1387.12),
                vector2(1373.48, 1325.00),
                vector2(1407.58, 1303.79),
                vector2(1436.36, 1303.79),
                vector2(1454.55, 1288.64),
                vector2(1537.12, 1280.30),
                vector2(1584.09, 1300.00),
                vector2(1546.21, 1351.52),
                vector2(1574.24, 1383.33),
                vector2(1581.06, 1420.45),
                vector2(1575.00, 1467.42),
                vector2(1553.79, 1490.91),
                vector2(1513.64, 1497.73),
                vector2(1519.70, 1560.61),
                vector2(1430.30, 1589.39),
                vector2(1377.27, 1525.76),
                vector2(1357.58, 1434.85),
                vector2(1280.30, 1425.76)
            }, {
                name="QG_62",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_64"] = {
    GARAGES = {
        -- QG_64
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2448.03,4953.06,44.96,291.97),
                ["Positions"] = {
                    [1] = vector4(2451.17,4947.84,45.14,136.07),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_64",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2456.5,4956.62,45.07,127.56),
                ["Positions"] = {
                    [1] = vector4(2472.81,4968.55,45.31,133.23),
                },
            },
        },
        
    },    
    DOORS = {
        
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_64-2", ["Coords"] = vec3(2440.36,4974.89,46.81), ["Mode"] = "2" },
        { ["Name"] = "QG_64-3", ["Coords"] = vec3(2436.11,4965.0,46.81), ["Mode"] = "2" },
        { ["Name"] = "QG_64-4", ["Coords"] = vec3(2430.59,4968.68,46.83), ["Mode"] = "2" },
        { ["Name"] = "QG_64-5", ["Coords"] = vec3(2433.75,4969.13,42.34), ["Mode"] = "2", ["Perms"] = { ["Take"] = 1, ["Store"] = 5 } },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2430.73,4962.89,42.34), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2435.33,4964.8,42.34),"QG_64" },
        
    },
    INTERPHONE = {
        
        -- {vector3(2453.52,4962.31,45.51),"QG_64"},
        
    },
    SURVIVAL = {
        
        ["QG_64"] = vec3(2455.02,4949.64,45.09),
        
    },
    WORLD_PVP = {
        
        {vector4(2463.13,4975.15,46.57,249.45),"QG_64"},
        
    },
    RISK_ZONES = {
        
        {vec3(2455.02,4949.64,45.09),"QG_64"}, -- QG_64
        
        
    },
    RDM_ZONES = {
        ["QG_64"] = {
            {
                vector2(2583.33, 4938.64),
                vector2(2563.64, 4910.61),
                vector2(2543.94, 4891.67),
                vector2(2518.94, 4884.85),
                vector2(2502.27, 4905.30),
                vector2(2478.79, 4911.36),
                vector2(2444.70, 4913.64),
                vector2(2414.39, 4915.15),
                vector2(2388.64, 4945.45),
                vector2(2365.91, 4971.97),
                vector2(2355.30, 5009.85),
                vector2(2356.82, 5038.64),
                vector2(2374.24, 5056.06),
                vector2(2403.79, 5067.42),
                vector2(2445.45, 5043.94),
                vector2(2475.76, 5023.48),
                vector2(2538.64, 4972.73)
            }, {
                name="QG_64",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_65"] = {
    GARAGES = {
        -- QG_65
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1266.85,-294.5,81.65,2.84),
                ["Positions"] = {
                    [1] = vector4(1265.93,-283.79,78.84,87.88),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1321.01,-137.27,117.65,204.1),
                ["Positions"] = {
                    [1] = vector4(1315.26,-132.67,117.63,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_65",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1251.26,-289.23,77.05,0.0),
                ["Positions"] = {
                    [1] = vector4(1250.29,-281.47,76.67,87.88),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_65",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1321.64,-128.94,117.7,107.72),
                ["Positions"] = {
                    [1] = vector4(1315.26,-132.67,117.63,272.13),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(1219.89,-288.77,69.12), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_65" },
        { Coords = vec3(1358.02,-112.32,122.58), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_65" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_65-2", ["Coords"] = vec3(1314.4,-270.61,93.23), ["Mode"] = "2" },
        { ["Name"] = "QG_65-2", ["Coords"] = vec3(1263.93,-297.59,84.59), ["Mode"] = "2" },
        { ["Name"] = "QG_65-3", ["Coords"] = vec3(1263.16,-300.9,81.69), ["Mode"] = "2" },
        { ["Name"] = "QG_65-3", ["Coords"] = vec3(1239.40,-234.91,77.90), ["Mode"] = "2" },
        { ["Name"] = "QG_65-4", ["Coords"] = vec3(1241.25,-240.22,77.9), ["Mode"] = "2" },
        { ["Name"] = "QG_65-4", ["Coords"] = vec3(1266.14,-300.16,81.68), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1272.93,-217.45,99.31), ["Mode"] = "Personal" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1244.51,-251.40,77.90), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1296.41,-257.2,96.2),"QG_65" },
        { vec3(1265.60,-300.78,84.59),"QG_65" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1213.05,-279.4,69.08),"QG_65"},
        
    },
    SURVIVAL = {
        
        ["QG_65"] = vec3(1263.26,-300.27,84.59),
        
    },
    WORLD_PVP = {
        
        {vector4(1246.41,-275.59,76.11,187.09),"QG_65"},
        
    },
    RISK_ZONES = {
        
        {vec3(1263.26,-300.27,84.59),"QG_65"}, -- QG_65
        
        
    },
    RDM_ZONES = {
        ["QG_65"] = {
            {
                vector2(1228.03,-318.94),
                vector2(1287.12,-313.64),
                vector2(1328.03,-294.70),
                vector2(1370.45,-278.79),
                vector2(1387.88,-248.48),
                vector2(1396.21,-199.24),
                vector2(1424.24,-168.18),
                vector2(1416.67,-92.42),
                vector2(1346.21,-87.12),
                vector2(1314.39,-84.09),
                vector2(1268.18,-86.36),
                vector2(1239.39,-107.58),
                vector2(1225.00,-138.64),
                vector2(1202.27,-178.03),
                vector2(1193.18,-178.79),
                vector2(1153.03,-210.61),
                vector2(1130.30,-231.06),
                vector2(1162.88,-234.85),
                vector2(1196.21,-261.36)
            }, {
                name="QG_65",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_66"] = {
    GARAGES = {
        -- QG_66
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-614.16,-919.23,23.57,93.55),
                ["Positions"] = {
                    [1] = vector4(-621.21,-922.49,23.12,178.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-540.96,-922.29,23.88,113.39),
                ["Positions"] = {
                    [1] = vector4(-544.29,-915.17,23.96,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(3435.58,4895.49,35.99,45.36),
                ["Positions"] = {
                    [1] = vector4(3431.0,4899.93,36.11,136.07),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_66",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-568.61,-892.87,24.82,274.97),
                ["Positions"] = {
                    [1] = vector4(-557.78,-900.65,23.96,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_66",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-528.79,-903.87,23.86,73.71),
                ["Positions"] = {
                    [1] = vector4(-538.78,-897.46,23.84,155.91),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(-539.88,-928.29,23.93), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_66" },
        { Coords = vec3(-470.22,-1119.79,27.89), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_66" },

        { Coords = vec3(-597.9,-930.87,23.89), Hash = -930505499, Lock = true, Distance = 5.5, Perm = "QG_66" },
        { Coords = vec3(-598.1,-928.85,23.88), Hash = 733700947, Lock = true, Distance = 5.5, Perm = "QG_66" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_66-2", ["Coords"] = vec3(-557.03,-914.7,23.88), ["Mode"] = "2" },
        { ["Name"] = "QG_66-3", ["Coords"] = vec3(-594.03,-926.79,28.14), ["Mode"] = "2" },
        { ["Name"] = "QG_66-4", ["Coords"] = vec3(-586.39,-929.7,23.88), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-604.45,-922.07,23.88), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-584.08,-914.05,23.88),"QG_66" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-532.82,-923.31,24.28),"QG_66"},
        
    },
    SURVIVAL = {
        
        ["QG_66"] = vec3(-563.63,-920.78,23.88),
        
    },
    WORLD_PVP = {
        
        {vector4(-548.41,-937.95,23.86,73.71),"QG_66"},
        
    },
    RISK_ZONES = {
        
        {vec3(-563.63,-920.78,23.88),"QG_66"}, -- QG_66
        
    },
    RDM_ZONES = {
        ["QG_66"] = {
            {
                vector2(-621.97, -946.59),
                vector2(-541.29, -948.11),
                vector2(-516.67, -903.79),
                vector2(-512.12, -854.17),
                vector2(-569.70, -852.27),
                vector2(-567.80, -910.23),
                vector2(-625.00, -910.98)
            }, {
                name="QG_66",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_67"] = {
    GARAGES = {
        -- QG_67 nobre
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(860.93,-2354.76,30.33,87.88),
                ["Positions"] = {
                    [1] = vector4(855.02,-2350.95,30.57,172.92),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(3269.7,5182.25,19.78,0.0),
                ["Positions"] = {
                    [1] = vector4(3263.16,5197.22,20.52,175.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(854.25,-2309.49,30.35,0.0),
                ["Positions"] = {
                    [1] = vector4(850.98,-2315.49,30.99,357.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(886.91,-2339.28,30.33,0.0),
                ["Positions"] = {
                    [1] = vector4(886.91,-2339.28,30.33,266.46),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_67",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(843.95,-2329.92,30.33,0.0),
                ["Positions"] = {
                    [1] = vector4(853.42,-2331.79,31.0,42.52),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_67",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(888.37,-2362.12,30.23,357.17),
                ["Positions"] = {
                    [1] = vector4(888.84,-2357.76,30.19,274.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_67",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3249.47,5204.6,20.51,0.0),
                ["Positions"] = {
                    [1] = vector4(3252.68,5213.44,21.35,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_67",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(839.98,-2357.27,30.33,0.0),
                ["Positions"] = {
                    [1] = vector4(843.51,-2345.53,30.23,357.17),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(902.99,-2353.56,30.35), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_67" },
        { Coords = vec3(853.57,-2251.14,30.3), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_67" },
        { Coords = vec3(825.88,-2445.75,25.27), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_67" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_67-2", ["Coords"] = vec3(993.28,-2360.04,21.21), ["Mode"] = "2" },
        { ["Name"] = "QG_67-3", ["Coords"] = vec3(818.59,-2365.1,30.14), ["Mode"] = "2" },
        { ["Name"] = "QG_67-4", ["Coords"] = vec3(871.79,-2309.02,30.57), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(870.57,-2367.46,30.35), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(997.89,-2340.81,21.21),"QG_67" },
        
    },
    INTERPHONE = {
        
        -- {vector3(903.93,-2349.78,30.35),"QG_67"},
    },
    SURVIVAL = {
        
        ["QG_67"] = vec3(870.57,-2311.99,30.57),
        
    },
    WORLD_PVP = {
        
        {vector4(844.83,-2363.11,30.35,187.09),"QG_67"},
        
    },
    RISK_ZONES = {
        
        {vec3(870.57,-2311.99,30.57),"QG_67"}, -- QG_67
        
    },
    RDM_ZONES = {    
        ["QG_67"] = {
            {
                vector2(897.73, -2462.88),
                vector2(754.55, -2442.42),
                vector2(774.24, -2230.30),
                vector2(916.67, -2247.73)
            }, {
                name="QG_67",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_68"] = {
    GARAGES = {
        -- QG_68
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1382.63,-2030.41,53.21,17.01),
                ["Positions"] = {
                    [1] = vector4(1384.08,-2021.57,54.19,130.4),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1365.18,-2090.95,52.0,56.7),
                ["Positions"] = {
                    [1] = vector4(1367.0,-2084.08,52.0,53.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                
                ["Open"] = vector4(1359.5,-2042.84,52.02,39.69),
                ["Positions"] = {
                    [1] = vector4(1354.5,-2041.25,52.3,119.06),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_68",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1398.19,-2078.22,52.0,42.52),
                ["Positions"] = {
                    [1] = vector4(1388.23,-2066.45,52.0,45.36),
                },
            },
        },       
        
    },    
    DOORS = {
        
        { Coords = vec3(1372.42,-2037.52,52.03), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_68" },
        { Coords = vec3(1434.32,-2054.95,55.32), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_68" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_68-2", ["Coords"] = vec3(1378.94,-2090.34,52.6), ["Mode"] = "2" },
        { ["Name"] = "QG_68-3", ["Coords"] = vec3(1369.72,-2094.06,52.6), ["Mode"] = "2" },
        { ["Name"] = "QG_68-4", ["Coords"] = vec3(1369.65,-2102.57,52.0), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1365.62,-2106.1,52.0), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1361.71,-2106.79,52.0),"QG_68" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1366.67,-2037.86,52.02),"QG_68"},
        
    },
    SURVIVAL = {
        
        ["QG_68"] = vec3(1391.97,-2075.06,52.0),
        
    },
    WORLD_PVP = {
        
        {vector4(1369.23,-2042.5,52.03,218.27),"QG_68"},
        
    },
    RISK_ZONES = {
        
        {vec3(1391.97,-2075.06,52.0),"QG_68"}, -- QG_68
        
    },
    RDM_ZONES = {
        ["QG_68"] = {
            {
                vector2(1294.70, -2048.48),
                vector2(1342.05, -2153.79),
                vector2(1478.41, -2078.41),
                vector2(1396.97, -1989.02)
            }, {
                name="QG_68",
                --debugGrid=true,
            }, 
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_69"] = {
    GARAGES = {
        -- QG_69
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-810.09,158.44,71.53,90.71),
                ["Positions"] = {
                    [1] = vector4(-817.02,158.38,70.79,96.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-852.42,151.43,63.93,79.38),
                ["Positions"] = {
                    [1] = vector4(-859.2,148.82,62.7,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_69",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-817.96,187.73,72.37,119.06),
                ["Positions"] = {
                    [1] = vector4(-826.35,179.1,71.29,127.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_69",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-831.34,192.87,74.28,125.64),
                ["Positions"] = {
                    [1] = vector4(-838.20,188.51,73.64,178.37 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_69",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-851.1,166.42,66.86,90.71),
                ["Positions"] = {
                    [1] = vector4(-858.22,172.95,68.26,0.0),
                },
            },
        },
        
    },    
    DOORS = {

        { Coords = vec3(-844.4,158.99,66.74), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_69" },
        { Coords = vec3(-848.78,178.58,69.83), Hash = -1568354151, Lock = true, Distance = 5.5, Perm = "QG_69" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_69-2", ["Coords"] = vec3(-812.29,177.88,76.73), ["Mode"] = "2" },
        { ["Name"] = "QG_69-3", ["Coords"] = vec3(-802.6,168.82,72.82), ["Mode"] = "2" },
        { ["Name"] = "QG_69-4", ["Coords"] = vec3(-804.71,177.5,72.82), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-803.39,185.78,72.61), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-808.45,175.22,76.73),"QG_69" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-848.05,156.02,65.95),"QG_69"},
        
    },
    SURVIVAL = {
        
        ["QG_69"] = vec3(-813.86,159.84,71.27),
        
    },
    WORLD_PVP = {
        
        {vector4(-844.02,147.78,66.84,110.56),"QG_69"},
        
    },
    RISK_ZONES = {
        
        {vec3(-813.86,159.84,71.27),"QG_69"}, -- QG_69
        
        
    },
    RDM_ZONES = {
        ["QG_69"] = {
            {
                vector2(-850.76, 204.92),
                vector2(-803.79, 206.44),
                vector2(-764.77, 209.09),
                vector2(-754.55, 207.20),
                vector2(-752.27, 184.47),
                vector2(-750.00, 155.30),
                vector2(-744.70, 118.56),
                vector2(-743.94, 104.17),
                vector2(-767.05, 96.21),
                vector2(-796.59, 91.29),
                vector2(-824.62, 86.36),
                vector2(-849.24, 79.55),
                vector2(-859.47, 92.42),
                vector2(-862.12, 116.67),
                vector2(-862.88, 151.52),
                vector2(-857.20, 176.52),
                vector2(-853.79, 192.80)
            }, {
                name="QG_69",
                --debugGrid=true,
            }, 
        }
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_71"] = {
    GARAGES = {
        -- QG_71
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2686.28,2360.34,16.82,79.38),
                ["Positions"] = {
                    [1] = vector4(-2693.74,2358.08,16.83,167.25),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2737.76,2281.42,19.82,246.62),
                ["Positions"] = {
                    [1] = vector4(-2729.92,2276.33,19.82,141.74),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2789.35,2234.37,25.09,223.94),
                ["Positions"] = {
                    [1] = vector4(-2787.69,2230.74,25.26,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2809.21,2279.42,25.73,269.3),
                ["Positions"] = {
                    [1] = vector4(-2817.74,2277.49,25.95,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_71",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2809.78,2274.88,25.8,266.46),
                ["Positions"] = {
                    [1] = vector4(-2817.74,2277.49,25.95,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_71",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2775.71,2250.11,23.64,308.98),
                ["Positions"] = {
                    [1] = vector4(-2779.76,2260.36,23.49,314.65),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_71",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2798.01,2260.77,24.01,323.15),
                ["Positions"] = {
                    [1] = vector4(-2790.18,2268.48,23.57,317.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_71",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2691.05,2336.64,17.1,76.54),
                ["Positions"] = {
                    [1] = vector4(-2698.65,2336.26,17.12,164.41),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-2754.63,2268.27,22.24), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_71" },
        { Coords = vec3(-2763.32,2260.61,22.98), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_71" },
        { Coords = vec3(-2691.11,2329.07,17.24), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_71" },
        { Coords = vec3(-2695.23,2407.84,3.44), Hash = 1173348778, Lock = true, Distance = 5.5, Perm = "QG_71" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_71-2", ["Coords"] = vec3(-2679.25,2335.55,21.13), ["Mode"] = "2" },
        { ["Name"] = "QG_71-2", ["Coords"] = vec3(-2759.8,2388.3,6.49), ["Mode"] = "2" },
        { ["Name"] = "QG_71-3", ["Coords"] = vec3(-2678.86,2334.82,17.78), ["Mode"] = "2" },
        { ["Name"] = "QG_71-3", ["Coords"] = vec3(-2777.12,2345.58,3.93), ["Mode"] = "2" },
        { ["Name"] = "QG_71-4", ["Coords"] = vec3(-2755.93,2278.33,21.82), ["Mode"] = "2" },
        { ["Name"] = "QG_71-5", ["Coords"] = vec3(-2748.81,2326.15,15.7), ["Mode"] = "2", ["Perms"] = { ["Take"] = 1, ["Store"] = 5 } },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2770.98,2292.62,13.34), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2791.06,2251.9,24.04),"QG_71" },        
    },
    INTERPHONE = {
        
        -- {vector3(-2758.21,2264.4,22.71),"QG_71"},
        
    },
    SURVIVAL = {
        
        ["QG_71"] = vec3(-2775.3,2255.32,23.49),
        
    },
    WORLD_PVP = {
        
        {vector4(-2740.6,2276.11,20.24,238.12),"QG_71"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2775.3,2255.32,23.49),"QG_71"}, -- QG_71
        
    },
    RDM_ZONES = {
        ["QG_71"] = {
            {
                vector2(-2803.03, 2216.67),
                vector2(-2858.33, 2281.82),
                vector2(-2787.88, 2392.42),
                vector2(-2796.21, 2518.18),
                vector2(-2760.61, 2546.97),
                vector2(-2728.79, 2534.09),
                vector2(-2728.03, 2501.52),
                vector2(-2729.55, 2466.67),
                vector2(-2698.48, 2439.39),
                vector2(-2706.06, 2362.88),
                vector2(-2734.85, 2267.42)
            }, {
                name="QG_71",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_72"] = { -- só santa
    GARAGES = {
        -- QG_72
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-416.61,1605.84,357.59,257.96),
                ["Positions"] = {
                    [1] = vector4(-416.16,1611.06,357.18,252.29),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-281.84,1560.14,356.81,226.78),
                ["Positions"] = {
                    [1] = vector4(-276.35,1554.44,356.91,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-487.49,1542.85,395.13,62.37),
                ["Positions"] = {
                    [1] = vector4(-493.97,1548.07,395.03,62.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(4987.27,-5580.1,24.82,102.05),
                ["Positions"] = {
                    [1] = vector4(4980.4,-5568.69,26.67,5.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(5011.11,-5670.56,20.2,53.86),
                ["Positions"] = {
                    [1] = vector4(5003.7,-5671.12,20.29,317.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(4890.61,-5477.07,29.32,127.56),
                ["Positions"] = {
                    [1] = vector4(4900.84,-5483.86,29.94,286.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4878.77,-5731.92,26.35,249.45),
                ["Positions"] = {
                    [1] = vector4(4890.41,-5736.81,26.35,343.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4961.27,-5704.9,19.92,291.97),
                ["Positions"] = {
                    [1] = vector4(4966.82,-5709.85,19.9,325.99),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(5308.33,-5243.18,32.76,317.49),
                ["Positions"] = {
                    [1] = vector4(5309.98,-5238.32,33.51,229.61),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(5205.04,-5099.35,5.21,178.59),
                ["Positions"] = {
                    [1] = vector4(5200.37,-5107.01,4.82,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4455.59,-4476.06,4.3,206.93),
                ["Positions"] = {
                    [1] = vector4(4461.5,-4485.7,4.41,291.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4892.06,-5279.96,8.46,96.38),
                ["Positions"] = {
                    [1] = vector4(4882.33,-5283.15,8.42,269.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-486.03,1547.06,394.99,53.86),
                ["Positions"] = {
                    [1] = vector4(-493.97,1548.07,395.03,62.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-259.97,1561.89,337.16,257.96),
                ["Positions"] = {
                    [1] = vector4(-263.18,1548.3,337.15,130.4),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-284.47,1556.18,356.91,266.46),
                ["Positions"] = {
                    [1] = vector4(-276.36,1554.19,356.91,243.78),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_72",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-415.6,1617.55,357.52,170.08),
                ["Positions"] = {
                    [1] = vector4(-416.16,1611.06,357.18,252.29),
                },
            },
        },
    },   
    DOORS = {
        { Coords = vec3(4992.32,-5756.51,15.89), Hash = -1360938964, Lock = true, Distance = 5.5, Perm = "QG_72" },
        { Coords = vec3(5006.15,-5734.0,15.84), Hash = -1360938964, Lock = true, Distance = 5.5, Perm = "QG_72" },
        { Coords = vec3(4960.09,-5785.68,21.03), Hash = -1439869581, Lock = true, Distance = 5.5, Perm = "QG_72" },
        { Coords = vec3(5085.04,-5732.67,15.81), Hash = -1439869581, Lock = true, Distance = 5.5, Perm = "QG_72" },        
        { Coords = vec3(4977.21,-5600.25,23.78), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_72" },
        { Coords = vec3(-73.83,1509.55,281.96), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_72" },
        { Coords = vec3(-277.55,1531.42,336.73), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_72" },
        { Coords = vec3(-74.65,1510.2,282.03), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_72" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_72-2", ["Coords"] = vec3(-412.97,1589.33,361.92), ["Mode"] = "2" },
        { ["Name"] = "QG_72-3", ["Coords"] = vec3(-2678.86,2334.82,17.78), ["Mode"] = "2" },
        { ["Name"] = "QG_72-3", ["Coords"] = vec3(-408.76,1593.3,358.06), ["Mode"] = "2" },
        { ["Name"] = "QG_72-4", ["Coords"] = vec3(-405.53,1593.91,358.06), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-406.41,1590.6,358.06), ["Mode"] = "Personal" },
        { ["Name"] = "QG_72-2", ["Coords"] = vec3(5010.59,-5757.24,15.48), ["Mode"] = "2" },
        { ["Name"] = "QG_72-3", ["Coords"] = vec3(5030.39,-5736.98,17.86), ["Mode"] = "2" },
        { ["Name"] = "QG_72-4", ["Coords"] = vec3(5080.3,-5758.23,15.82), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(4982.55,-5712.59,25.22), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-401.36,1533.16,381.31),"QG_72" },     
        { vec3(5012.67,-5746.64,15.48),"QG_72" },       
    },
    INTERPHONE = {
        
        -- {vector3(-79.83,1510.57,282.67),"QG_72"},
        
    },
    SURVIVAL = {
        
        ["QG_72"] = vec3(-437.64,1585.96,360.32),
        
    },
    WORLD_PVP = {
        
        {vector4(-374.51,1595.71,347.17,0.0),"QG_72"},
        {vector4(4985.89,-5705.55,19.88,53.86),"QG_72"},
        
    },
    RISK_ZONES = {
        
        {vec3(-437.64,1585.96,360.32),"QG_72"}, -- QG_72
        
    },
    RDM_ZONES = {
        ["QG_72"] = {
            {
                vector2(-62.88, 1500.76),
                vector2(-65.91, 1534.85),
                vector2(-131.82, 1568.94),
                vector2(-182.58, 1563.64),
                vector2(-267.42, 1618.94),
                vector2(-386.36, 1644.70),
                vector2(-484.85, 1637.12),
                vector2(-512.12, 1570.45),
                vector2(-515.15, 1537.12),
                vector2(-439.39, 1485.61),
                vector2(-357.58, 1509.85),
                vector2(-240.91, 1500.76),
                vector2(-227.27, 1523.48),
                vector2(-145.45, 1523.48),
                vector2(-81.82, 1508.33)
            }, {
                name="QG_72",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_73"] = { --  
    GARAGES = {
        -- QG_73
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1985.32,-930.65,79.19,138.9),
                ["Positions"] = {
                    [1] = vector4(1977.68,-929.98,79.24,36.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1973.9,-1038.63,89.91,56.7),
                ["Positions"] = {
                    [1] = vector4(1972.09,-1031.64,89.46,317.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1889.13,-1027.02,79.13,263.63),
                ["Positions"] = {
                    [1] = vector4(1894.57,-1026.06,78.99,155.91),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1935.49,-971.38,79.24,59.53),
                ["Positions"] = {
                    [1] = vector4(1931.27,-969.82,79.11,337.33),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1929.89,-964.07,79.39,326.23),
                ["Positions"] = {
                    [1] = vector4(1932.31,-963.80,79.77,326.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1844.81,-1054.72,79.28,68.04),
                ["Positions"] = {
                    [1] = vector4(1842.28,-1047.78,79.26,150.24 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1989.21,-936.11,79.19,127.56),
                ["Positions"] = {
                    [1] = vector4(1990.62,-946.04,79.16,36.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1875.07,-1113.68,85.12,264.28),
                ["Positions"] = {
                    [1] = vector4(1884.18,-1116.77,85.38,160.85),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1879.37,-1067.83,81.59,280.63),
                ["Positions"] = {
                    [1] = vector4(1887.12,-1069.22,81.75,174.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1981.35,-1028.53,88.51,45.36),
                ["Positions"] = {
                    [1] = vector4(1982.99,-1017.12,87.4,323.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1890.8,-1022.36,78.97,252.29),
                ["Positions"] = {
                    [1] = vector4(1899.6,-1015.45,78.99,150.24),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1938.64,-964.98,79.3,79.38),
                ["Positions"] = {
                    [1] = vector4(1936.15,-958.31,79.31,340.16),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_73",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1985.33,-973.02,83.76,93.55),
                ["Positions"] = {
                    [1] = vector4(1980.16,-974.66,83.78,0.0),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(1970.23,-927.23,79.11), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_73" }, 
        { Coords = vec3(1957.56,-935.76,79.4), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_73" },
        { Coords = vec3(1937.42,-950.83,79.43), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_73" },
        { Coords = vec3(1886.47,-1080.3,83.24), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_73" },
        { Coords = vec3(1940.37,-1122.59,101.17), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_73" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_73-2", ["Coords"] = vec3(1958.38,-952.56,79.62), ["Mode"] = "2" },
        { ["Name"] = "QG_73-3", ["Coords"] = vec3(1961.03,-944.2,79.65), ["Mode"] = "2" },
        { ["Name"] = "QG_73-4", ["Coords"] = vec3(1955.07,-959.94,79.45), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1946.14,-953.76,79.67), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1836.89,-1036.85,79.23),"QG_73" },
        { vec3(1958.54,-957.19,79.55),"QG_73" },
        { vec3(1893.83,-1005.42,79.18),"QG_73" },
    },
    INTERPHONE = {
        
        -- {vector3(1929.71,-955.58,79.13),"QG_73"},
        
    },
    SURVIVAL = {
        
        ["QG_73"] = vec3(1942.58,-955.52,79.68),
        
    },
    WORLD_PVP = {
        
        {vector4(1839.1,-1037.61,79.23,232.45),"QG_73"},
        
    },
    RISK_ZONES = {
        
        {vec3(1942.58,-955.52,79.68),"QG_73"}, -- QG_72
        
    },
    RDM_ZONES = {
        ["QG_73"] = {
            {
                vector2(1957.58, -895.45),
                vector2(2034.85, -985.61),
                vector2(1978.79, -1046.97),
                vector2(1944.70, -1212.12),
                vector2(1928.03, -1329.55),
                vector2(1893.94, -1420.45),
                vector2(1694.70, -1279.55),
                vector2(1799.24, -1109.09),
                vector2(1814.39, -1018.94)
            }, {
                name="QG_73",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_74"] = { -- só universo
    GARAGES = {
        -- QG_74
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-100.64,1517.98,285.05,110.56),
                ["Positions"] = {
                    [1] = vector4(-103.42,1515.33,285.07,87.88),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-282.14,1560.9,357.01,226.78),
                ["Positions"] = {
                    [1] = vector4(-271.47,1554.03,356.91,240.95),
                },
            },
        }, 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-366.64,1599.09,346.33,352.28),
                ["Positions"] = {
                    [1] = vector4(-374.38,1591.90,347.00,93.71),
                },
            },
        }, 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-485.86,1547.15,395.01,70.87),
                ["Positions"] = {
                    [1] = vector4(-498.25,1547.71,395.03,62.37),
                },
            },
        },     
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_74",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-284.7,1556.13,356.96,249.45),
                ["Positions"] = {
                    [1] = vector4(-271.47,1554.03,356.91,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_74",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-131.32,1544.80,302.94,356.08),
                ["Positions"] = {
                    [1] = vector4(-129.37,1549.01,302.56,253.77 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_74",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-380.86,1600.5,348.67,260.79),
                ["Positions"] = {
                    [1] = vector4(-373.59,1593.39,346.97,272.13),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-74.45,1509.96,282.02), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_74" },
        { Coords = vec3(-277.18,1530.98,336.73), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_74" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_74-2", ["Coords"] = vec3(-413.03,1589.51,361.92), ["Mode"] = "2" },
        { ["Name"] = "QG_74-3", ["Coords"] = vec3(-408.50,1593.13,358.06), ["Mode"] = "2" },
        { ["Name"] = "QG_74-4", ["Coords"] = vec3(-405.61,1593.53,358.06), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-406.46,1590.69,358.06), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-401.35,1533.42,381.31),"QG_74" },

    },
    INTERPHONE = {
        
        -- {vector3( -84.73,1511.61,283.21),"QG_74"},
        
    },
    SURVIVAL = {
        
        ["QG_74"] = vec3(-438.44,1585.46,360.32),
        
    },
    WORLD_PVP = {
        
        {vector4(-362.58,1621.85,347.65,127.56),"QG_74"},
        
    },
    RISK_ZONES = {
        
        {vec3(-438.44,1585.46,360.32),"QG_74"}, -- QG_74
        
    },
    RDM_ZONES = {

        ["QG_74"] = {
            {
                vector2(-59.26,1503.72),
                vector2(-452.28,1696.17),
                vector2(-507.61,1524.61),
                vector2(-90.15,1514.02)
            }, {
                name="QG_74",
                --debugGrid=true,
            },    
        } 
        
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_75"] = { -- só nobre
    GARAGES = {
        -- QG_75
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2312.8,3262.32,47.74,206.93),
                ["Positions"] = {
                    [1] = vector4(2321.42,3259.98,47.55,99.22),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2575.02,3614.85,103.63,113.39),
                ["Positions"] = {
                    [1] = vector4(2525.65,3594.76,97.68,113.39),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2546.30,3440.60,73.61,43.80),
                ["Positions"] = {
                    [1] = vector4(2548.76,3451.96,73.35,58.91),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2432.04,3543.16,81.23,45.36),
                ["Positions"] = {
                    [1] = vector4(2442.14,3555.97,83.12,113.39),
                },
            },
        },         
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_75",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2573.77,3629.99,104.27,209.77),
                ["Positions"] = {
                    [1] = vector4(2569.9,3623.71,103.41,116.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_75",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2294.6,3260.44,48.07,113.39),
                ["Positions"] = {
                    [1] = vector4(2278.22,3250.96,47.43,104.89),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_75",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2533.01,3432.69,73.62,343.0),
                ["Positions"] = {
                    [1] = vector4(2540.33,3446.5,73.4,31.19),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(2530.55,3601.44,99.33), Hash = -2004530989, Lock = true, Distance = 5.5, Perm = "QG_75" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_75-2", ["Coords"] = vec3(2593.4,3684.81,115.56), ["Mode"] = "2" },
        { ["Name"] = "QG_75-3", ["Coords"] = vec3(2627.36,3668.06,113.08), ["Mode"] = "2" },
        { ["Name"] = "QG_75-3", ["Coords"] = vec3(2557.79,3447.83,73.58), ["Mode"] = "2" },
        { ["Name"] = "QG_75-4", ["Coords"] = vec3(2627.36,3668.13,106.02 ), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2571.09,3663.5,108.9), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2609.94,3678.1,112.86),"QG_75" },

    },
    INTERPHONE = {
        
        -- {vector3(2297.78,3261.21,48.04),"QG_75"},
        -- {vector3(2413.88,3526.96,76.95),"QG_75"},
        
    },
    SURVIVAL = {
        
        ["QG_75"] = vec3(2636.6,3663.74,106.02),
        
    },
    WORLD_PVP = {
        
        {vector4(2530.53,3601.46,105.63,0.0),"QG_75"},
        
    },
    RISK_ZONES = {
        
        {vec3(2636.6,3663.74,106.02),"QG_75"}, -- QG_75
        
    },
    RDM_ZONES = {
        ["QG_75"] = {
            {
                vector2(2263.64, 3242.42),
                vector2(2336.36, 3261.36),
                vector2(2365.91, 3289.39),
                vector2(2372.73, 3314.39),
                vector2(2370.45, 3335.61),
                vector2(2350.76, 3350.76),
                vector2(2353.03, 3400.76),
                vector2(2359.09, 3455.30),
                vector2(2422.73, 3431.06),
                vector2(2457.58, 3439.39),
                vector2(2504.55, 3446.97),
                vector2(2559.85, 3453.79),
                vector2(2568.18, 3479.55),
                vector2(2559.09, 3507.58),
                vector2(2543.18, 3519.70),
                vector2(2484.85, 3525.76),
                vector2(2424.24, 3540.91),
                vector2(2503.03, 3609.09),
                vector2(2526.52, 3639.39),
                vector2(2556.82, 3650.76),
                vector2(2596.21, 3643.94),
                vector2(2634.85, 3662.88),
                vector2(2640.15, 3706.06),
                vector2(2631.06, 3746.21),
                vector2(2608.33, 3771.21),
                vector2(2575.00, 3778.79),
                vector2(2543.18, 3761.36),
                vector2(2532.58, 3731.82),
                vector2(2509.85, 3718.18),
                vector2(2469.70, 3669.70),
                vector2(2433.33, 3645.45),
                vector2(2461.36, 3700.76),
                vector2(2453.79, 3724.24),
                vector2(2421.97, 3758.33),
                vector2(2394.70, 3748.48),
                vector2(2348.48, 3699.24),
                vector2(2312.88, 3628.03),
                vector2(2312.88, 3574.24),
                vector2(2318.94, 3532.58),
                vector2(2283.33, 3478.79),
                vector2(2259.85, 3410.61),
                vector2(2244.70, 3315.91)
            }, {
                name="QG_75",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_76"] = { -- só nobre
    GARAGES = {
        -- QG_76
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3305.97,491.46,11.47,31.19),
                ["Positions"] = {
                    [1] = vector4(-3306.27,494.95,11.98,300.48),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3058.48,422.58,6.57,252.29),
                ["Positions"] = {
                    [1] = vector4(-3053.02,424.21,6.62,153.08),
                },
            },
        },         
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_76",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3415.05,518.76,9.2,221.11),
                ["Positions"] = {
                    [1] = vector4(-3411.34,514.04,9.23,300.48),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_76",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3272.29,525.02,12.27,119.06),
                ["Positions"] = {
                    [1] = vector4(-3285.79,522.52,12.37,96.38),
                },
            },
        },
    },    
    DOORS = {

    },
    CHESTS = {
        
        { ["Name"] = "QG_76-2", ["Coords"] = vec3(-3333.52,536.37,17.44), ["Mode"] = "2" },
        { ["Name"] = "QG_76-3", ["Coords"] = vec3(-3328.16,539.44,17.14), ["Mode"] = "2" },
        { ["Name"] = "QG_76-4", ["Coords"] = vec3(-3309.21,555.17,14.41), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3333.53,552.2,13.95), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3277.35,565.56,6.89),"QG_76" },
        { vec3(-3281.60,580.83,6.12),"QG_76" },

    },
    INTERPHONE = {
        
        -- {vector3(-3061.93,414.52,6.69),"QG_76"},
        
    },
    SURVIVAL = {
        
        ["QG_76"] = vec3(-3340.14,558.55,13.95),
        
    },
    WORLD_PVP = {
        
        {vector4(-3373.19,594.69,3.67,17.01),"QG_76"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3340.14,558.55,13.95),"QG_76"}, -- QG_76
        
    },
    RDM_ZONES = {
        ["QG_76"] = {
            {
                vector2(-3061.52,415.15),
                vector2(-3268.15,495.9),
                vector2(-3284.86,465.46),
                vector2(-3322.39,459.71),
                vector2(-3356.95,437.69),
                vector2(-3374.49,441.71),
                vector2(-3381.77,463.82),
                vector2(-3426.42,456.23),
                vector2(-3458.51,557.45),
                vector2(-3395.35,584.92),
                vector2(-3404.71,598.91),
                vector2(-3367.47,623.66),
                vector2(-3356.69,608.05),
                vector2(-3320.07,626.95),
                vector2(-3254.7,605.89),
                vector2(-3260.09,500.05),
                vector2(-3059.15,421.21)
            }, {
                name="QG_76",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_77"] = { -- só nobre
    GARAGES = {
        -- QG_77
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(548.68,884.63,250.57,14.18),
                ["Positions"] = {
                    [1] = vector4(556.54,892.99,251.18,348.67),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(645.29,935.35,247.57,175.75),
                ["Positions"] = {
                    [1] = vector4(650.63,937.03,247.2,260.79),
                },
            },
        },   
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(829.34,977.15,240.45,226.78),
                ["Positions"] = {
                    [1] = vector4(834.14,975.43,241.39,303.31),
                },
            },
        },        
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_77",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(577.31,879.62,250.57,175.75),
                ["Positions"] = {
                    [1] = vector4(579.87,888.52,250.47,257.96),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_77",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(666.59,931.19,247.57,0.0),
                ["Positions"] = {
                    [1] = vector4(663.95,942.1,247.47,348.67),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(819.2,972.04,241.0), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_77" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_77-2", ["Coords"] = vec3(690.62,920.21,247.57), ["Mode"] = "2" },
        { ["Name"] = "QG_77-3", ["Coords"] = vec3(684.3,921.53,247.57), ["Mode"] = "2" },
        { ["Name"] = "QG_77-4", ["Coords"] = vec3(683.24,914.67,247.57), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(628.16,929.44,247.57), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(682.26,909.33,247.57),"QG_77" },

    },
    INTERPHONE = {
        
        -- {vector3(816.44,966.03,239.07),"QG_77"},
        
    },
    SURVIVAL = {
        
        ["QG_77"] = vec3(656.5,951.64,247.57),
        
    },
    WORLD_PVP = {
        
        {vector4(681.97,875.56,247.64,150.24),"QG_77"},
        
    },
    RISK_ZONES = {
        
        {vec3(656.5,951.64,247.57),"QG_77"}, -- QG_77
        
    },
    RDM_ZONES = {
        ["QG_77"] = {
            {
                vector2(554.37,930.52),
                vector2(593.27,924.23),
                vector2(602.95,983.08),
                vector2(619.48,979.72),
                vector2(619.28,975.97),
                vector2(668.0,967.35),
                vector2(686.96,1065.06),
                vector2(762.45,1050.41),
                vector2(774.62,1042.67),
                vector2(782.1,1034.0),
                vector2(825.14,973.09),
                vector2(817.21,965.57),
                vector2(769.85,1032.56),
                vector2(761.82,1039.61),
                vector2(755.19,1041.78),
                vector2(706.75,1050.07),
                vector2(697.93,1048.42),
                vector2(692.35,1042.7),
                vector2(689.29,1031.44),
                vector2(674.79,949.23),
                vector2(684.8,927.45),
                vector2(693.86,926.29),
                vector2(691.26,911.07),
                vector2(695.17,910.38),
                vector2(688.22,870.59),
                vector2(661.64,874.95),
                vector2(660.16,868.12),
                vector2(646.48,870.35),
                vector2(647.52,877.52),
                vector2(610.57,884.09),
                vector2(600.65,873.79),
                vector2(546.27,883.81)
            }, {
                name="QG_77",
                --debugGrid=true,
            },    
        }  
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_78"] = { -- QG_78
    GARAGES = {
        -- QG_78
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(4987.27,-5580.1,24.82,102.05),
                ["Positions"] = {
                    [1] = vector4(4980.4,-5568.69,26.67,5.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(5011.11,-5670.56,20.2,53.86),
                ["Positions"] = {
                    [1] = vector4(5003.7,-5671.12,20.29,317.49),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(4890.61,-5477.07,29.32,127.56),
                ["Positions"] = {
                    [1] = vector4(4900.84,-5483.86,29.94,286.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4878.77,-5731.92,26.35,249.45),
                ["Positions"] = {
                    [1] = vector4(4890.41,-5736.81,26.35,343.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(246.74,-774.56,30.68,73.71),
                ["Positions"] = {
                    [1] = vector4(235.61,-782.45,31.31,158.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4961.27,-5704.9,19.92,291.97),
                ["Positions"] = {
                    [1] = vector4(4966.82,-5709.85,19.9,325.99),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(5308.33,-5243.18,32.76,317.49),
                ["Positions"] = {
                    [1] = vector4(5309.98,-5238.32,33.51,229.61),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(5205.04,-5099.35,5.21,178.59),
                ["Positions"] = {
                    [1] = vector4(5200.37,-5107.01,4.82,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4455.59,-4476.06,4.3,206.93),
                ["Positions"] = {
                    [1] = vector4(4461.5,-4485.7,4.41,291.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1420.26,-2603.4,47.99,249.45),
                ["Positions"] = {
                    [1] = vector4(1426.58,-2591.63,48.0,348.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3744.99,-4477.97,6.6,294.81),
                ["Positions"] = {
                    [1] = vector4(3782.44,-4489.7,6.67,291.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_78",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4892.06,-5279.96,8.46,96.38),
                ["Positions"] = {
                    [1] = vector4(4882.33,-5283.15,8.42,269.3),
                },
            },
        },




    },    
    DOORS = {
        { Coords = vec3(4992.32,-5756.51,15.89), Hash = -1360938964, Lock = true, Distance = 5.5, Perm = "QG_78" },
        { Coords = vec3(5006.15,-5734.0,15.84), Hash = -1360938964, Lock = true, Distance = 5.5, Perm = "QG_78" },
        { Coords = vec3(4960.09,-5785.68,21.03), Hash = -1439869581, Lock = true, Distance = 5.5, Perm = "QG_78" },
        { Coords = vec3(5085.04,-5732.67,15.81), Hash = -1439869581, Lock = true, Distance = 5.5, Perm = "QG_78" },        
        { Coords = vec3(4977.21,-5600.25,23.78), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_78" },
        { Coords = vec3(1522.68,-2831.85,48.13), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_78" },
        { Coords = vec3(1517.51,-2841.68,48.13), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_78" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_78-2", ["Coords"] = vec3(5010.59,-5757.24,15.48), ["Mode"] = "2" },
        { ["Name"] = "QG_78-3", ["Coords"] = vec3(5030.39,-5736.98,17.86), ["Mode"] = "2" },
        { ["Name"] = "QG_78-4", ["Coords"] = vec3(5080.3,-5758.23,15.82), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(4982.55,-5712.59,25.22), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(5012.67,-5746.64,15.48),"QG_78" },        
    },
    INTERPHONE = {
        
        -- {vector3(4984.08,-5601.38,23.84),"QG_78"},
        -- {vector3(1527.66,-2840.67,48.33),"QG_78"},
    },
    SURVIVAL = {
        
        ["QG_78"] = vec3(4993.43,-5713.16,19.88),
        
    },
    WORLD_PVP = {
        
        {vector4(4985.89,-5705.55,19.88,53.86),"QG_78"},
        
    },
    RISK_ZONES = {
        
        {vec3(4993.43,-5713.16,19.88),"QG_78"}, -- QG_78
        
    },
    RDM_ZONES = {
        ["QG_78"] = {
            {
                vector2(4713.22,-5529.65),
                vector2(4782.04,-5547.28),
                vector2(4900.16,-5558.62),
                vector2(4981.47,-5596.83),
                vector2(5033.36,-5616.65),
                vector2(5106.51,-5646.59),
                vector2(5144.37,-5685.25),
                vector2(5147.86,-5735.05),
                vector2(5023.6,-5874.31),
                vector2(5044.46,-5891.19),
                vector2(4982.15,-5957.47),
                vector2(4934.58,-5898.5),
                vector2(4855.43,-5950.56),
                vector2(4873.28,-5991.67),
                vector2(4824.89,-6037.92),
                vector2(4736.63,-6015.41),
                vector2(4673.08,-5684.63),
                vector2(4649.73,-5658.44)
            }, {
                name="QG_78",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}

ORGS_CONFIG["QG_79"] = { -- QG_79
    GARAGES = {
        -- QG_79
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2034.22,-13.71,207.12,351.5),
                ["Positions"] = {
                    [1] = vector4(2031.71,-10.61,205.92,79.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2138.31,49.15,221.15,226.78),
                ["Positions"] = {
                    [1] = vector4(2140.37,47.35,221.04,300.48),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_79",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2266.25,162.19,214.99,19.85),
                ["Positions"] = {
                    [1] = vector4(2299.88,195.14,205.69,324.31),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_79",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2008.27,-19.20,201.18,143.61),
                ["Positions"] = {
                    [1] = vector4(2005.45,-32.56,201.85,175.21),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_79",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2194.92,97.43,229.03,337.72),
                ["Positions"] = {
                    [1] = vector4(2290.78,182.89,207.71,317.87),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(2276.73,171.26,211.57), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_79" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_79-2", ["Coords"] = vec3(2182.45,86.91,228.43), ["Mode"] = "2" },
        { ["Name"] = "QG_79-3", ["Coords"] = vec3(2169.93,59.82,225.72), ["Mode"] = "2" },
        { ["Name"] = "QG_79-4", ["Coords"] = vec3(2107.64,1.09,215.69), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2077.23,-8.01,213.49), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2184.82,99.25,228.96),"QG_79" },        
    },
    INTERPHONE = {
        
        -- {vector3(4984.08,-5601.38,23.84),"QG_79"},
        
    },
    SURVIVAL = {
        
        ["QG_79"] = vec3(2070.24,8.04,214.13),
        
    },
    WORLD_PVP = {
        
        {vector4(2044.04,-13.59,210.23,22.68),"QG_79"},
        
    },
    RISK_ZONES = {
        
        {vec3(2070.24,8.04,214.13),"QG_79"}, -- QG_79
        
    },
    RDM_ZONES = {
        ["QG_79"] = {
            {
                vector2(2206.82, 179.55),
                vector2(2287.12, 116.67),
                vector2(2346.97, 155.30),
                vector2(2401.52, 225.00),
                vector2(2423.48, 293.18),
                vector2(2436.36, 366.67),
                vector2(2444.70, 428.03),
                vector2(2472.73, 484.85),
                vector2(2471.21, 539.39),
                vector2(2465.15, 612.12),
                vector2(2460.61, 686.36),
                vector2(2375.76, 671.21),
                vector2(2353.03, 592.42),
                vector2(2330.30, 515.15),
                vector2(2296.97, 436.36),
                vector2(2271.21, 366.67),
                vector2(2242.42, 296.97),
                vector2(2227.27, 251.52),
                vector2(2213.64, 207.58)
            }, {
                name="QG_79",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}

ORGS_CONFIG["QG_80"] = { -- QG_80
    GARAGES = {
        -- QG_80
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(3050.52,5045.97,25.51,51.03),
                ["Positions"] = {
                    [1] = vector4(3040.44,5041.8,25.85,85.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(3136.25,5103.91,21.2,116.23),
                ["Positions"] = {
                    [1] = vector4(3124.82,5099.65,21.08,93.55),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_80",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3066.32,5045.06,24.92,5.67),
                ["Positions"] = {
                    [1] = vector4(3082.7,5037.05,24.25,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_80",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3155.03,5103.04,19.78,82.21),
                ["Positions"] = {
                    [1] = vector4(3142.74,5101.57,20.93,107.72),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(3323.12,5149.38,18.28), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_80" },
        { Coords = vec3(3259.4,5184.89,19.73), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_80" },
        { Coords = vec3(3061.6,5045.39,25.09), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_80" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_80-2", ["Coords"] = vec3(3145.34,5109.0,21.18), ["Mode"] = "2" },
        { ["Name"] = "QG_80-3", ["Coords"] = vec3(3103.36,5105.86,22.8), ["Mode"] = "2" },
        { ["Name"] = "QG_80-4", ["Coords"] = vec3(3078.0,5090.84,23.57), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(3127.92,5089.93,22.44), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(3121.26,5086.49,22.44),"QG_80" },        
    },
    INTERPHONE = {
        
        -- {vector3(4984.08,-5601.38,23.84),"QG_80"},
        
    },
    SURVIVAL = {
        
        ["QG_80"] = vec3(3108.76,5083.8,22.6),
        
    },
    WORLD_PVP = {
        
        {vector4(3053.44,5051.71,25.39,53.86),"QG_80"},
        
    },
    RISK_ZONES = {
        
        {vec3(3108.76,5083.8,22.6),"QG_80"}, -- QG_80
        
    },
    RDM_ZONES = {
        ["QG_80"] = {
            {
                vector2(3035.23, 5043.94),
                vector2(3043.18, 5085.61),
                vector2(3060.61, 5097.73),
                vector2(3100.38, 5096.97),
                vector2(3115.91, 5099.62),
                vector2(3143.56, 5109.47),
                vector2(3164.39, 5114.77),
                vector2(3187.12, 5124.24),
                vector2(3214.77, 5131.44),
                vector2(3231.44, 5143.18),
                vector2(3244.70, 5155.68),
                vector2(3261.36, 5150.76),
                vector2(3260.98, 5140.53),
                vector2(3252.65, 5121.59),
                vector2(3212.88, 5111.36),
                vector2(3193.56, 5103.41),
                vector2(3204.17, 5089.02),
                vector2(3206.82, 5076.89),
                vector2(3219.70, 5061.36),
                vector2(3245.45, 5057.58),
                vector2(3266.67, 5044.70),
                vector2(3290.91, 5034.09),
                vector2(3284.09, 5001.52),
                vector2(3265.91, 4996.97),
                vector2(3204.55, 5018.94),
                vector2(3166.67, 5031.06),
                vector2(3115.15, 5033.33),
                vector2(3070.45, 5031.82)
            }, {
                name="QG_80",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_81"] = { -- QG_81
    GARAGES = {
        -- QG_81
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(96.62,6523.75,32.2,232.45),
                ["Positions"] = {
                    [1] = vector4(107.91,6515.02,32.2,130.4),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(119.74,6552.28,32.2,314.65),
                ["Positions"] = {
                    [1] = vector4(112.9,6547.14,32.2,221.11),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_81",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(41.17,6529.72,32.2,317.49),
                ["Positions"] = {
                    [1] = vector4(43.59,6539.54,32.2,226.78),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_81",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(93.41,6494.93,32.2,39.69),
                ["Positions"] = {
                    [1] = vector4(86.5,6495.72,32.2,317.49),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(105.7,6504.7,32.2), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_81" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_81-2", ["Coords"] = vec3(86.99,6523.96,37.59), ["Mode"] = "2" },
        { ["Name"] = "QG_81-3", ["Coords"] = vec3(99.12,6528.62,37.59), ["Mode"] = "2" },
        { ["Name"] = "QG_81-4", ["Coords"] = vec3(88.69,6525.01,32.25), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(112.09,6524.46,32.2), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(104.37,6534.24,37.59),"QG_81" },        
    },
    INTERPHONE = {
        
        -- {vector3(4984.08,-5601.38,23.84),"QG_81"},
        
    },
    SURVIVAL = {
        
        ["QG_81"] = vec3(84.06,6511.81,32.2),
        
    },
    WORLD_PVP = {
        
        {vector4(3053.44,5051.71,25.39,53.86),"QG_81"},
        
    },
    RISK_ZONES = {
        
        {vec3(84.06,6511.81,32.2),"QG_81"}, -- QG_80
        
    },
    RDM_ZONES = {
        -- ["QG_81"] = {
        --     {
        --         vector2(4713.22,-5529.65),
        --         vector2(4782.04,-5547.28),
        --         vector2(4900.16,-5558.62),
        --         vector2(4981.47,-5596.83),
        --         vector2(5033.36,-5616.65),
        --         vector2(5106.51,-5646.59),
        --         vector2(5144.37,-5685.25),
        --         vector2(5147.86,-5735.05),
        --         vector2(5023.6,-5874.31),
        --         vector2(5044.46,-5891.19),
        --         vector2(4982.15,-5957.47),
        --         vector2(4934.58,-5898.5),
        --         vector2(4855.43,-5950.56),
        --         vector2(4873.28,-5991.67),
        --         vector2(4824.89,-6037.92),
        --         vector2(4736.63,-6015.41),
        --         vector2(4673.08,-5684.63),
        --         vector2(4649.73,-5658.44)
        --     }, {
        --         name="QG_81",
        --         --debugGrid=true,
        --     },    
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_82"] = { -- QG_82
    GARAGES = {
        -- QG_82
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1178.75,282.41,69.47,325.99),
                ["Positions"] = {
                    [1] = vector4(-1172.57,275.48,68.92,283.47),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1155.32,302.95,67.82,102.05),
                ["Positions"] = {
                    [1] = vector4(-1150.2,304.13,67.6,14.18),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_82",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1166.91,324.33,69.4,133.23),
                ["Positions"] = {
                    [1] = vector4(-1163.63,327.26,69.32,42.52),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_82",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1185.96,281.4,69.51,155.91),
                ["Positions"] = {
                    [1] = vector4(-1183.22,282.68,69.49,195.6),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-1199.11,263.45,69.83), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_82" },
        { Coords = vec3(-1161.2,314.19,68.51), Hash = -1918480350, Lock = true, Distance = 5.5, Perm = "QG_82" },
        { Coords = vec3(-1159.22,310.33,68.41), Hash = -349730013, Lock = true, Distance = 5.5, Perm = "QG_82" },        
    },
    CHESTS = {
        
        { ["Name"] = "QG_82-2", ["Coords"] = vec3(-1186.99,297.16,73.67), ["Mode"] = "2" },
        { ["Name"] = "QG_82-3", ["Coords"] = vec3(-1175.32,300.99,69.76), ["Mode"] = "2" },
        { ["Name"] = "QG_82-4", ["Coords"] = vec3(-1179.91,292.91,69.81), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1217.34,264.88,69.61), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1205.78,295.88,69.72),"QG_82" },        
    },
    INTERPHONE = {
        
        -- {vector3(4984.08,-5601.38,23.84),"QG_82"},
        
    },
    SURVIVAL = {
        
        ["QG_82"] = vec3(-1206.9,281.23,69.67),
        
    },
    WORLD_PVP = {
        
        {vector4(-1175.88,297.96,69.81,198.43),"QG_82"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1206.9,281.23,69.67),"QG_82"}, -- QG_82
        
    },
    RDM_ZONES = {
        ["QG_82"] = {
            {
                vector2(-1214.39, 307.20),
                vector2(-1168.56, 323.11),
                vector2(-1153.03, 314.39),
                vector2(-1145.45, 274.24),
                vector2(-1215.91, 251.89),
                vector2(-1219.70, 269.32),
                vector2(-1212.12, 283.33),
                vector2(-1212.12, 296.97)
            }, {
                name="QG_82",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_83"] = { -- QG_83
    GARAGES = {
        -- QG_83
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1180.33,-1718.9,6.47,22.68),
                ["Positions"] = {
                    [1] = vector4(-1181.24,-1711.05,6.55,209.77),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1181.84,-1743.38,4.09,82.21),
                ["Positions"] = {
                    [1] = vector4(-1170.76,-1747.21,3.99,215.44),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_83",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1175.11,-1715.06,6.55,235.28),
                ["Positions"] = {
                    [1] = vector4(-1181.61,-1710.67,6.55,215.44),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_83",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1168.08,-1733.94,4.14,42.52),
                ["Positions"] = {
                    [1] = vector4(-1159.88,-1740.97,4.04,130.4),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-1162.07,-1755.27,3.99), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_83" },
        { Coords = vec3(-1118.86,-1724.16,4.38), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_83" },
        { Coords = vec3(-1302.96,-1635.08,4.47), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_83" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_83-2", ["Coords"] = vec3(-1181.93,-1736.36,11.9), ["Mode"] = "2" },
        { ["Name"] = "QG_83-3", ["Coords"] = vec3(-1236.21,-1758.32,4.62), ["Mode"] = "2" },
        { ["Name"] = "QG_83-4", ["Coords"] = vec3(-1222.85,-1732.61,4.6), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1219.3,-1727.82,4.6), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1188.61,-1732.0,11.9),"QG_83" },        
    },
    INTERPHONE = {
        
        -- {vector3(-1157.11,-1752.39,4.03),"QG_83"},
        
    },
    SURVIVAL = {
        
        ["QG_83"] = vec3(-1192.32,-1725.79,4.6),
        
    },
    WORLD_PVP = {
        
        {vector4(-1197.57,-1744.33,4.52,0.0),"QG_83"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1192.32,-1725.79,4.6),"QG_83"}, -- QG_83
        
    },
    RDM_ZONES = {
        ["QG_83"] = {
            {
                vector2(-1095.45, -1710.98),
                vector2(-1181.44, -1769.70),
                vector2(-1208.33, -1769.32),
                vector2(-1219.32, -1782.95),
                vector2(-1309.85, -1673.48),
                vector2(-1333.71, -1628.41),
                vector2(-1275.00, -1596.21),
                vector2(-1246.59, -1632.58),
                vector2(-1232.58, -1624.24),
                vector2(-1188.26, -1687.12),
                vector2(-1134.09, -1648.48)
            }, {
                name="QG_83",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_84"] = { -- QG_84
    GARAGES = {
        -- QG_84
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2536.27,1886.76,167.76,133.23),
                ["Positions"] = {
                    [1] = vector4(-2542.15,1884.81,167.13,206.93),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2423.39,1771.65,187.62,45.36),
                ["Positions"] = {
                    [1] = vector4(-2424.56,1776.98,187.32,36.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_84",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2383.31,1737.41,212.22,0.0),
                ["Positions"] = {
                    [1] = vector4(-2377.95,1746.03,212.88,357.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_84",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2534.51,1876.55,166.76,119.06),
                ["Positions"] = {
                    [1] = vector4(-2538.29,1867.02,166.61,212.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_84",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2491.34,1846.88,176.45,161.58),
                ["Positions"] = {
                    [1] = vector4(-2484.9,1841.15,176.84,70.87),
                },
            },
        },

    },    
    DOORS = {
        -- { Coords = vec3(4992.32,-5756.51,15.89), Hash = -1360938964, Lock = true, Distance = 5.5, Perm = "QG_84" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_84-2", ["Coords"] = vec3(-2422.21,1739.66,190.81), ["Mode"] = "2" },
        { ["Name"] = "QG_84-3", ["Coords"] = vec3(-2408.36,1750.32,187.62), ["Mode"] = "2" },
        { ["Name"] = "QG_84-4", ["Coords"] = vec3(-2488.19,1849.22,177.01), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2516.26,1869.64,172.1), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2416.58,1761.17,187.96),"QG_84" },        
    },
    INTERPHONE = {
        
        -- {vector3(-2536.66,1879.88,166.88),"QG_84"},
        
    },
    SURVIVAL = {
        
        ["QG_84"] = vec3(-2422.69,1756.19,187.96),
        
    },
    WORLD_PVP = {
        
        {vector4(-2424.06,1781.7,187.27,133.23),"QG_84"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2422.69,1756.19,187.96),"QG_84"}, -- QG_84
        
    },
    RDM_ZONES = {
        ["QG_84"] = {
            {
                vector2(-2371.97, 1915.91),
                vector2(-2305.30, 1774.24),
                vector2(-2320.45, 1706.82),
                vector2(-2417.42, 1711.36),
                vector2(-2454.55, 1766.67),
                vector2(-2484.09, 1821.97),
                vector2(-2518.94, 1854.55),
                vector2(-2536.36, 1887.12),
                vector2(-2525.76, 1918.18),
                vector2(-2467.42, 1939.39),
                vector2(-2396.21, 1932.58)
            }, {
                name="QG_84",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_85"] = { -- QG_85
    GARAGES = {
        -- QG_85
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-959.97,-1472.84,5.17,107.72),
                ["Positions"] = {
                    [1] = vector4(-968.04,-1474.2,5.02,104.89),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_85",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-951.41,-1484.12,6.77,104.89),
                ["Positions"] = {
                    [1] = vector4(-963.37,-1496.0,5.0,14.18),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(-949.29,-1474.61,6.79), Hash = -292728657, Lock = true, Distance = 5.5, Perm = "QG_85" },
        { Coords = vec3(-948.29,-1477.55,6.79), Hash = -1653461382, Lock = true, Distance = 5.5, Perm = "QG_85" },
        { Coords = vec3(-989.78,-1456.6,4.99), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_85" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_85-2", ["Coords"] = vec3(-879.91,-1462.49,7.53), ["Mode"] = "2" },
        { ["Name"] = "QG_85-3", ["Coords"] = vec3(-867.66,-1458.15,7.53), ["Mode"] = "2" },
        { ["Name"] = "QG_85-4", ["Coords"] = vec3(-865.78,-1451.72,7.53), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-881.36,-1443.53,7.53), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-875.53,-1458.98,7.53),"QG_85" },        
    },
    INTERPHONE = {
        
        -- {vector3(-956.75,-1483.56,5.16),"QG_85"},
        
    },
    SURVIVAL = {
        
        ["QG_85"] = vec3(-923.98,-1467.25,5.9),
        
    },
    WORLD_PVP = {
        
        {vector4(-943.33,-1485.53,6.79,14.18),"QG_85"},
        
    },
    RISK_ZONES = {
        
        {vec3(-923.98,-1467.25,5.9),"QG_85"}, -- QG_85
        
    },
    RDM_ZONES = {
        ["QG_85"] = {
            {
                vector2(-871.59, -1420.45),
                vector2(-854.17, -1468.94),
                vector2(-961.36, -1509.47),
                vector2(-994.32, -1462.88),
                vector2(-998.11, -1455.30),
                vector2(-986.36, -1452.27),
                vector2(-978.79, -1465.53),
                vector2(-888.26, -1430.68)
            }, {
                name="QG_85",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = true,
        ["Maresia"] = true,
        ["Alexandria"] = true,
    }
}
ORGS_CONFIG["QG_86"] = { -- QG_86 so nobre
    GARAGES = {
        -- QG_86
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(581.56,765.34,203.16,28.35),
                ["Positions"] = {
                    [1] = vector4(574.54,771.09,203.11,42.52),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(580.61,780.66,202.74,19.85),
                ["Positions"] = {
                    [1] = vector4(587.16,785.48,202.5,249.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_86",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(596.89,760.34,202.96,337.33),
                ["Positions"] = {
                    [1] = vector4(589.26,768.74,203.07,48.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_86",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(578.09,759.79,203.16,198.43),
                ["Positions"] = {
                    [1] = vector4(575.28,770.25,203.09,0.0),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(574.01,783.18,202.91), Hash = 2021873295, Lock = true, Distance = 5.5, Perm = "QG_86" },
        { Coords = vec3(577.31,781.44,202.96), Hash = -981274479, Lock = true, Distance = 5.5, Perm = "QG_86" },
        { Coords = vec3(584.47,778.01,202.94), Hash = -1568354151, Lock = true, Distance = 5.5, Perm = "QG_86" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_86-2", ["Coords"] = vec3(570.93,755.79,206.17), ["Mode"] = "2" },
        { ["Name"] = "QG_86-3", ["Coords"] = vec3(559.73,762.7,203.17), ["Mode"] = "2" },
        { ["Name"] = "QG_86-4", ["Coords"] = vec3(558.15,754.98,203.17), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(560.88,760.24,203.17), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(575.75,751.02,203.17),"QG_86" },        
    },
    INTERPHONE = {
        
        -- {vector3(-513.61,4947.29,147.33),"QG_86"},
        
    },
    SURVIVAL = {
        
        ["QG_86"] = vec3(572.02,775.81,203.01),
        
    },
    WORLD_PVP = {
        
        {vector4(587.27,765.97,202.96,323.15),"QG_86"},
        
    },
    RISK_ZONES = {
        
        {vec3(572.02,775.81,203.01),"QG_86"}, -- QG_86
        
    },
    RDM_ZONES = {
        ["QG_86"] = {
            {
                vector2(552.65, 795.83),
                vector2(570.45, 785.61),
                vector2(590.91, 775.00),
                vector2(607.20, 773.11),
                vector2(607.20, 754.92),
                vector2(602.27, 736.74),
                vector2(601.89, 716.67),
                vector2(593.94, 701.52),
                vector2(575.00, 696.97),
                vector2(539.77, 703.79),
                vector2(510.23, 719.32),
                vector2(500.00, 739.39),
                vector2(510.23, 765.15),
                vector2(518.18, 778.79),
                vector2(547.73, 795.45)
            }, {
                name="QG_86",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_87"] = { -- QG_87 
    GARAGES = {
        -- QG_87
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(844.62,3216.4,38.6,192.76),
                ["Positions"] = {
                    [1] = vector4(849.68,3212.25,38.74,277.8),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(756.19,3392.66,62.68,102.05),
                ["Positions"] = {
                    [1] = vector4(751.85,3390.16,62.78,223.94),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(801.58,3398.4,62.68,8.51),
                ["Positions"] = {
                    [1] = vector4(797.6,3401.53,62.78,102.05),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_87",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(835.71,3215.71,38.69,192.76),
                ["Positions"] = {
                    [1] = vector4(831.51,3209.65,38.86,96.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_87",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(736.69,3406.92,62.68,113.39),
                ["Positions"] = {
                    [1] = vector4(734.13,3403.22,62.78,223.94),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_87",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(766.92,3393.21,62.68,269.3),
                ["Positions"] = {
                    [1] = vector4(774.27,3396.3,62.78,136.07),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(838.49,3221.46,39.9), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_87" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_87-2", ["Coords"] = vec3(757.44,3414.93,67.43), ["Mode"] = "2" },
        { ["Name"] = "QG_87-3", ["Coords"] = vec3(778.11,3417.66,67.43), ["Mode"] = "2" },
        { ["Name"] = "QG_87-4", ["Coords"] = vec3(770.27,3418.03,62.68), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(753.72,3418.16,62.68), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(823.07,3426.73,57.86),"QG_87" },        
    },
    INTERPHONE = {
        
        -- {vector3(-2650.74,1312.26,146.42),"QG_87"},
        
    },
    SURVIVAL = {
        
        ["QG_87"] = vec3(837.88,3219.2,39.36),
        
    },
    WORLD_PVP = {
        
        {vector4(774.41,3405.47,62.68,147.41),"QG_87"},
        
    },
    RISK_ZONES = {
        
        {vec3(837.88,3219.2,39.36),"QG_87"}, -- QG_87
        
    },
    RDM_ZONES = {
        ["QG_87"] = {
            {
                vector2(708.1,3370.21),
                vector2(831.51,3376.2),
                vector2(837.71,3449.5),
                vector2(674.25,3453.37)
            }, {
                name="QG_87",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_88"] = { -- só santa
    GARAGES = {
        -- QG_88
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-422.24,1607.08,358.67,266.46),
                ["Positions"] = {
                    [1] = vector4(-420.51,1611.64,358.23,266.46),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-281.84,1560.14,356.81,226.78),
                ["Positions"] = {
                    [1] = vector4(-276.35,1554.44,356.91,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-487.49,1542.85,395.13,62.37),
                ["Positions"] = {
                    [1] = vector4(-493.97,1548.07,395.03,62.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_88",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-486.03,1547.06,394.99,53.86),
                ["Positions"] = {
                    [1] = vector4(-493.97,1548.07,395.03,62.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_88",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-259.97,1561.89,337.16,257.96),
                ["Positions"] = {
                    [1] = vector4(-263.18,1548.3,337.15,130.4),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_88",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-284.47,1556.18,356.91,266.46),
                ["Positions"] = {
                    [1] = vector4(-276.36,1554.19,356.91,243.78),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_88",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-433.05,1593.72,359.32,331.66),
                ["Positions"] = {
                    [1] = vector4(-427.7,1594.95,358.93,226.78),
                },
            },
        },
    },    
    DOORS = {
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_88-2", ["Coords"] = vec3(-412.97,1589.33,361.92), ["Mode"] = "2" },
        { ["Name"] = "QG_88-3", ["Coords"] = vec3(-2678.86,2334.82,17.78), ["Mode"] = "2" },
        { ["Name"] = "QG_88-3", ["Coords"] = vec3(-408.76,1593.3,358.06), ["Mode"] = "2" },
        { ["Name"] = "QG_88-4", ["Coords"] = vec3(-405.53,1593.91,358.06), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-406.41,1590.6,358.06), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-401.36,1533.16,381.31),"QG_88" },        
    },
    INTERPHONE = {
        
        -- {vector3(-79.83,1510.57,282.67),"QG_88"},
        
    },
    SURVIVAL = {
        
        ["QG_88"] = vec3(-437.64,1585.96,360.32),
        
    },
    WORLD_PVP = {
        
        {vector4(-374.51,1595.71,347.17,0.0),"QG_88"},
        
    },
    RISK_ZONES = {
        
        {vec3(-437.64,1585.96,360.32),"QG_88"}, -- QG_88
        
    },
    RDM_ZONES = {
        ["QG_88"] = {
            {
                vector2(551.14, 798.48),
                vector2(506.82, 738.26),
                vector2(521.59, 716.29),
                vector2(546.59, 710.61),
                vector2(559.85, 707.20),
                vector2(570.83, 708.71),
                vector2(590.53, 713.26),
                vector2(595.83, 732.20),
                vector2(605.30, 760.98),
                vector2(609.09, 773.48),
                vector2(584.09, 781.82),
                vector2(570.08, 785.98)
            }, {
                name="QG_88",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_89"] = { -- so nobre
    GARAGES = {
        -- QG_89
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2301.4,421.57,174.65,99.22),
                ["Positions"] = {
                    [1] = vector4(-2305.58,431.06,174.5,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2283.32,400.3,174.6,76.54),
                ["Positions"] = {
                    [1] = vector4(-2286.92,409.5,174.5,133.23),
                },
            },
        },
        
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_89",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2315.97,456.64,174.6,249.45),
                ["Positions"] = {
                    [1] = vector4(-2306.07,444.49,174.34,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_89",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2344.27,382.74,174.68,204.1),
                ["Positions"] = {
                    [1] = vector4(-2334.87,378.88,174.34,297.64),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_89",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2307.04,281.36,169.59,70.87),
                ["Positions"] = {
                    [1] = vector4(-2322.44,293.25,169.34,22.68),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_89",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2342.84,266.02,169.46,331.66),
                ["Positions"] = {
                    [1] = vector4(-2342.41,285.49,169.34,22.68),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-2304.69,459.71,174.46), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_89" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_89-2", ["Coords"] = vec3(-2305.09,338.67,174.6), ["Mode"] = "2" },
        { ["Name"] = "QG_89-3", ["Coords"] = vec3(-2269.38,371.29,179.75), ["Mode"] = "2" },
        { ["Name"] = "QG_89-4", ["Coords"] = vec3(-2288.42,344.83,174.6), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2277.46,380.33,174.6), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2268.11,360.85,179.75),"QG_89" },        
    },
    INTERPHONE = {
        
        -- {vector3(-2309.51,460.99,174.46),"QG_89"},
        
    },
    SURVIVAL = {
        
        ["QG_89"] = vec3(-2276.62,355.31,174.6),
        
    },
    WORLD_PVP = {
        
        {vector4(-2329.44,373.29,174.61,0.0),"QG_89"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2276.62,355.31,174.6),"QG_89"}, -- QG_89
        
    },
    RDM_ZONES = {
        ["QG_89"] = {
            {
                vector2(-2308.33, 146.97),
                vector2(-2334.09, 203.79),
                vector2(-2364.39, 262.88),
                vector2(-2371.21, 290.15),
                vector2(-2368.18, 350.00),
                vector2(-2356.06, 386.36),
                vector2(-2338.64, 428.03),
                vector2(-2316.67, 474.24),
                vector2(-2271.21, 469.70),
                vector2(-2252.27, 428.79),
                vector2(-2222.73, 396.97),
                vector2(-2200.76, 353.79),
                vector2(-2181.82, 312.88),
                vector2(-2158.33, 268.94),
                vector2(-2131.82, 221.97),
                vector2(-2159.85, 195.45),
                vector2(-2192.42, 172.73),
                vector2(-2238.64, 146.21),
                vector2(-2291.67, 135.61)
            }, {
                name="QG_89",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_90"] = { -- só santa
    GARAGES = {
        -- QG_90
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3279.09,537.25,12.27,201.26),
                ["Positions"] = {
                    [1] = vector4(-3285.81,522.48,11.83,96.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3085.97,425.41,5.95,246.62),
                ["Positions"] = {
                    [1] = vector4(-3092.75,430.99,5.51,252.29),
                },
            },
        }, 
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_90",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3269.69,521.17,12.27,119.06),
                ["Positions"] = {
                    [1] = vector4(-3285.81,522.48,11.83,96.38),
                },
            },
        },      
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_90",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3325.12,510.43,12.18,235.28),
                ["Positions"] = {
                    [1] = vector4(-3316.11,508.91,12.27,124.73),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_90",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3263.22,494.92,5.95,260.79),
                ["Positions"] = {
                    [1] = vector4(-3260.28,496.33,5.85,252.29),
                },
            },
        },
    },    
    DOORS = {
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_90-2", ["Coords"] = vec3(-3337.92,543.82,17.44), ["Mode"] = "2" },
        { ["Name"] = "QG_90-3", ["Coords"] = vec3(-3332.55,579.87,14.41), ["Mode"] = "2" },
        { ["Name"] = "QG_90-4", ["Coords"] = vec3(-3329.19,554.19,13.95), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3309.04,555.25,14.41), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3316.87,574.95,11.34),"QG_90" },        
    },
    INTERPHONE = {
        
        -- {vector3(-3061.66,413.98,6.69),"QG_90"},
        
    },
    SURVIVAL = {
        
        ["QG_90"] = vec3(-3312.59,547.34,23.54),
        
    },
    WORLD_PVP = {
        
        {vector4(-3396.75,483.41,11.96,8.51),"QG_90"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3312.59,547.34,23.54),"QG_90"}, -- QG_90
        
    },
    RDM_ZONES = {
        ["QG_90"] = {
            {
                vector2(-3437.77,544.37),
                vector2(-3420.27,486.11),
                vector2(-3362.57,446.21),
                vector2(-3278.43,488.99),
                vector2(-3241.37,557.15),
                vector2(-3263.72,607.76),
                vector2(-3392.57,600.97)
            }, {
                name="QG_90",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_91"] = { -- só santa
    GARAGES = {
        -- QG_91
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1281.85,755.79,190.82,87.88),
                ["Positions"] = {
                    [1] = vector4(-1288.52,756.74,190.82,212.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1248.11,833.49,193.37,70.87),
                ["Positions"] = {
                    [1] = vector4(-1254.83,830.37,193.37,334.49),
                },
            },
        },       
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_91",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1283.3,761.53,190.87,130.4),
                ["Positions"] = {
                    [1] = vector4(-1288.52,756.74,190.82,212.6),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_91",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1252.02,824.22,193.39,323.15),
                ["Positions"] = {
                    [1] = vector4(-1254.83,830.37,193.37,334.49),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-1265.92,848.52,190.71), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_91" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_91-2", ["Coords"] = vec3(-1256.94,793.42,197.19), ["Mode"] = "2" },
        { ["Name"] = "QG_91-3", ["Coords"] = vec3(-1237.01,785.81,192.9), ["Mode"] = "2" },
        { ["Name"] = "QG_91-4", ["Coords"] = vec3(-1220.65,829.71,193.37), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1257.09,777.96,192.9), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1250.25,795.78,197.19),"QG_91" }, 

    },
    INTERPHONE = {
        
        -- {vector3(-1270.66,841.86,190.42),"QG_91"},
        
    },
    SURVIVAL = {
        
        ["QG_91"] = vec3(-1249.75,809.06,193.37),
        
    },
    WORLD_PVP = {
        
        {vector4(-1273.89,798.97,193.37,314.65),"QG_91"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1249.75,809.06,193.37),"QG_91"}, -- QG_91
        
    },
    RDM_ZONES = {
        ["QG_91"] = {
            {
                vector2(-1249.7,858.12),
                vector2(-1264.91,852.36),
                vector2(-1269.05,843.95),
                vector2(-1260.21,839.82),
                vector2(-1280.03,794.1),
                vector2(-1261.0,745.23),
                vector2(-1215.36,762.22),
                vector2(-1218.8,774.78),
                vector2(-1193.57,827.21),
                vector2(-1213.93,842.04),
                vector2(-1248.93,858.15)
            }, {
                name="QG_91",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_92"] = { -- só nobre/santa vanilla
    GARAGES = {
        -- QG_92
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(102.1,-1281.21,29.23,22.68),
                ["Positions"] = {
                    [1] = vector4(94.7,-1279.04,29.23,93.55),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(134.68,-1303.27,29.2,209.77),
                ["Positions"] = {
                    [1] = vector4(154.09,-1310.26,28.48,62.37),
                },
            },
        },       
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_92",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(145.27,-1321.97,29.23,141.74),
                ["Positions"] = {
                    [1] = vector4(138.57,-1323.42,29.3,59.53),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_92",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(147.84,-1293.86,29.32,204.1),
                ["Positions"] = {
                    [1] = vector4(161.56,-1283.68,29.28,144.57),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(128.88,-1298.7,29.23), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(99.7,-1295.65,29.32), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(95.91,-1285.62,29.32), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(101.68,-1305.85,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(121.17,-1294.66,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(88.22,-1284.29,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(108.85,-1271.88,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(117.01,-1321.17,-84.25), Hash = 634417522, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(130.17,-1295.23,-84.25), Hash = 634417522, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(144.51,-1320.51,-84.25), Hash = 634417522, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(142.61,-1305.5,-84.25), Hash = 272844368, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(142.84,-1312.36,-84.25), Hash = 272844368, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(122.08,-1300.62,29.28), Hash = -884268790, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(117.14,-1304.61,29.32), Hash = 488457389, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(82.33,-1284.29,29.28), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(174.48,-1331.96,29.3), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_92" },
        { Coords = vec3(196.05,-1283.47,29.28), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_92" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_92-2", ["Coords"] = vec3(89.98,-1290.92,29.32), ["Mode"] = "2" },
        { ["Name"] = "QG_92-3", ["Coords"] = vec3(120.78,-1301.44,21.11), ["Mode"] = "2" },
        { ["Name"] = "QG_92-4", ["Coords"] = vec3(98.83,-1310.37,21.13), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(122.63,-1298.04,29.32), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(145.44,-1323.0,-84.25),"QG_92" }, 

    },
    INTERPHONE = {
        
        -- {vector3(-1270.66,841.86,190.42),"QG_92"},
        
    },
    SURVIVAL = {
        
        ["QG_92"] = vec3(191.53,-1282.33,29.03),
        
    },
    WORLD_PVP = {
        
        {vector4(130.01,-1325.14,29.22,303.31),"QG_92"},
        
    },
    RISK_ZONES = {
        
        {vec3(191.53,-1282.33,29.03),"QG_92"}, -- QG_92
        
    },
    RDM_ZONES = {
        ["QG_92"] = {
            {
                vector2(70.08, -1276.89),
                vector2(79.92, -1298.86),
                vector2(111.36, -1345.45),
                vector2(150.38, -1373.48),
                vector2(165.53, -1362.88),
                vector2(195.08, -1309.47),
                vector2(203.79, -1276.52),
                vector2(165.53, -1267.80),
                vector2(144.32, -1260.98),
                vector2(115.15, -1273.86)
            }, {
                name="QG_92",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_93"] = { -- só santa
    GARAGES = {
        -- QG_93
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2990.09,2169.9,41.89,104.89),
                ["Positions"] = {
                    [1] = vector4(-2988.29,2167.17,41.89,138.9),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3018.11,2142.4,43.0,31.19),
                ["Positions"] = {
                    [1] = vector4(-3024.23,2141.44,42.92,155.91),
                },
            },
        }, 
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_93",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3021.69,2147.29,42.9,150.24),
                ["Positions"] = {
                    [1] = vector4(-3024.23,2141.44,42.92,155.91),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_93",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2985.11,2166.19,41.91,229.61),
                ["Positions"] = {
                    [1] = vector4(-2988.29,2167.17,41.89,138.9),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-2964.84,2124.93,41.59), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_93" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_93-2", ["Coords"] = vec3(-3005.41,2181.08,45.09), ["Mode"] = "2" },
        { ["Name"] = "QG_93-3", ["Coords"] = vec3(-3006.09,2182.94,41.5), ["Mode"] = "2" },
        { ["Name"] = "QG_93-4", ["Coords"] = vec3(-2984.24,2188.54,41.5), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2991.69,2186.62,41.5), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3002.83,2184.37,45.09),"QG_93" }, 

    },
    INTERPHONE = {
        
        -- {vector3(-2965.33,2118.9,41.16),"QG_93"},
        
    },
    SURVIVAL = {
        
        ["QG_93"] = vec3(-2968.78,2191.02,41.89),
        
    },
    WORLD_PVP = {
        
        {vector4(-2970.77,2195.48,41.87,232.45),"QG_93"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2968.78,2191.02,41.89),"QG_93"}, -- QG_93
        
    },
    RDM_ZONES = {
        ["QG_93"] = {
            {
                vector2(-2953.93,2133.61),
                vector2(-2972.47,2146.42),
                vector2(-2945.81,2178.95),
                vector2(-2973.49,2201.36),
                vector2(-2990.22,2209.8),
                vector2(-3017.63,2183.24),
                vector2(-3001.42,2166.18),
                vector2(-3005.76,2145.87),
                vector2(-2971.22,2112.77)
            }, {
                name="QG_93",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_94"] = { -- só nobre
    GARAGES = {
        -- CayoPerico
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(4481.41,-4514.34,4.18,22.68),
                ["Positions"] = {
                    [1] = vector4(4484.76,-4491.38,4.8,107.72),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(4902.12,-5741.09,26.35,73.71),
                ["Positions"] = {
                    [1] = vector4(4890.39,-5736.59,27.01,161.58),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_94",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(4969.57,-5737.88,19.88,246.62),
                ["Positions"] = {
                    [1] = vector4(4976.75,-5737.46,19.98,325.99),
                },
            },
        },
        -- QG_94
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-426.21,1606.17,359.36,2.84),
                ["Positions"] = {
                    [1] = vector4(-424.31,1612.48,358.88,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-67.13,1509.37,281.19,175.75),
                ["Positions"] = {
                    [1] = vector4(-62.78,1500.9,280.38,243.78),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-281.84,1560.14,356.81,226.78),
                ["Positions"] = {
                    [1] = vector4(-276.35,1554.44,356.91,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-487.49,1542.85,395.13,62.37),
                ["Positions"] = {
                    [1] = vector4(-493.97,1548.07,395.03,62.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_94",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-486.03,1547.06,394.99,53.86),
                ["Positions"] = {
                    [1] = vector4(-493.97,1548.07,395.03,62.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_94",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-259.97,1561.89,337.16,257.96),
                ["Positions"] = {
                    [1] = vector4(-263.18,1548.3,337.15,130.4),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_94",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-284.47,1556.18,356.91,266.46),
                ["Positions"] = {
                    [1] = vector4(-276.36,1554.19,356.91,243.78),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_94",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-423.54,1618.32,359.19,175.75),
                ["Positions"] = {
                    [1] = vector4(-424.31,1612.48,358.88,272.13),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-73.83,1509.55,281.96), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_94" },
        { Coords = vec3(-277.55,1531.42,336.73), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_94" },
        { Coords = vec3(4584.65,-4311.5,10.01), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_94" },
        { Coords = vec3(4579.51,-4321.29,10.01), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_94" },
    },
    CHESTS = {
        -- CayoPerico
        { ["Name"] = "QG_94-2", ["Coords"] = vec3(5010.35,-5758.5,28.85), ["Mode"] = "2" },
        { ["Name"] = "QG_94-3", ["Coords"] = vec3(5005.27,-5754.9,28.85), ["Mode"] = "2" },
        { ["Name"] = "QG_94-4", ["Coords"] = vec3(5009.41,-5748.87,28.88), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(5010.35,-5758.5,28.85), ["Mode"] = "Personal" },
        ----
        { ["Name"] = "QG_94-2", ["Coords"] = vec3(-412.97,1589.33,361.92), ["Mode"] = "2" },
        { ["Name"] = "QG_94-3", ["Coords"] = vec3(-408.76,1593.3,358.06), ["Mode"] = "2" },
        { ["Name"] = "QG_94-4", ["Coords"] = vec3(-405.53,1593.91,358.06), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-406.41,1590.6,358.06), ["Mode"] = "Personal" },
    },
    CRAFT = {
        -- CayoPerico
        { vec3(5011.93,-5754.34,28.9),"QG_94" }, 
        --
        { vec3(-401.36,1533.16,381.31),"QG_94" },            
    },
    INTERPHONE = {
        
        -- {vector3(-79.83,1510.57,282.67),"QG_94"},
        
    },
    SURVIVAL = {
        
        ["QG_94"] = vec3(-437.64,1585.96,360.32),
        
    },
    WORLD_PVP = {
        
        {vector4(-374.51,1595.71,347.17,0.0),"QG_94"},
        
    },
    RISK_ZONES = {
        
        {vec3(-437.64,1585.96,360.32),"QG_94"}, -- QG_94
        
    },
    RDM_ZONES = {
        ["QG_94"] = {
            {
                vector2(-62.88, 1500.76),
                vector2(-65.91, 1534.85),
                vector2(-131.82, 1568.94),
                vector2(-182.58, 1563.64),
                vector2(-267.42, 1618.94),
                vector2(-386.36, 1644.70),
                vector2(-484.85, 1637.12),
                vector2(-512.12, 1570.45),
                vector2(-515.15, 1537.12),
                vector2(-439.39, 1485.61),
                vector2(-357.58, 1509.85),
                vector2(-240.91, 1500.76),
                vector2(-227.27, 1523.48),
                vector2(-145.45, 1523.48),
                vector2(-81.82, 1508.33)
            }, {
                name="QG_94",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_95"] = { -- só santa
    GARAGES = {
        -- QG_95
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3062.29,1485.39,37.27,11.34),
                ["Positions"] = {
                    [1] = vector4(-3060.3,1493.4,37.27,8.51),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3169.14,1550.91,39.21,82.21),
                ["Positions"] = {
                    [1] = vector4(-3178.02,1549.9,39.09,266.46),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3135.34,1557.58,37.27,243.78),
                ["Positions"] = {
                    [1] = vector4(-3133.87,1562.99,37.27,283.47),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_95",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3057.48,1521.08,37.27,189.93),
                ["Positions"] = {
                    [1] = vector4(-3052.37,1511.27,37.27,189.93),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_95",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3169.7,1546.45,39.23,82.21),
                ["Positions"] = {
                    [1] = vector4(-3178.02,1549.9,39.09,266.46),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_95",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3135.49,1548.95,37.27,28.35),
                ["Positions"] = {
                    [1] = vector4(-3141.65,1553.28,37.27,11.34),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(-3007.62,1552.94,33.07), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_95" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_95-2", ["Coords"] = vec3(-3082.41,1554.27,37.27), ["Mode"] = "2" },
        { ["Name"] = "QG_95-3", ["Coords"] = vec3(-3120.69,1537.56,37.27), ["Mode"] = "2" },
        { ["Name"] = "QG_95-4", ["Coords"] = vec3(-3093.13,1521.21,37.27), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3140.61,1527.9,37.27), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-3091.08,1558.81,37.27),"QG_95" },            
    },
    INTERPHONE = {
        
        -- {vector3(-3008.36,1532.1,28.54),"QG_95"},
        
    },
    SURVIVAL = {
        
        ["QG_95"] = vec3(-3139.06,1534.81,37.27),
        
    },
    WORLD_PVP = {
        
        {vector4(-3107.06,1551.46,37.27,51.03),"QG_95"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3139.06,1534.81,37.27),"QG_95"}, -- QG_95
        
    },
    RDM_ZONES = {
        ["QG_95"] = {
            {
                vector2(-3042.56,1482.51),
                vector2(-3174.76,1460.85),
                vector2(-3192.29,1566.08),
                vector2(-3060.1,1588.09)
            }, {
                name="QG_95",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_96"] = { -- só santa
    GARAGES = {
        -- QG_96
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-110.67,838.29,235.66,246.62),
                ["Positions"] = {
                    [1] = vector4(-106.43,841.67,235.63,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-65.84,833.52,241.09,124.73),
                ["Positions"] = {
                    [1] = vector4(-59.15,832.79,241.09,141.74),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_96",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-102.31,839.42,235.63,189.93),
                ["Positions"] = {
                    [1] = vector4(-106.43,841.67,235.63,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_96",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-60.3,839.13,241.09,357.17),
                ["Positions"] = {
                    [1] = vector4(-59.15,832.79,241.09,141.74 ),
                },
            },
        },
        
    },    
    DOORS = {
        -- { Coords = vec3(-73.83,1509.55,281.96), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_96" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_96-2", ["Coords"] = vec3(-87.83,835.84,227.78), ["Mode"] = "2" },
        { ["Name"] = "QG_96-3", ["Coords"] = vec3(-88.04,830.91,231.33), ["Mode"] = "2" },
        { ["Name"] = "QG_96-4", ["Coords"] = vec3(-70.77,834.39,235.71), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-76.21,837.34,235.71), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-98.83,833.21,227.78),"QG_96" },            
    },
    INTERPHONE = {
        
        -- {vector3(-98.25,850.13,235.61),"QG_96"},
        
    },
    SURVIVAL = {
        
        ["QG_96"] = vec3(-42.14,815.75,231.33),
        
    },
    WORLD_PVP = {
        
        {vector4(-89.2,818.75,231.33,274.97),"QG_96"},
        
    },
    RISK_ZONES = {
        
        {vec3(-42.14,815.75,231.33),"QG_96"}, -- QG_96
        
    },
    RDM_ZONES = {
        ["QG_96"] = {
            {
                vector2(-48.48, 770.83),
                vector2(-34.47, 784.47),
                vector2(-41.67, 802.27),
                vector2(-27.65, 814.02),
                vector2(-40.91, 825.38),
                vector2(-35.98, 829.92),
                vector2(-68.94, 859.09),
                vector2(-78.03, 846.21),
                vector2(-97.35, 843.56),
                vector2(-107.95, 846.21),
                vector2(-109.85, 834.47),
                vector2(-117.05, 834.09),
                vector2(-107.20, 811.74),
                vector2(-99.24, 813.64),
                vector2(-90.91, 809.09)
            }, {
                name="QG_96",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_97"] = { -- só universo
    GARAGES = {
        -- QG_97
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3057.99,424.0,6.55,153.08),
                ["Positions"] = {
                    [1] = vector4(-3052.49,421.3,6.6,155.91),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3301.96,493.86,10.85,28.35),
                ["Positions"] = {
                    [1] = vector4(-3300.93,501.8,10.14,300.48),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_97",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3269.67,521.23,12.27,121.89),
                ["Positions"] = {
                    [1] = vector4(-3284.9,520.36,12.27,119.06),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_97",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3305.49,519.84,12.27,212.6),
                ["Positions"] = {
                    [1] = vector4(-3303.78,515.23,12.17,119.06),
                },
            },
        },
        
    },    
    DOORS = {
        { Coords = vec3(-3061.46,416.71,6.67), Hash = -1049302886, Lock = true, Distance = 5.5, Perm = "QG_97" },
        { Coords = vec3(-3059.85,420.52,6.62), Hash = 1653418708, Lock = true, Distance = 5.5, Perm = "QG_97" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_97-2", ["Coords"] = vec3(-3278.94,569.77,6.89), ["Mode"] = "2" },
        { ["Name"] = "QG_97-3", ["Coords"] = vec3(-3332.51,579.83,14.41), ["Mode"] = "2" },
        { ["Name"] = "QG_97-4", ["Coords"] = vec3(-3309.2,555.24,14.41), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3333.27,551.77,13.95), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-3277.84,579.8,6.13),"QG_97" },            
    },
    INTERPHONE = {
        
        -- {vector3(-3062.3,414.69,6.71),"QG_97"},
        
    },
    SURVIVAL = {
        
        ["QG_97"] = vec3(-3304.25,534.31,14.41),
        
    },
    WORLD_PVP = {
        
        {vector4(-3373.16,595.07,3.67,14.18),"QG_97"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3304.25,534.31,14.41),"QG_97"}, -- QG_97
        
    },
    RDM_ZONES = {
        ["QG_97"] = {
            {
                vector2(-3061.52,415.15),
                vector2(-3268.15,495.9),
                vector2(-3284.86,465.46),
                vector2(-3322.39,459.71),
                vector2(-3356.95,437.69),
                vector2(-3374.49,441.71),
                vector2(-3381.77,463.82),
                vector2(-3426.42,456.23),
                vector2(-3458.51,557.45),
                vector2(-3395.35,584.92),
                vector2(-3404.71,598.91),
                vector2(-3367.47,623.66),
                vector2(-3356.69,608.05),
                vector2(-3320.07,626.95),
                vector2(-3254.7,605.89),
                vector2(-3260.09,500.05),
                vector2(-3059.15,421.21)
            }, {
                name="QG_97",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_98"] = { -- só universo
    GARAGES = {
        -- QG_98
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3070.74,1499.61,37.27,283.47),
                ["Positions"] = {
                    [1] = vector4(-3062.2,1501.82,37.36,8.51),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3134.16,1557.75,37.27,2.84),
                ["Positions"] = {
                    [1] = vector4(-3129.4,1562.99,37.36,277.8),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_98",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3047.85,1501.44,37.27,102.05),
                ["Positions"] = {
                    [1] = vector4(-3058.36,1502.44,37.36,8.51),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_98",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3169.58,1546.42,39.24,93.55),
                ["Positions"] = {
                    [1] = vector4(-3179.1,1549.76,38.99,263.63),
                },
            },
        },
        
    },    
    DOORS = {
        { Coords = vec3(-3009.25,1552.09,32.96), Hash = 1534513698, Lock = true, Distance = 5.5, Perm = "QG_98" },
        { Coords = vec3(-3005.59,1553.02,33.03), Hash = 1534513698, Lock = true, Distance = 5.5, Perm = "QG_98" },
        { Coords = vec3(-3009.38,1552.59,33.06), Hash = -1049302886, Lock = true, Distance = 5.5, Perm = "QG_98" },
        { Coords = vec3(-3005.44,1553.27,33.06), Hash = 1653418708, Lock = true, Distance = 5.5, Perm = "QG_98" },
        { Coords = vec3(-3005.13,1550.56,32.45), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_98" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_98-2", ["Coords"] = vec3(-3100.47,1546.5,37.27), ["Mode"] = "2" },
        { ["Name"] = "QG_98-3", ["Coords"] = vec3(-3110.96,1521.26,37.27), ["Mode"] = "2" },
        { ["Name"] = "QG_98-4", ["Coords"] = vec3(-3101.82,1531.81,37.27), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3092.67,1500.37,37.27), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-3120.61,1537.57,37.27),"QG_98" },            
    },
    INTERPHONE = {
        
        -- {vector3(-3010.74,1550.92,32.77),"QG_98"},
        
    },
    SURVIVAL = {
        
        ["QG_98"] = vec3(-3090.38,1482.19,37.27),
        
    },
    WORLD_PVP = {
        
        {vector4(-3067.0,1573.51,37.27,283.47),"QG_98"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3090.38,1482.19,37.27),"QG_98"}, -- QG_98
        
    },
    RDM_ZONES = {
        ["QG_98"] = {
            {
                vector2(-3009.87,1593.88),
                vector2(-2999.59,1532.92),
                vector2(-3009.33,1531.67),
                vector2(-3011.74,1552.32),
                vector2(-3016.11,1551.47),
                vector2(-3022.15,1570.95),
                vector2(-3058.69,1565.19),
                vector2(-3042.8,1482.81),
                vector2(-3175.95,1460.68),
                vector2(-3193.22,1567.9)
            }, {
                name="QG_98",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_99"] = { -- só santa
    GARAGES = {
        -- QG_99
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1211.19,905.85,148.16,99.22),
                ["Positions"] = {
                    [1] = vector4(1203.7,913.4,148.26,25.52),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1168.41,890.05,144.93,238.12),
                ["Positions"] = {
                    [1] = vector4(1178.96,892.74,145.35,297.64),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_99",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1170.41,876.78,145.3,158.75),
                ["Positions"] = {
                    [1] = vector4(1174.65,886.36,145.03,323.15),
                },
            },
        },
        
    },    
    DOORS = {
        -- { Coords = vec3(-3009.25,1552.09,32.96), Hash = 1534513698, Lock = true, Distance = 5.5, Perm = "QG_99" },
        -- { Coords = vec3(-3005.59,1553.02,33.03), Hash = 1534513698, Lock = true, Distance = 5.5, Perm = "QG_99" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_99-2", ["Coords"] = vec3(1180.3,856.8,147.54), ["Mode"] = "2" },
        { ["Name"] = "QG_99-3", ["Coords"] = vec3(1173.33,862.42,144.0), ["Mode"] = "2" },
        { ["Name"] = "QG_99-4", ["Coords"] = vec3(1180.82,861.38,144.0), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1180.57,871.06,144.0), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(1170.73,860.85,144.0),"QG_99" },            
    },
    INTERPHONE = {
        
        -- {vector3(-3010.74,1550.92,32.77),"QG_99"},
        
    },
    SURVIVAL = {
        
        ["QG_99"] = vec3(1175.98,876.23,144.91),
        
    },
    WORLD_PVP = {
        
        {vector4(1152.23,816.78,141.99,144.57),"QG_99"},
        
    },
    RISK_ZONES = {
        
        {vec3(1175.98,876.23,144.91),"QG_99"}, -- QG_99
        
    },
    RDM_ZONES = {
        ["QG_99"] = {
            {
                vector2(1149.17,813.13),
                vector2(1192.10,813.03),
                vector2(1191.91,836.84),
                vector2(1191.96,843.28),
                vector2(1192.07,876.59),
                vector2(1192.17,891.35),
                vector2(1191.40,893.31),
                vector2(1215.24,905.15),
                vector2(1201.78,931.95),
                vector2(1200.39,934.45),
                vector2(1197.24,933.46),
                vector2(1188.40,928.85),
                vector2(1189.36,926.61),
                vector2(1198.90,907.98),
                vector2(1166.38,891.60),
                vector2(1164.04,883.19),
                vector2(1164.00,878.30),
                vector2(1163.98,874.94),
                vector2(1164.06,854.61),
                vector2(1162.82,854.09),
                vector2(1157.09,854.05),
                vector2(1156.08,842.70),
                vector2(1150.00,834.39),
                vector2(1149.67,814.59)
            }, {
                name="QG_99",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_100"] = { -- só universo
    GARAGES = {
        -- QG_100
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2741.1,-227.01,17.32,45.36),
                ["Positions"] = {
                    [1] = vector4(-2740.43,-207.98,17.39,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2767.22,-171.16,17.32,150.24),
                ["Positions"] = {
                    [1] = vector4(-2767.33,-177.53,17.39,240.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_100",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2749.58,-184.29,17.32,138.9),
                ["Positions"] = {
                    [1] = vector4(-2743.56,-192.42,17.39,320.32),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_100",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2799.66,-161.53,16.63,204.1),
                ["Positions"] = {
                    [1] = vector4(-2797.14,-165.87,16.87,269.3),
                },
            },
        },
        
    },    
    DOORS = {
        -- { Coords = vec3(-3009.25,1552.09,32.96), Hash = 1534513698, Lock = true, Distance = 5.5, Perm = "QG_100" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_100-2", ["Coords"] = vec3(-2771.31,-200.76,22.07), ["Mode"] = "2" },
        { ["Name"] = "QG_100-3", ["Coords"] = vec3(-2766.77,-215.02,22.07), ["Mode"] = "2" },
        { ["Name"] = "QG_100-4", ["Coords"] = vec3(-2766.35,-201.41,17.32), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2792.76,-195.21,17.32), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-2756.63,-218.04,22.07),"QG_100" },            
    },
    INTERPHONE = {
        
        -- {vector3(-2744.92,-170.1,17.32),"QG_100"},
        
    },
    SURVIVAL = {
        
        ["QG_100"] = vec3(-2768.74,-195.03,17.56),
        
    },
    WORLD_PVP = {
        
        {vector4(-2770.97,-187.35,17.34,130.4),"QG_100"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2768.74,-195.03,17.56),"QG_100"}, -- QG_100
        
    },
    RDM_ZONES = {
        ["QG_100"] = {
            {
                vector2(-2697.19,-140.74),
                vector2(-2705.84,-142.89),
                vector2(-2716.48,-147.44),
                vector2(-2725.16,-154.94),
                vector2(-2730.48,-162.34),
                vector2(-2740.57,-177.41),
                vector2(-2734.78,-181.5),
                vector2(-2735.35,-191.22),
                vector2(-2733.83,-202.12),
                vector2(-2732.2,-208.5),
                vector2(-2733.42,-214.15),
                vector2(-2739.53,-226.35),
                vector2(-2737.06,-230.58),
                vector2(-2735.47,-239.28),
                vector2(-2731.43,-248.79),
                vector2(-2717.86,-277.85),
                vector2(-2720.74,-283.59),
                vector2(-2728.45,-283.26),
                vector2(-2736.94,-280.9),
                vector2(-2745.15,-261.42),
                vector2(-2761.91,-254.82),
                vector2(-2764.29,-254.22),
                vector2(-2767.67,-253.58),
                vector2(-2823.82,-197.31),
                vector2(-2823.36,-193.91),
                vector2(-2839.67,-177.56),
                vector2(-2839.22,-174.25),
                vector2(-2824.47,-158.41),
                vector2(-2807.23,-160.25),
                vector2(-2791.99,-158.46),
                vector2(-2782.66,-160.52),
                vector2(-2749.26,-173.41),
                vector2(-2748.03,-173.48),
                vector2(-2734.97,-153.46),
                vector2(-2727.62,-145.31),
                vector2(-2716.87,-137.34),
                vector2(-2708.13,-134.32),
                vector2(-2700.92,-132.76)
            }, {
                name="QG_100",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_101"] = { -- só universo
    GARAGES = {
        -- QG_101
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2661.65,1312.65,147.44,187.09),
                ["Positions"] = {
                    [1] = vector4(-2659.6,1309.32,147.15,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2637.81,1311.58,144.89,181.42),
                ["Positions"] = {
                    [1] = vector4(-2642.25,1308.3,145.73,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_101",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2638.19,1303.09,145.67,11.34),
                ["Positions"] = {
                    [1] = vector4(-2642.67,1305.39,145.97,269.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_101",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2623.96,1306.28,145.09,85.04 ),
                ["Positions"] = {
                    [1] = vector4(-2628.03,1306.03,145.28,348.67),
                },
            },
        },
        
    },    
    DOORS = {
        { Coords = vec3(-2652.27,1326.2,147.05), Hash = -1249591818, Lock = true, Distance = 5.5, Perm = "QG_101" },
        { Coords = vec3(-2651.96,1307.19,146.61), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_101" },
        { Coords = vec3(-2666.83,1326.37,147.37), Hash = 1901183774, Lock = true, Distance = 5.5, Perm = "QG_101" },
        { Coords = vec3(-2667.28,1330.38,147.44), Hash = -147325430, Lock = true, Distance = 5.5, Perm = "QG_101" },
        { Coords = vec3(-2666.94,1336.33,152.0), Hash = -1821777087, Lock = true, Distance = 5.5, Perm = "QG_101" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_101-2", ["Coords"] = vec3(-2679.87,1336.48,144.25), ["Mode"] = "2" },
        { ["Name"] = "QG_101-3", ["Coords"] = vec3(-2656.31,1335.54,147.44), ["Mode"] = "2" },
        { ["Name"] = "QG_101-4", ["Coords"] = vec3(-2665.48,1344.3,147.44), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2673.74,1314.28,147.44), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-2679.49,1327.13,144.25),"QG_101" },            
    },
    INTERPHONE = {
        
        -- {vector3(-2638.61,1293.2,146.53),"QG_101"},
        
    },
    SURVIVAL = {
        
        ["QG_101"] = vec3(-2664.76,1319.86,147.44),
        
    },
    WORLD_PVP = {
        
        -- {vector4(-2770.97,-187.35,17.34,130.4),"QG_101"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2664.76,1319.86,147.44),"QG_101"}, -- QG_101
        
    },
    RDM_ZONES = {
        ["QG_101"] = {
            {
                vector2(-2632.58, 1284.85),
                vector2(-2685.61, 1287.88),
                vector2(-2675.76, 1369.70),
                vector2(-2625.76, 1362.88)
            }, {
                name="QG_101",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_102"] = { -- só santa
    GARAGES = {
        -- QG_102
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(581.68,765.18,203.16,45.36),
                ["Positions"] = {
                    [1] = vector4(576.56,769.92,203.01,28.35),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(598.15,759.84,202.96,31.19),
                ["Positions"] = {
                    [1] = vector4(590.75,768.81,202.96,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_102",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(567.95,784.74,202.96,187.09),
                ["Positions"] = {
                    [1] = vector4(561.62,775.89,203.01,308.98),
                },
            },
        },       
        
    },    
    DOORS = {
        -- { Coords = vec3(-3009.25,1552.09,32.96), Hash = 1534513698, Lock = true, Distance = 5.5, Perm = "QG_102" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_102-2", ["Coords"] = vec3(572.99,754.13,206.17), ["Mode"] = "2" },
        { ["Name"] = "QG_102-3", ["Coords"] = vec3(553.48,758.88,206.17), ["Mode"] = "2" },
        { ["Name"] = "QG_102-4", ["Coords"] = vec3(557.94,754.79,203.17), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(560.88,760.24,203.17), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(547.8,746.15,203.17),"QG_102" },            
    },
    INTERPHONE = {
        
        -- {vector3(-2638.61,1293.2,146.53),"QG_102"},
        
    },
    SURVIVAL = {
        
        -- ["QG_102"] = vec3(-2664.76,1319.86,147.44),
        
    },
    WORLD_PVP = {
        
        {vector4(562.91,766.49,202.96,334.49),"QG_102"},
        
    },
    RISK_ZONES = {
        
        -- {vec3(-2664.76,1319.86,147.44),"QG_102"}, -- QG_102
        
    },
    RDM_ZONES = {
        -- ["QG_102"] = {
        --     {
        --         vector2(-2632.58, 1284.85),
        --         vector2(-2685.61, 1287.88),
        --         vector2(-2675.76, 1369.70),
        --         vector2(-2625.76, 1362.88)
        --     }, {
        --         name="QG_102",
        --         --debugGrid=true,
        --     },    
        -- } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_103"] = { -- só nobre
    GARAGES = {
        -- QG_103
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-892.44,416.38,85.97,110.56),
                ["Positions"] = {
                    [1] = vector4(-888.77,404.84,85.04,102.05),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-916.99,368.81,79.08,263.63),
                ["Positions"] = {
                    [1] = vector4(-910.78,368.1,78.87,187.09),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_103",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-901.26,410.5,84.3,238.12),
                ["Positions"] = {
                    [1] = vector4(-902.14,412.34,84.27,297.64),
                },
            },
        },       
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_103",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-925.81,392.21,79.06,294.81),
                ["Positions"] = {
                    [1] = vector4(-922.49,387.39,79.28,170.08),
                },
            },
        }, 
    },    
    DOORS = {
        { Coords = vec3(-893.26,410.77,85.66), Hash = 575680671, Lock = true, Distance = 5.5, Perm = "QG_103" },
        { Coords = vec3(-889.06,412.15,86.02), Hash = 724862427, Lock = true, Distance = 5.5, Perm = "QG_103" },
        { Coords = vec3(-918.63,377.31,79.77), Hash = -2125423493 , Lock = true, Distance = 5.5, Perm = "QG_103" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_103-2", ["Coords"] = vec3(-936.19,393.31,81.33), ["Mode"] = "2" },
        { ["Name"] = "QG_103-3", ["Coords"] = vec3(-938.54,399.93,77.8), ["Mode"] = "2" },
        { ["Name"] = "QG_103-4", ["Coords"] = vec3(-944.04,399.1,77.81), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-932.36,391.57,79.21), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-972.43,375.75,73.23),"QG_103" },            
    },
    INTERPHONE = {
        
        -- {vector3(-883.89,409.96,86.42),"QG_103"},
        
    },
    SURVIVAL = {
        
        ["QG_103"] = vec3(-893.03,409.43,85.66),
        
    },
    WORLD_PVP = {
        
        {vector4(-958.76,380.37,73.04,303.31),"QG_103"},
        
    },
    RISK_ZONES = {
        
        {vec3(-893.03,409.43,85.66),"QG_103"}, -- QG_103
        
    },
    RDM_ZONES = {
        ["QG_103"] = {
            {
                vector2(-975.46,375.74),
                vector2(-955.02,374.64),
                vector2(-930.31,375.01),
                vector2(-918.9,371.75),
                vector2(-916.27,385.35),
                vector2(-907.71,397.55),
                vector2(-897.66,406.4),
                vector2(-887.47,413.36),
                vector2(-891.46,419.69),
                vector2(-917.1,416.6),
                vector2(-972.67,398.62),
                vector2(-979.14,396.7),
                vector2(-976.48,378.72),
            }, {
                name="QG_103",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_104"] = { -- só universo
    GARAGES = {
        -- QG_104
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2484.2,3591.63,98.77,124.73),
                ["Positions"] = {
                    [1] = vector4(2476.44,3584.3,97.95,124.73),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2272.2,3342.85,60.31,102.05),
                ["Positions"] = {
                    [1] = vector4(2259.53,3339.99,59.33,189.93),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2269.94,3242.93,48.04,8.51),
                ["Positions"] = {
                    [1] = vector4(2267.65,3249.01,47.43,99.22),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2484.31,3368.26,53.31,48.19),
                ["Positions"] = {
                    [1] = vector4(2473.5,3374.35,53.18,48.19),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_104",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2484.95,3556.41,98.89,36.86),
                ["Positions"] = {
                    [1] = vector4(2475.92,3565.23,98.74,39.69),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_104",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(242442.9,3380.06,53.31,323.15),
                ["Positions"] = {
                    [1] = vector4(2450.83,3391.28,52.49,48.19),
                },
            },
        }, 
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_104",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2251.01,3363.8,63.81,272.13),
                ["Positions"] = {
                    [1] = vector4(2256.31,3363.93,62.95,187.09),
                },
            },
        },      

    },    
    DOORS = {
        { Coords = vec3(2274.18,3256.08,48.08), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_104" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_104-2", ["Coords"] = vec3(2451.67,3603.97,98.91), ["Mode"] = "2" },
        { ["Name"] = "QG_104-3", ["Coords"] = vec3(2487.39,3563.07,98.89), ["Mode"] = "2" },
        { ["Name"] = "QG_104-4", ["Coords"] = vec3(2519.64,3620.01,98.5), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2448.86,3574.77,98.89), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(2433.67,3540.43,95.22),"QG_104" },            
    },
    INTERPHONE = {
        
        -- {vector3(-883.89,409.96,86.42),"QG_104"},
        
    },
    SURVIVAL = {
        
        ["QG_104"] = vec3(2467.33,3577.83,98.65),
        
    },
    WORLD_PVP = {
        
        {vector4(2253.37,3319.68,62.88,286.3),"QG_104"},
        
    },
    RISK_ZONES = {
        
        {vec3(2467.33,3577.83,98.65),"QG_104"}, -- QG_104
        
    },
    RDM_ZONES = {
        ["QG_104"] = {
            {
                vector2(2237.88, 3243.18),
                vector2(2278.79, 3253.03),
                vector2(2276.52, 3290.15),
                vector2(2311.36, 3302.27),
                vector2(2304.55, 3356.82),
                vector2(2265.15, 3360.61),
                vector2(2269.70, 3406.06),
                vector2(2309.09, 3415.91),
                vector2(2413.64, 3311.36),
                vector2(2436.36, 3298.48),
                vector2(2484.09, 3342.42),
                vector2(2500.00, 3356.82),
                vector2(2440.15, 3417.42),
                vector2(2408.33, 3457.58),
                vector2(2492.42, 3525.00),
                vector2(2590.15, 3607.58),
                vector2(2608.33, 3642.42),
                vector2(2516.67, 3727.27),
                vector2(2463.64, 3704.55),
                vector2(2343.18, 3653.03),
                vector2(2301.52, 3606.06),
                vector2(2216.67, 3544.70),
                vector2(2179.55, 3503.79),
                vector2(2178.03, 3428.79),
                vector2(2187.88, 3355.30)
            }, {
                name="QG_104",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = true,
    }
}

ORGS_CONFIG["QG_105"] = { -- só santa
    GARAGES = {
        -- QG_105
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-922.82,375.84,79.23,300.48),
                ["Positions"] = {
                    [1] = vector4(-911.02,378.9,81.38,354.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_105",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-919.35,398.23,79.14,34.02),
                ["Positions"] = {
                    [1] = vector4(-922.6,386.96,79.28,172.92),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_105",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-975.78,398.93,75.28,56.7),
                ["Positions"] = {
                    [1] = vector4(-977.26,406.33,75.2,289.14),
                },
            },
        },       

    },    
    DOORS = {
        -- { Coords = vec3(-893.26,410.77,85.66), Hash = 575680671, Lock = true, Distance = 5.5, Perm = "QG_105" },
    },
    CHESTS = {
        
        { ["Name"] = "QG_105-2", ["Coords"] = vec3(-936.85,395.08,81.33), ["Mode"] = "2" },
        { ["Name"] = "QG_105-3", ["Coords"] = vec3(-936.84,394.96,81.33), ["Mode"] = "2" },
        { ["Name"] = "QG_105-4", ["Coords"] = vec3(-928.85,399.68,79.14), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-929.88,402.08,79.14), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        -- { vec3(2609.94,3678.1,112.86),"QG_105" },            
    },
    INTERPHONE = {
        
        -- {vector3(-883.89,409.96,86.42),"QG_105"},
        
    },
    SURVIVAL = {
        
        -- ["QG_105"] = vec3(2636.6,3663.74,106.02),
        
    },
    WORLD_PVP = {
        
        {vector4(-930.94,387.18,77.02,138.9),"QG_105"},
        
    },
    RISK_ZONES = {
        
        -- {vec3(2636.6,3663.74,106.02),"QG_105"}, -- QG_105
        
    },
    RDM_ZONES = {
        -- ["QG_105"] = {
        --     {
        --         vector2(-975.46,375.74),
        --         vector2(-955.02,374.64),
        --         vector2(-930.31,375.01),
        --         vector2(-918.9,371.75),
        --         vector2(-916.27,385.35),
        --         vector2(-907.71,397.55),
        --         vector2(-897.66,406.4),
        --         vector2(-887.47,413.36),
        --         vector2(-891.46,419.69),
        --         vector2(-917.1,416.6),
        --         vector2(-972.67,398.62),
        --         vector2(-979.14,396.7),
        --         vector2(-976.48,378.72),
        --     }, {
        --         name="QG_105",
        --         --debugGrid=true,
        --     },    
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_106"] = { -- só nobre
    GARAGES = {
        -- QG_106
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(153.51,-129.54,60.76,343.0),
                ["Positions"] = {
                    [1] = vector4(150.49,-120.59,61.4,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(104.84,-122.22,55.08,260.79),
                ["Positions"] = {
                    [1] = vector4(107.75,-129.2,55.18,158.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_106",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(138.48,-135.79,68.22,158.75),
                ["Positions"] = {
                    [1] = vector4(134.05,-142.93,68.02,343.0),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_106",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(123.37,-109.91,60.76,255.12),
                ["Positions"] = {
                    [1] = vector4(131.94,-114.73,60.86,343.0),
                },
            },
        },   
        -- {
        --     ["Info"] = {
        --         ["Name"] = "vip",
        --         --["Heli"] = true,
        --         ["Payment"] = false,
        --         ["Perm"] = "QG_106",
        --         ["Level"] = nil,
        --     },
        --     ["Spawns"] = {
        --         ["Open"] = vector4(110.62,-138.58,55.08,257.96),
        --         ["Positions"] = {
        --             [1] = vector4(102.12,-146.26,55.18,158.75),
        --         },
        --     },
        -- },      

    },    
    DOORS = {
        { Coords = vec3(128.08,-109.38,49.64), Hash = -1947173662, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(124.95,-110.38,49.64), Hash = -1947173662, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(126.53,-105.83,49.64), Hash = -1947173662, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(129.18,-102.27,49.64), Hash = -1947173662, Lock = true, Distance = 1.5, Perm = "QG_106" },

        { Coords = vec3(127.36,-149.61,54.66), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(140.97,-107.05,49.57), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(143.91,-108.11,49.57), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(121.15,-100.62,49.64), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(152.92,-123.92,49.64), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(157.31,-125.53,49.64), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(161.82,-127.13,49.64), Hash = 1669082106, Lock = true, Distance = 1.5, Perm = "QG_106" },

        { Coords = vec3(122.1,-160.87,54.71), Hash = 1796676163, Lock = true, Distance = 1.5, Perm = "QG_106" },
        { Coords = vec3(124.01,-161.56,54.71), Hash = 1796676163, Lock = true, Distance = 1.5, Perm = "QG_106" },

        { Coords = vec3(104.33,-139.22,54.98), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_106" },
        { Coords = vec3(164.58,-116.62,62.24), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_106" },

        { Coords = vec3(127.64,-117.99,49.77), Hash = -2119729204, Lock = true, Distance = 1.0, Perm = "QG_106" },
        { Coords = vec3(-123.38,-502.21,-117.7), Hash = -2119729204, Lock = true, Distance = 1.0, Perm = "QG_106" },

        { Coords = vec3(128.68,-115.16,49.74), Hash = 271031498, Lock = true, Distance = 1.0, Perm = "QG_106" },
        { Coords = vec3(-121.23,-500.98,-117.7), Hash = 271031498, Lock = true, Distance = 1.0, Perm = "QG_106" },


    },
    CHESTS = {
        
        { ["Name"] = "QG_106-2", ["Coords"] = vec3(116.84,-99.15,49.57), ["Mode"] = "2" },
        { ["Name"] = "QG_106-3", ["Coords"] = vec3(120.49,-112.76,49.57), ["Mode"] = "2" },
        { ["Name"] = "QG_106-4", ["Coords"] = vec3(119.81,-103.59,49.57), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(109.98,-150.67,54.85), ["Mode"] = "Personal" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(132.7,-134.5,49.57), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(118.49,-94.95,49.57),"QG_106" },            
    },
    INTERPHONE = {
        
        -- {vector3(112.62,-162.35,54.8),"QG_106"},
        
    },
    SURVIVAL = {
        
        ["QG_106"] = vec3(131.52,-137.85,52.08),
        
    },
    WORLD_PVP = {
        
        {vector4(120.82,-133.38,54.93,257.96),"QG_106"},
        
    },
    RISK_ZONES = {
        
        {vec3(131.52,-137.85,52.08),"QG_106"}, -- QG_106
        
    },
    RDM_ZONES = {
        ["QG_106"] = {
            {
                vector2(91.44,-155.68),
                vector2(115.72,-88.98),
                vector2(142.22,-98.21),
                vector2(142.91,-96.44),
                vector2(168.76,-105.19),
                vector2(143.31,-174.55)
            }, {
                name="QG_106",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
-- ORGS_CONFIG["QG_107"] = { -- só nobre
--     GARAGES = {
--         -- QG_107
--         {
--             ["Info"] = {
--                 ["Name"] = "Garage",
--                 ["Payment"] = false,
--                 ["Perm"] = nil,
--                 ["Level"] = nil,
--             },
--             ["Teleport"] = false,
--             ["Spawns"] = {
--                 ["Open"] = vector4(-3533.4,4641.34,10.33,175.75),
--                 ["Positions"] = {
--                     [1] = vector4(-3534.43,4622.93,9.89,113.39),
--                 },
--             },
--         },
--         {
--             ["Info"] = {
--                 ["Name"] = "Garage",
--                 ["Payment"] = false,
--                 ["Perm"] = nil,
--                 ["Level"] = nil,
--             },
--             ["Teleport"] = false,
--             ["Spawns"] = {
--                 ["Open"] = vector4(-3582.97,4621.52,13.38,266.46),
--                 ["Positions"] = {
--                     [1] = vector4(-3575.05,4617.29,14.04,204.1),
--                 },
--             },
--         },
--         {
--             ["Info"] = {
--                 ["Name"] = "Garage",
--                 ["Payment"] = false,
--                 ["Perm"] = nil,
--                 ["Level"] = nil,
--             },
--             ["Teleport"] = false,
--             ["Spawns"] = {
--                 ["Open"] = vector4(-3618.03,4578.51,4.11,192.76),
--                 ["Positions"] = {
--                     [1] = vector4(-3602.14,4577.79,5.61,138.9),
--                 },
--             },
--         },
--         {
--             ["Info"] = {
--                 ["Name"] = "vip",
--                 --["Heli"] = true,
--                 ["Payment"] = false,
--                 ["Perm"] = "QG_107",
--                 ["Level"] = nil,
--             },
--             ["Spawns"] = {
--                 ["Open"] = vector4(-3569.49,4622.83,13.38,116.23),
--                 ["Positions"] = {
--                     [1] = vector4(-3575.05,4617.29,14.04,204.1),
--                 },
--             },
--         },  
--         {
--             ["Info"] = {
--                 ["Name"] = "vip",
--                 --["Heli"] = true,
--                 ["Payment"] = false,
--                 ["Perm"] = "QG_107",
--                 ["Level"] = nil,
--             },
--             ["Spawns"] = {
--                 ["Open"] = vector4(-3526.48,4626.4,10.31,113.39),
--                 ["Positions"] = {
--                     [1] = vector4(-3534.43,4622.93,9.89,113.39),
--                 },
--             },
--         },   
--         {
--             ["Info"] = {
--                 ["Name"] = "vip",
--                 --["Heli"] = true,
--                 ["Payment"] = false,
--                 ["Perm"] = "QG_107",
--                 ["Level"] = nil,
--             },
--             ["Spawns"] = {
--                 ["Open"] = vector4(-3710.05,4603.88,5.91,229.61),
--                 ["Positions"] = {
--                     [1] = vector4(-3697.23,4593.87,5.49,232.45),
--                 },
--             },
--         },  
--         -- {
--         --     ["Info"] = {
--         --         ["Name"] = "vip",
--         --         --["Heli"] = true,
--         --         ["Payment"] = false,
--         --         ["Perm"] = "QG_107",
--         --         ["Level"] = nil,
--         --     },
--         --     ["Spawns"] = {
--         --         ["Open"] = vector4(110.62,-138.58,55.08,257.96),
--         --         ["Positions"] = {
--         --             [1] = vector4(102.12,-146.26,55.18,158.75),
--         --         },
--         --     },
--         -- },      

--     },    
--     DOORS = {
--         { Coords = vec3(-2421.3,3989.35,18.99), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_107" },
--         { Coords = vec3(-2417.89,3998.22,18.99), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_107" },
--     },
--     CHESTS = {
        
--         { ["Name"] = "QG_107-2", ["Coords"] = vec3(-3803.44,4660.55,9.64), ["Mode"] = "2" },
--         { ["Name"] = "QG_107-3", ["Coords"] = vec3(-3527.97,4596.61,10.03), ["Mode"] = "2" },
--         { ["Name"] = "QG_107-4", ["Coords"] = vec3(-3550.06,4583.49,9.76), ["Mode"] = "2" },
--         { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3539.2,4592.11,10.03), ["Mode"] = "Personal" },
--     },
--     CRAFT = {
        
--         { vec3(-3535.79,4604.77,14.04),"QG_107" },            
--     },
--     INTERPHONE = {
        
--         -- {vector3(112.62,-162.35,54.8),"QG_107"},
        
--     },
--     SURVIVAL = {
        
--         ["QG_107"] = vec3(-3704.5,4600.05,5.91),
        
--     },
--     WORLD_PVP = {
        
--         -- {vector4(120.82,-133.38,54.93,257.96),"QG_107"},
        
--     },
--     RISK_ZONES = {
        
--         {vec3(-3704.5,4600.05,5.91),"QG_107"}, -- QG_107
        
--     },
--     RDM_ZONES = {
--         -- ["QG_107"] = {
--         --     {
--         --         vector2(91.44,-155.68),
--         --         vector2(115.72,-88.98),
--         --         vector2(142.22,-98.21),
--         --         vector2(142.91,-96.44),
--         --         vector2(168.76,-105.19),
--         --         vector2(143.31,-174.55)
--         --     }, {
--         --         name="QG_107",
--         --         --debugGrid=true,
--         --     },    
--         -- } 
--     },
--     ACTIVE = {
--         ["Santa"] = false,
--         ["CidadeNobre"] = true,
--         ["Caravelas"] = true,
--         ["Universo"] = false,
--         ["Maresia"] = false,
--         ["Alexandria"] = false,
--     }
-- }
ORGS_CONFIG["QG_108"] = { -- só nobre
    GARAGES = {
        -- QG_108
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(754.15,-975.09,24.99,0.0),
                ["Positions"] = {
                    [1] = vector4(745.75,-982.25,24.74,283.47),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(768.03,-964.77,25.93,266.46),
                ["Positions"] = {
                    [1] = vector4(774.76,-973.16,26.27,133.23),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_108",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(761.73,-987.0,26.18,119.06),
                ["Positions"] = {
                    [1] = vector4(764.87,-991.78,26.08,323.15),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_108",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(731.82,-978.77,24.25,59.53),
                ["Positions"] = {
                    [1] = vector4(731.62,-983.53,24.23,277.8),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(766.01,-972.77,26.0), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_108" },
        { Coords = vec3(674.18,-980.07,22.26), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_108" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_108-2", ["Coords"] = vec3(708.69,-966.93,30.4), ["Mode"] = "2" },
        { ["Name"] = "QG_108-3", ["Coords"] = vec3(720.98,-965.68,30.4), ["Mode"] = "2" },
        { ["Name"] = "QG_108-4", ["Coords"] = vec3(710.11,-977.22,24.13), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(720.26,-974.53,24.9), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(711.3,-970.89,30.4),"QG_108" },            
    },
    INTERPHONE = {
        
        -- {vector3(761.42,-987.67,26.22),"QG_108"},
        
    },
    SURVIVAL = {
        
        ["QG_108"] = vec3(718.49,-979.05,24.11),
        
    },
    WORLD_PVP = {
        
        {vector4(699.95,-978.56,24.11,238.12),"QG_108"},
        
    },
    RISK_ZONES = {
        
        {vec3(718.49,-979.05,24.11),"QG_108"}, -- QG_108
        
    },
    RDM_ZONES = {
        ["QG_108"] = {
            {
                vector2(757.58, -939.39),
                vector2(764.39, -995.45),
                vector2(697.73, -1003.79),
                vector2(697.73, -1031.06),
                vector2(673.48, -1035.61),
                vector2(674.24, -943.94),
                vector2(712.88, -937.88)
            }, {
                name="QG_108",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_109"] = { -- só nobre
    GARAGES = {
        -- QG_109
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1211.15,905.46,148.16,116.23),
                ["Positions"] = {
                    [1] = vector4(1204.42,912.07,148.26,25.52),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1170.39,877.18,145.3,340.16),
                ["Positions"] = {
                    [1] = vector4(1188.53,897.58,146.88,297.64),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_109",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1198.12,933.26,147.0,232.45),
                ["Positions"] = {
                    [1] = vector4(1209.01,942.61,145.3,116.23),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_109",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1181.37,881.36,144.93,277.8),
                ["Positions"] = {
                    [1] = vector4(1174.38,885.67,144.82,308.98),
                },
            },
        },
    },    
    DOORS = {
        -- { Coords = vec3(128.08,-109.38,49.64), Hash = -1947173662, Lock = true, Distance = 1.5, Perm = "QG_109" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_109-2", ["Coords"] = vec3(1173.38,858.89,147.5), ["Mode"] = "2" },
        { ["Name"] = "QG_109-3", ["Coords"] = vec3(1185.9,861.45,144.0), ["Mode"] = "2" },
        { ["Name"] = "QG_109-4", ["Coords"] = vec3(1173.41,862.17,144.0), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1161.58,851.87,144.0), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(1179.66,864.85,147.5),"QG_109" },            
    },
    INTERPHONE = {
        
        -- {vector3(761.42,-987.67,26.22),"QG_109"},
        
    },
    SURVIVAL = {
        
        ["QG_109"] = vec3(1171.64,831.24,142.09),
        
    },
    WORLD_PVP = {
        
        {vector4(1188.03,817.85,141.99,17.01),"QG_109"},
        
    },
    RISK_ZONES = {
        
        {vec3(1171.64,831.24,142.09),"QG_109"}, -- QG_109
        
    },
    RDM_ZONES = {
        ["QG_109"] = {
            {
                vector2(1112.12, 819.70),
                vector2(1162.12, 803.03),
                vector2(1195.45, 866.67),
                vector2(1151.52, 887.12),
                vector2(1132.58, 851.52),
                vector2(1121.21, 833.33)
            }, {
                name="QG_109",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_110"] = { -- só nobre
    GARAGES = {
        -- QG_110
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2007.64,4308.9,38.25,11.34),
                ["Positions"] = {
                    [1] = vector4(2006.08,4316.54,37.83,39.69),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1949.19,4550.42,39.53,289.14),
                ["Positions"] = {
                    [1] = vector4(1957.1,4533.17,38.97,11.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1970.37,4288.79,38.25,291.97),
                ["Positions"] = {
                    [1] = vector4(1979.78,4283.6,37.83,337.33),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_110",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2013.97,4310.4,38.25,11.34),
                ["Positions"] = {
                    [1] = vector4(2006.08,4316.54,37.83,39.69),
                },
            },
        },  
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_110",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1955.82,4551.74,39.71,107.72),
                ["Positions"] = {
                    [1] = vector4(1957.1,4533.17,38.97,11.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_110",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1973.17,4277.12,38.25,286.3),
                ["Positions"] = {
                    [1] = vector4(1979.78,4283.6,37.83,337.33),
                },
            },
        },
    },    
    DOORS = {
        { Coords = vec3(1945.86,4582.26,39.38), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_110" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_110-2", ["Coords"] = vec3(2022.3,4283.03,33.19), ["Mode"] = "2" },
        { ["Name"] = "QG_110-3", ["Coords"] = vec3(2022.7,4289.73,33.19), ["Mode"] = "2" },
        { ["Name"] = "QG_110-4", ["Coords"] = vec3(2027.93,4288.98,33.19), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2010.82,4295.11,38.25), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(2030.13,4286.31,38.25),"QG_110" },            
    },
    INTERPHONE = {
        
        -- {vector3(761.42,-987.67,26.22),"QG_110"},
        
    },
    SURVIVAL = {
        
        ["QG_110"] = vec3(2011.93,4290.52,48.24),
        
    },
    WORLD_PVP = {
        
        {vector4(1998.06,4324.25,38.25,189.93),"QG_110"},
        
    },
    RISK_ZONES = {
        
        {vec3(2011.93,4290.52,48.24),"QG_110"}, -- QG_110
        
    },
    RDM_ZONES = {
        ["QG_110"] = {
            {
                vector2(1909.09, 4500.00),
                vector2(1995.45, 4106.06),
                vector2(2171.21, 4124.24),
                vector2(2071.21, 4542.42)
            }, {
                name="QG_110",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_111"] = { -- só santa
    GARAGES = {
        -- QG_111
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-134.42,909.31,235.63,158.75),
                ["Positions"] = {
                    [1] = vector4(-136.87,906.19,235.81,232.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-184.24,884.7,233.45,204.1),
                ["Positions"] = {
                    [1] = vector4(-178.0,883.63,233.47,274.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_111",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-177.61,888.76,233.45,195.6),
                ["Positions"] = {
                    [1] = vector4(-178.0,883.63,233.47,274.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_111",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-129.52,894.57,235.7,2.84),
                ["Positions"] = {
                    [1] = vector4(-136.87,906.19,235.81,232.45),
                },
            },
        },
    },    
    DOORS = {
        -- { Coords = vec3(1945.86,4582.26,39.38), Hash = 1286535678, Lock = true, Distance = 1.5, Perm = "QG_111" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_111-2", ["Coords"] = vec3(-170.8,915.08,239.94), ["Mode"] = "2" },
        { ["Name"] = "QG_111-3", ["Coords"] = vec3(-149.44,890.51,239.0), ["Mode"] = "2" },
        { ["Name"] = "QG_111-4", ["Coords"] = vec3(-165.75,896.91,236.99), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-157.54,912.47,235.64), ["Mode"] = "Personal" },
    },
    CRAFT = {
        
        { vec3(-167.86,918.78,239.94),"QG_111" },            
    },
    INTERPHONE = {
        
        -- {vector3(-120.85,895.32,235.9),"QG_111"},
        
    },
    SURVIVAL = {
        
        ["QG_111"] = vec3(-133.83,915.64,235.63),
        
    },
    WORLD_PVP = {
        
        {vector4(-125.14,870.69,233.66,28.35),"QG_111"},
        
    },
    RISK_ZONES = {
        
        {vec3(-133.83,915.64,235.63),"QG_111"}, -- QG_111
        
    },
    RDM_ZONES = {
        ["QG_111"] = {
            {
                vector2(-151.5,954.03),
                vector2(-202.77,923.98),
                vector2(-182.98,851.36),
                vector2(-168.38,852.61),
                vector2(-145.14,861.08),
                vector2(-130.81,851.85),
                vector2(-119.24,869.07),
                vector2(-123.12,897.34),
                vector2(-130.62,932.67)
            }, {
                name="QG_111",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_112"] = { -- so nobre
    GARAGES = {
        -- QG_112 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-337.34,-1533.2,27.72,90.71),
                ["Positions"] = {
                    [1] = vector4(-330.61,-1530.07,27.16,0.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-301.27,-1637.14,32.27,73.71),
                ["Positions"] = {
                    [1] = vector4(-306.8,-1646.58,31.73,56.7),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_112",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-339.81,-1551.27,25.22,85.04),
                ["Positions"] = {
                    [1] = vector4(-348.18,-1561.87,25.33,147.41),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_112",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-351.71,-1524.11,27.72,96.38),
                ["Positions"] = {
                    [1] = vector4(-343.63,-1531.22,27.82,272.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_112",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-261.71,-1661.69,33.56,19.85),
                ["Positions"] = {
                    [1] = vector4(-269.01,-1665.29,33.45,337.33),
                },
            },
        },
        
        
    },    
    DOORS = {
        
        { Coords = vec3(-306.55,-1530.56,27.36), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_112" },
        { Coords = vec3(-303.52,-1519.29,28.24), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_112" },
        { Coords = vec3(-358.62,-1562.57,25.19), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_112" },
        { Coords = vec3(-340.72,-1653.11,18.7), Hash = -594854737, Lock = true, Distance = 5.5, Perm = "QG_112" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_112-2", ["Coords"] = vec3(-285.95,-1644.97,32.28), ["Mode"] = "2" },
        { ["Name"] = "QG_112-3", ["Coords"] = vec3(-316.61,-1538.63,27.92), ["Mode"] = "2" },
        { ["Name"] = "QG_112-4", ["Coords"] = vec3(-313.5,-1531.41,27.92), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-320.7,-1510.99,29.28), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-284.14,-1632.64,32.69),"QG_112" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_112"},
        
    },
    SURVIVAL = {
        
        ["QG_112"] = vec3(-301.6,-1639.66,32.27),
        
    },
    WORLD_PVP = {
        
        {vector4(-308.51,-1515.34,28.0,277.8),"QG_112"},
        
    },
    RISK_ZONES = {
        
        {vec3(-301.6,-1639.66,32.27),"QG_112"}, -- QG_112
        
    },
    RDM_ZONES = {
        
        ["QG_112"] = {
            {
                vector2(-392.05, -1676.14),
                vector2(-471.97, -1647.35),
                vector2(-363.26, -1501.14),
                vector2(-309.09, -1503.03),
                vector2(-232.58, -1564.02),
                vector2(-243.56, -1578.79),
                vector2(-246.97, -1707.58),
                vector2(-254.17, -1695.83),
                vector2(-328.41, -1648.48),
                vector2(-339.39, -1660.23),
                vector2(-371.21, -1643.94)
            }, {
                name="QG_112",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_113"] = { -- KNG
    GARAGES = {
        -- QG_113
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(732.73,-306.67,54.59,119.06),
                ["Positions"] = {
                    [1] = vector4(724.71,-310.73,54.53,201.26),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(790.78,-253.99,66.22,235.28),
                ["Positions"] = {
                    [1] = vector4(812.11,-270.85,65.88,119.06),
                },
            },
        },       
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_113",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(711.28,-299.94,59.24,354.34),
                ["Positions"] = {
                    [1] = vector4(714.98,-290.32,58.7,280.63),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_113",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(790.48,-299.64,60.2,133.23),
                ["Positions"] = {
                    [1] = vector4(781.23,-316.14,59.93,107.72),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(724.69,-352.78,43.17), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(754.13,-340.76,46.35), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(826.94,-320.55,57.15), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(706.22,-252.21,64.0), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(653.32,-340.83,38.28), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(638.04,-408.5,24.65), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(854.46,-308.28,65.55), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(800.14,-276.11,66.46), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(798.45,-276.97,66.49), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(739.09,-255.53,66.35), Hash = -1156020871, Lock = true, Distance = 1.0, Perm = "QG_113" },
        { Coords = vec3(742.34,-257.3,66.32), Hash = -1156020871, Lock = true, Distance = 1.0, Perm = "QG_113" },
        { Coords = vec3(854.01,-306.44,65.58), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(927.83,-284.46,65.44), Hash = -161535020, Lock = true, Distance = 5.5, Perm = "QG_113" },
        { Coords = vec3(913.72,-312.48,65.78), Hash = -161535020, Lock = true, Distance = 5.5, Perm = "QG_113" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_113-2", ["Coords"] = vec3(752.18,-201.99,70.63), ["Mode"] = "2" },
        { ["Name"] = "QG_113-3", ["Coords"] = vec3(746.97,-214.58,66.69), ["Mode"] = "2" },
        { ["Name"] = "QG_113-4", ["Coords"] = vec3(775.48,-222.71,66.67), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(706.63,-304.53,59.24), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        -- { vec3(749.54,-368.71,45.46),"QG_113" },
        { vec3(748.67,-210.85,66.71),"QG_113" },
        
    },
    INTERPHONE = {
        
        -- {vector3(757.8,-340.36,46.71),"QG_113"},
        
    },
    SURVIVAL = {
        
        ["QG_113"] = vec3(763.34,-209.03,66.22),
        
    },
    WORLD_PVP = {
        
        {vector4(771.17,-244.11,66.25,300.48),"QG_113"},
        
    },
    RISK_ZONES = {
        
        {vec3(763.34,-209.03,66.22),"QG_113"}, -- QG_113
        
    },
    RDM_ZONES = {
        
        ["QG_113"] = {
            {
                vector2(746.97, -160.61),
                vector2(792.42, -187.88),
                vector2(830.68, -212.88),
                vector2(865.53, -237.12),
                vector2(902.27, -264.02),
                vector2(940.53, -288.64),
                vector2(944.32, -300.00),
                vector2(939.39, -313.26),
                vector2(902.27, -325.38),
                vector2(867.05, -326.89),
                vector2(818.18, -329.17),
                vector2(762.50, -346.97),
                vector2(729.17, -360.98),
                vector2(704.17, -358.71),
                vector2(681.06, -345.08),
                vector2(652.27, -290.53),
                vector2(695.08, -204.17),
                vector2(722.35, -152.65)
            }, {
                name="QG_113",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_114"] = { -- KNG
    GARAGES = {
        -- QG_114   
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_114",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1383.34,-752.59,67.23,48.19 ),
                ["Positions"] = {
                    [1] = vector4(1378.94,-742.25,67.23,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_114",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1328.8,-720.73,65.97,257.96),
                ["Positions"] = {
                    [1] = vector4(1327.07,-727.99,65.98,65.2),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(724.69,-352.78,43.17), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(754.13,-340.76,46.35), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(826.94,-320.55,57.15), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(706.22,-252.21,64.0), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(653.32,-340.83,38.28), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(638.04,-408.5,24.65), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(854.46,-308.28,65.55), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(800.14,-276.11,66.46), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(798.45,-276.97,66.49), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_114" },
        { Coords = vec3(739.09,-255.53,66.35), Hash = -1156020871, Lock = true, Distance = 1.0, Perm = "QG_114" },
        { Coords = vec3(742.34,-257.3,66.32), Hash = -1156020871, Lock = true, Distance = 1.0, Perm = "QG_114" },
        { Coords = vec3(854.01,-306.44,65.58), Hash = -1156020871, Lock = true, Distance = 5.5, Perm = "QG_114" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_114-2", ["Coords"] = vec3(1394.66,-771.11,67.35), ["Mode"] = "2" },
        { ["Name"] = "QG_114-3", ["Coords"] = vec3(1347.68,-708.39,68.66), ["Mode"] = "2" },
        { ["Name"] = "QG_114-4", ["Coords"] = vec3(1329.82,-757.37,68.66), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1402.9,-746.49,67.35), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        -- { vec3(749.54,-368.71,45.46),"QG_114" },
        { vec3(1319.91,-712.98,65.24),"QG_114" },
        
    },
    INTERPHONE = {
        
        -- {vector3(757.8,-340.36,46.71),"QG_114"},
        
    },
    SURVIVAL = {
        
        ["QG_114"] = vec3(752.31,-315.5,59.8),
        
    },
    WORLD_PVP = {
        
        {vector4(717.95,-354.5,43.24,289.14),"QG_114"},
        
    },
    RISK_ZONES = {
        
        {vec3(752.31,-315.5,59.8),"QG_114"}, -- QG_114
        
    },
    RDM_ZONES = {
        
        ["QG_114"] = {
            {
                vector2(664.39, -383.33),
                vector2(622.35, -360.23),
                vector2(734.85, -187.12),
                vector2(854.55, -251.52),
                vector2(854.92, -329.55)
            }, {
                name="QG_114",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_115"] = {-- KNG
    GARAGES = {
        -- QG_115
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_115",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1383.34,-752.59,67.23,48.19),
                ["Positions"] = {
                    [1] = vector4(1378.94,-742.25,67.23,68.04),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_115",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1328.8,-720.73,65.97,257.96),
                ["Positions"] = {
                    [1] = vector4(1327.07,-727.99,65.98,65.2),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1219.89,-288.77,69.12), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_115" },
        { Coords = vec3(1358.02,-112.32,122.58), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_115" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_115-2", ["Coords"] = vec3(1394.66,-771.11,67.35), ["Mode"] = "2" },
        { ["Name"] = "QG_115-3", ["Coords"] = vec3(1347.68,-708.39,68.66), ["Mode"] = "2" },
        { ["Name"] = "QG_115-4", ["Coords"] = vec3(1329.82,-757.37,68.66), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1402.9,-746.49,67.35), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1319.91,-712.98,65.24),"QG_115" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1213.05,-279.4,69.08),"QG_115"},
        
    },
    SURVIVAL = {
        
        ["QG_115"] = vec3(1263.26,-300.27,84.59),
        
    },
    WORLD_PVP = {
        
        {vector4(1246.41,-275.59,76.11,187.09),"QG_115"},
        
    },
    RISK_ZONES = {
        
        {vec3(1263.26,-300.27,84.59),"QG_115"}, -- QG_115
        
        
    },
    RDM_ZONES = {
        ["QG_115"] = {
            {
                vector2(1224.24, -302.27),
                vector2(1189.39, -253.79),
                vector2(1185.61, -154.55),
                vector2(1221.97, -121.97),
                vector2(1309.09, -106.82),
                vector2(1346.21, -98.48),
                vector2(1378.79, -141.67),
                vector2(1336.36, -235.61),
                vector2(1331.06, -301.52)
            }, {
                name="QG_115",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_116"] = {-- KNG
    GARAGES = {
        -- QG_116
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1250.8,-1916.12,45.56,297.64),
                ["Positions"] = {
                    [1] = vector4(1260.39,-1911.24,45.46,201.26),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1347.42,-1887.15,61.45,274.97),
                ["Positions"] = {
                    [1] = vector4(1361.08,-1885.55,61.18,354.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_116",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1294.34,-1948.31,45.76,291.97),
                ["Positions"] = {
                    [1] = vector4(1290.22,-1931.28,45.46,17.01),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_116",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1352.87,-1844.33,61.45,357.17),
                ["Positions"] = {
                    [1] = vector4(1363.5,-1844.37,61.18,5.67),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1275.43,-2020.91,45.46), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_116" },
        { Coords = vec3(1354.77,-1801.71,61.16), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_116" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_116-2", ["Coords"] = vec3(1323.47,-1847.52,62.6), ["Mode"] = "2" },
        { ["Name"] = "QG_116-3", ["Coords"] = vec3(1325.69,-1853.53,62.88), ["Mode"] = "2" },
        { ["Name"] = "QG_116-4", ["Coords"] = vec3(1230.77,-1855.26,45), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1245.68,-1850.0,45.71), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1261.1,-1970.76,45.65),"QG_116" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1213.05,-279.4,69.08),"QG_116"},
        
    },
    SURVIVAL = {
        
        ["QG_116"] = vec3(1238.81,-1864.12,45.58),
        
    },
    WORLD_PVP = {
        
        {vector4(1243.6,-1933.99,45.61,206.93),"QG_116"},
        
    },
    RISK_ZONES = {
        
        {vec3(1238.81,-1864.12,45.58),"QG_116"}, -- QG_116
        
        
    },
    RDM_ZONES = {
        ["QG_116"] = {
            {
                vector2(1181.82, -1840.91),
                vector2(1276.52, -1804.55),
                vector2(1340.91, -1784.85),
                vector2(1353.79, -1786.36),
                vector2(1405.30, -1773.48),
                vector2(1418.18, -1831.06),
                vector2(1413.64, -1902.27),
                vector2(1380.30, -1965.15),
                vector2(1331.06, -2003.03),
                vector2(1268.18, -2028.79),
                vector2(1252.27, -2031.06),
                vector2(1216.67, -1922.73)
            }, {
                name="QG_116",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_117"] = {-- KNG
    GARAGES = {
        -- QG_117
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1353.12,-742.5,67.21,331.66),
                ["Positions"] = {
                    [1] = vector4(1357.03,-735.27,67.23,70.87),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_117",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1328.62,-720.71,65.95,93.55),
                ["Positions"] = {
                    [1] = vector4(1324.7,-727.04,65.82,68.04),
                },
            },
        },
        
    },    
    DOORS = {
        
        { Coords = vec3(1293.39,-717.33,64.67), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_117" },
        { Coords = vec3(1296.74,-711.04,64.72), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_117" },
        
    },
    CHESTS = {
        
        { ["Name"] = "QG_117-2", ["Coords"] = vec3(1347.72,-708.44,68.66), ["Mode"] = "2" },
        { ["Name"] = "QG_117-3", ["Coords"] = vec3(1330.3,-757.5,68.66), ["Mode"] = "2" },
        { ["Name"] = "QG_117-4", ["Coords"] = vec3(1402.42,-746.38,67.35), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1394.17,-770.95,67.35), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1403.65,-722.33,67.42),"QG_117" },
        
    },
    INTERPHONE = {
        
        -- {vector3(1213.05,-279.4,69.08),"QG_117"},
        
    },
    SURVIVAL = {
        
        ["QG_117"] = vec3(1315.59,-746.33,67.26),
        
    },
    WORLD_PVP = {
        
        {vector4(1383.17,-702.63,67.28,147.41),"QG_117"},
        
    },
    RISK_ZONES = {
        
        {vec3(1315.59,-746.33,67.26),"QG_117"}, -- QG_117
        
        
    },
    RDM_ZONES = {
        ["QG_117"] = {
            {
                vector2(1301.89, -669.70),
                vector2(1295.83, -702.27),
                vector2(1279.17, -727.27),
                vector2(1256.06, -754.92),
                vector2(1304.92, -781.44),
                vector2(1347.35, -802.65),
                vector2(1389.39, -802.27),
                vector2(1421.59, -784.85),
                vector2(1434.47, -755.68),
                vector2(1434.85, -722.35),
                vector2(1415.91, -697.35),
                vector2(1383.71, -687.12),
                vector2(1353.03, -679.17)
            }, {
                name="QG_117",
                --debugGrid=true,
            },
        }
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_118"] = { -- so nobre
    GARAGES = {
        -- QG_118 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-87.00,856.71,235.76,189.72),
                ["Positions"] = {
                    [1] = vector4(-85.94,852.74,235.71,301.09),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-113.78,832.25,235.71,191.08),
                ["Positions"] = {
                    [1] = vector4(-96.58,836.13,235.04,101.91),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_118",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-114.64,837.37,235.65,286.22),
                ["Positions"] = {
                    [1] = vector4(-107.17,837.02,235.68,354.03),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_118",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-103.51,865.18,235.77,211.12),
                ["Positions"] = {
                    [1] = vector4(-104.45,858.98,235.74,18.37),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_118",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-59.85,841.02,239.92,22.68),
                ["Positions"] = {
                    [1] = vector4(-59.27,832.69,240.67,314.65),
                },
            },
        },        
        
    },    
    DOORS = {
        
        { Coords = vec3(-104.60,850.39,235.63), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_118" },     

    },
    CHESTS = {
        
        { ["Name"] = "QG_118-2", ["Coords"] = vec3(-101.96,826.78,227.88), ["Mode"] = "2" },
        { ["Name"] = "QG_118-3", ["Coords"] = vec3(-63.11,834.28,231.33), ["Mode"] = "2" },
        { ["Name"] = "QG_118-4", ["Coords"] = vec3(-71.01,834.37,235.71), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-76.18,837.42,235.71), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-101.14,822.95,227.88),"QG_118" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_118"},
        
    },
    SURVIVAL = {
        
        ["QG_118"] = vec3(-111.0,834.27,235.7),
        
    },
    WORLD_PVP = {
        
        {vector4(-91.40,845.31,235.76,182.72),"QG_118"},
        
    },
    RISK_ZONES = {
        
        {vec3(-111.0,834.27,235.7),"QG_118"}, -- QG_118
        
    },
    RDM_ZONES = {
        
        ["QG_118"] = {
            {
                vector2(-62.12,850.00),
                vector2(-29.92,812.88),
                vector2(-40.91,798.11),
                vector2(-32.95,782.20),
                vector2(-47.73,770.83),
                vector2(-145.45,836.74),
                vector2(-124.24,862.12),
                vector2(-97.35,842.42),
                vector2(-81.06,841.67)
            }, {
                name="QG_118",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_119"] = { -- so santa
    GARAGES = {
        -- QG_119 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1092.19,363.02,68.63,90.71),
                ["Positions"] = {
                    [1] = vector4(-1098.11,360.69,68.53,348.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_119",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1105.42,362.72,68.6,277.8),
                ["Positions"] = {
                    [1] = vector4(-1098.11,360.69,68.53,348.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_119",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1102.81,353.64,73.57,206.85),
                ["Positions"] = {
                    [1] = vector4(-1097.79,349.57,73.43,181.28),
                },
            },
        },
    },    
    DOORS = {
        
            { Coords = vec3(-1090.68,369.34,68.7), Hash = 1930237257, Lock = true, Distance = 5.5, Perm = "QG_119" },
            { Coords = vec3(-1129.26,389.97,70.75), Hash = -2139443164, Lock = true, Distance = 5.5, Perm = "QG_119" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_119-2", ["Coords"] = vec3(-1124.01,362.02,71.31), ["Mode"] = "2" },
        { ["Name"] = "QG_119-3", ["Coords"] = vec3(-1141.96,378.12,71.34), ["Mode"] = "2" },
        { ["Name"] = "QG_119-4", ["Coords"] = vec3(-1175.39,364.5,71.7), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1179.01,371.1,71.7), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1124.08,366.0,71.41),"QG_119" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_119"},
        
    },
    SURVIVAL = {
        
        ["QG_119"] = vec3(-1137.2,389.08,71.48),
        
    },
    WORLD_PVP = {
        
        {vector4(-1105.27,345.47,68.48,5.67),"QG_119"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1137.2,389.08,71.48),"QG_119"}, -- QG_119
        
    },
    RDM_ZONES = {
        
        ["QG_119"] = {
            {
                vector2(-1085.61, 338.64),
                vector2(-1088.64, 377.27),
                vector2(-1121.97, 388.64),
                vector2(-1181.06, 390.91),
                vector2(-1176.52, 351.52),
                vector2(-1162.12, 340.15)
            }, {
                name="QG_119",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_120"] = { -- so santa
    GARAGES = {
        -- QG_120 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2803.53,-698.92,7.77,116.23),
                ["Positions"] = {
                    [1] = vector4(2801.11,-704.8,7.33,116.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_120",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2807.48,-705.81,7.77,300.48),
                ["Positions"] = {
                    [1] = vector4(2773.23,-711.83,6.72,96.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_120",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2841.78,-727.91,7.35,189.93),
                ["Positions"] = {
                    [1] = vector4(2839.48,-721.45,8.0,93.55),
                },
            },
        },
    },    
    DOORS = {
        
            { Coords = vec3(2752.32,-708.83,9.67), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_120" },     

    },
    CHESTS = {
        
        { ["Name"] = "QG_120-2", ["Coords"] = vec3(2816.48,-694.41,12.22), ["Mode"] = "2" },
        { ["Name"] = "QG_120-3", ["Coords"] = vec3(2828.13,-703.23,12.54), ["Mode"] = "2" },
        { ["Name"] = "QG_120-4", ["Coords"] = vec3(2812.25,-696.48,7.77), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2814.45,-700.48,7.77), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2838.73,-698.58,12.22),"QG_120" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_120"},
        
    },
    SURVIVAL = {
        
        ["QG_120"] = vec3(2804.6,-710.17,7.77),
        
    },
    WORLD_PVP = {
        
        {vector4(2798.55,-713.72,7.77,306.15),"QG_120"},
        
    },
    RISK_ZONES = {
        
        {vec3(2804.6,-710.17,7.77),"QG_120"}, -- QG_120
        
    },
    RDM_ZONES = {
        
        ["QG_120"] = {
            {
                vector2(2739.47,-742.72),
                vector2(2904.56,-736.86),
                vector2(2929.52,-593.57),
                vector2(2754.72,-602.18)
            }, {
                name="QG_120",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_121"] = { -- so nobre
    GARAGES = {
        -- QG_121 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(548.68,884.63,250.57,14.18),
                ["Positions"] = {
                    [1] = vector4(556.54,892.99,251.18,348.67),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(645.29,935.35,247.57,175.75),
                ["Positions"] = {
                    [1] = vector4(650.63,937.03,247.2,260.79),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(829.34,977.15,240.45,226.78),
                ["Positions"] = {
                    [1] = vector4(834.14,975.43,241.39,303.31),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_121",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(577.31,879.62,250.57,175.75),
                ["Positions"] = {
                    [1] = vector4(579.87,888.52,250.47,257.96),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_121",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(666.59,931.19,247.57,0.0),
                ["Positions"] = {
                    [1] = vector4(663.95,942.1,247.47,348.67),
                },
            },
        },
    },    
    DOORS = {
        
         { Coords = vec3(819.2,972.04,241.0), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_121" },     

    },
    CHESTS = {
        
        { ["Name"] = "QG_121-2", ["Coords"] = vec3(690.62,920.21,247.57), ["Mode"] = "2" },
        { ["Name"] = "QG_121-3", ["Coords"] = vec3(684.3,921.53,247.57), ["Mode"] = "2" },
        { ["Name"] = "QG_121-4", ["Coords"] = vec3(648.2,921.67,247.57), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(628.16,929.44,247.57), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(682.26,909.33,247.57),"QG_121" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_121"},
        
    },
    SURVIVAL = {
        
        ["QG_121"] = vec3(656.5,951.64,247.57),
        
    },
    WORLD_PVP = {
        
        {vector4(681.97,875.56,247.64,150.24),"QG_121"},
        
    },
    RISK_ZONES = {
        
        {vec3(656.5,951.64,247.57),"QG_121"}, -- QG_121
        
    },
    RDM_ZONES = {
        
        ["QG_121"] = {
            {
                vector2(592.42, 1025.76),
                vector2(556.06, 819.70),
                vector2(698.48, 787.88),
                vector2(769.70, 1000.00),
                vector2(750.00, 1128.79),
                vector2(745.45, 1187.88),
                vector2(643.94, 1198.48)
            }, {
                name="QG_121",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_122"] = { -- so nobre
    GARAGES = {
        -- QG_122 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-870.75,51.29,48.78,119.06),
                ["Positions"] = {
                    [1] = vector4(-875.14,44.59,48.09,198.43),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_122",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-872.53,31.81,48.76,45.36),
                ["Positions"] = {
                    [1] = vector4(-868.41,34.59,48.56,223.94),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(-878.55,19.22,45.21), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_122" },
        { Coords = vec3(-888.39,43.06,49.15), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_122" },
        { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_122" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_122-2", ["Coords"] = vec3(-896.32,38.43,49.13), ["Mode"] = "2" },
        { ["Name"] = "QG_122-3", ["Coords"] = vec3(-887.9,54.22,49.13), ["Mode"] = "2" },
        { ["Name"] = "QG_122-4", ["Coords"] = vec3(-878.87,60.77,49.66), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-882.0,37.81,49.08), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-895.34,46.96,50.04),"QG_122" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
        ["QG_122"] = vec3(-882.42,45.88,48.76),
        
    },
    WORLD_PVP = {
        
        {vector4(-893.74,29.94,48.65,141.74),"QG_122"},
        
    },
    RISK_ZONES = {
        
        {vec3(-882.42,45.88,48.76),"QG_122"}, -- QG_122
        
    },
    RDM_ZONES = {
        
        ["QG_122"] = {
            {
                vector2(-942.80, 76.52),
                vector2(-918.94, 44.32),
                vector2(-889.02, 24.24),
                vector2(-869.70, 14.02),
                vector2(-856.06, 20.83),
                vector2(-857.20, 31.44),
                vector2(-867.42, 40.53),
                vector2(-862.50, 46.97),
                vector2(-871.97, 65.91)
            }, {
                name="QG_122",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_123"] = {   
    GARAGES = {
        --QG_123 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1007.04,895.63,210.94,56.7),
                ["Positions"] = {
                    [1] = vector4(989.7,878.99,208.42,348.67),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(916.99,1059.83,276.39,0.0),
                ["Positions"] = {
                    [1] = vector4(929.15,1055.66,271.82,229.61),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_123",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1005.38,905.03,211.4,68.04),
                ["Positions"] = {
                    [1] = vector4(995.75,895.85,209.83,161.58),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_123",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(814.0,1154.29,318.9,0.0),
                ["Positions"] = {
                    [1] = vector4(808.13,1163.02,320.67,25.52),
                },
            },
        },
    },    
    DOORS = {
        
        -- { Coords = vec3(-878.55,19.22,45.21), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_123" },
        -- { Coords = vec3(-888.39,43.06,49.15), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_123" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_123" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_123-2", ["Coords"] = vec3(1034.0,916.45,222.06), ["Mode"] = "2" },
        { ["Name"] = "QG_123-3", ["Coords"] = vec3(1036.25,877.82,223.71), ["Mode"] = "2" },
        { ["Name"] = "QG_123-4", ["Coords"] = vec3(961.77,1024.38,259.0), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1019.86,938.29,219.96), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(965.56,1019.91,259.0),"QG_123" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       -- ["QG_123"] = vec3(-882.42,45.88,48.76),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_123"},
        
    },
    RISK_ZONES = {
        
        -- {vec3(-882.42,45.88,48.76),"QG_123"}, -- QG_123
        
    },
    RDM_ZONES = {
        
        -- ["QG_123"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_123",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_124"] = {   
    GARAGES = {
        --QG_124 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2788.99,2234.71,25.04,308.98),
                ["Positions"] = {
                    [1] = vector4(-2777.14,2234.7,24.31,306.15),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2809.13,2279.48,25.75,311.82),
                ["Positions"] = {
                    [1] = vector4(-2796.94,2281.93,23.4,226.78),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2686.25,2360.38,16.82,345.83),
                ["Positions"] = {
                    [1] = vector4(-2691.6,2361.41,16.82,172.92),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2737.81,2281.44,19.83,133.23),
                ["Positions"] = {
                    [1] = vector4(-2735.48,2274.77,20.12,141.74),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_124",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2691.17,2336.33,17.1,297.64),
                ["Positions"] = {
                    [1] = vector4(-2696.8,2342.23,17.02,167.25),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_124",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2810.99,2274.33,25.83,283.47),
                ["Positions"] = {
                    [1] = vector4(-2817.38,2278.32,25.91,263.63),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_124",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2775.49,2250.06,23.64,04.1),
                ["Positions"] = {
                    [1] = vector4(-2782.36,2258.62,23.61,323.15),
                },
            },
        },
    },    
    DOORS = {
        
        -- { Coords = vec3(-878.55,19.22,45.21), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_124" },
        -- { Coords = vec3(-888.39,43.06,49.15), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_124" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_124" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_124-2", ["Coords"] = vec3(-2759.74,2388.24,6.49), ["Mode"] = "2" },
        { ["Name"] = "QG_124-2", ["Coords"] = vec3(-2679.17,2335.47,21.13), ["Mode"] = "2" },
        { ["Name"] = "QG_124-3", ["Coords"] = vec3(-2679.11,2334.86,17.78), ["Mode"] = "2" },
        { ["Name"] = "QG_124-4", ["Coords"] = vec3(-2755.64,2278.0,21.82), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2770.9,2292.55,13.34), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2791.43,2252.21,24.04),"QG_124" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       -- ["QG_124"] = vec3(-882.42,45.88,48.76),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_124"},
        
    },
    RISK_ZONES = {
        
        -- {vec3(-882.42,45.88,48.76),"QG_124"}, -- QG_124
        
    },
    RDM_ZONES = {
        
        -- ["QG_124"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_124",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_125"] = {   
    GARAGES = {
        --QG_125 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2040.0,4466.4,57.36,226.78),
                ["Positions"] = {
                    [1] = vector4(-2036.67,4474.55,57.19,124.73),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1927.21,4460.08,35.97,303.31),
                ["Positions"] = {
                    [1] = vector4(-1935.75,4457.4,35.44,39.69),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_125",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2048.51,4458.56,57.68,45.36),
                ["Positions"] = {
                    [1] = vector4(-2058.09,4458.11,58.03,300.48),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_125",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1964.59,4484.14,34.2,308.98),
                ["Positions"] = {
                    [1] = vector4(-1954.2,4466.48,35.11,206.93),
                },
            },
        },
    },    
    DOORS = {
        
        -- { Coords = vec3(-878.55,19.22,45.21), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_125" },
        -- { Coords = vec3(-888.39,43.06,49.15), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_125" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_125" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_125-2", ["Coords"] = vec3(-1946.61,4489.57,34.93), ["Mode"] = "2" },
        -- { ["Name"] = "QG_125-2", ["Coords"] = vec3(-2679.17,2335.47,21.13), ["Mode"] = "2" },
        { ["Name"] = "QG_125-3", ["Coords"] = vec3(-1940.45,4485.43,34.9), ["Mode"] = "2" },
        { ["Name"] = "QG_125-4", ["Coords"] = vec3(-1950.9,4483.19,34.93), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1960.33,4455.22,36.75), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1930.39,4435.23,39.93),"QG_125" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       -- ["QG_125"] = vec3(-882.42,45.88,48.76),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_125"},
        
    },
    RISK_ZONES = {
        
        -- {vec3(-882.42,45.88,48.76),"QG_125"}, -- QG_125
        
    },
    RDM_ZONES = {
        
        -- ["QG_125"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_125",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_126"] = {   
    GARAGES = {
        --QG_126 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(944.48,1731.87,165.57,121.89),
                ["Positions"] = {
                    [1] = vector4(952.26,1727.7,165.33,93.55),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(831.34,1825.8,138.98,187.09),
                ["Positions"] = {
                    [1] = vector4(842.7,1835.39,140.19,306.15),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_126",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(924.22,1729.5,166.39,311.82),
                ["Positions"] = {
                    [1] = vector4(921.25,1722.45,166.63,99.22),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_126",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(869.64,1856.17,142.14,70.87),
                ["Positions"] = {
                    [1] = vector4(861.87,1847.57,141.59,306.15),
                },
            },
        },
    },    
    DOORS = {
        
        -- { Coords = vec3(-878.55,19.22,45.21), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_126" },
        -- { Coords = vec3(-888.39,43.06,49.15), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_126" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_126" },  

    },
    CHESTS = {
        
        -- { ["Name"] = "QG_126-2", ["Coords"] = vec3(-1946.61,4489.57,34.93), ["Mode"] = "2" },
        -- -- { ["Name"] = "QG_126-2", ["Coords"] = vec3(-2679.17,2335.47,21.13), ["Mode"] = "2" },
        { ["Name"] = "QG_126-3", ["Coords"] = vec3(826.59,1772.72,150.62), ["Mode"] = "2" },
        { ["Name"] = "QG_126-4", ["Coords"] = vec3(905.46,1752.15,171.73), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(925.22,1755.64,164.71), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(834.45,1757.9,155.32),"QG_126" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       -- ["QG_126"] = vec3(-882.42,45.88,48.76),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_126"},
        
    },
    RISK_ZONES = {
        
        -- {vec3(-882.42,45.88,48.76),"QG_126"}, -- QG_126
        
    },
    RDM_ZONES = {
        
        -- ["QG_126"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_126",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_127"] = {   
    GARAGES = {
        --QG_127 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1949.35,4549.93,39.55,178.59),
                ["Positions"] = {
                    [1] = vector4(1950.12,4562.59,40.71,11.34),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2007.92,4309.14,38.25,62.37),
                ["Positions"] = {
                    [1] = vector4(2005.84,4318.17,38.25,14.18),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1970.15,4288.67,38.25,269.3),
                ["Positions"] = {
                    [1] = vector4(1980.28,4284.65,38.25,283.47),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_127",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1955.68,4551.51,39.6,289.14),
                ["Positions"] = {
                    [1] = vector4(1955.62,4536.44,39.39,5.67),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_127",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2013.84,4310.85,38.25,204.1),
                ["Positions"] = {
                    [1] = vector4(1955.62,4536.44,39.39,5.67),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_127",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1973.19,4276.69,38.25,150.24),
                ["Positions"] = {
                    [1] = vector4(1982.21,4282.42,38.25,2.84),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(2003.24,4326.78,38.25), Hash = -1286535678, Lock = true, Distance = 5.5, Perm = "QG_127" },
        { Coords = vec3(1945.9,4581.53,39.39), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_127" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_127-2", ["Coords"] = vec3(2022.08,4283.08,33.19), ["Mode"] = "2" },
        { ["Name"] = "QG_127-3", ["Coords"] = vec3(2027.85,4289.0,33.19), ["Mode"] = "2" },
        { ["Name"] = "QG_127-4", ["Coords"] = vec3(2023.1,4289.97,33.19), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2010.73,4294.94,38.25), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2030.54,4286.11,38.25),"QG_127" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_127"] = vec3(1983.13,4297.21,38.25),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_127"},
        
    },
    RISK_ZONES = {
        
        {vec3(1983.13,4297.21,38.25),"QG_127"}, -- QG_127
        
    },
    RDM_ZONES = {
        
        -- ["QG_127"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_127",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}


ORGS_CONFIG["QG_128"] = {   
    GARAGES = {
        --QG_128 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-682.11,6381.09,13.30,13.55),
                ["Positions"] = {
                    [1] = vector4(-682.11,6381.09,13.30,13.55),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-591.50,6325.76,3.13,257.15),
                ["Positions"] = {
                    [1] = vector4(-591.11,6330.41,3.18,257.56),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_128",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-677.15,6353.63,13.31,306.77),
                ["Positions"] = {
                    [1] = vector4(-668.76,6353.02,13.30,252.94),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_128",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-591.00,6318.31,2.92,269.00),
                ["Positions"] = {
                    [1] = vector4(-590.11,6313.32,2.55,296.70),
                },
            },
        },
    },    
    DOORS = {
        
        -- { Coords = vec3(-878.55,19.22,45.21), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_128" },
        -- { Coords = vec3(-888.39,43.06,49.15), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_128" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_128" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_128-2", ["Coords"] = vec3(-673.44,6382.41,17.02), ["Mode"] = "2" },
        { ["Name"] = "QG_128-3", ["Coords"] = vec3(-657.03,6382.11,13.02), ["Mode"] = "2" },
        { ["Name"] = "QG_128-4", ["Coords"] = vec3(-665.66,6390.74,13.02), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-663.04,6373.57,13.02), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-669.46,6397.09,17.02),"QG_128" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_128"] = vec3(-672.44,6373.86,13.29),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_128"},
        
    },
    RISK_ZONES = {
        
        {vec3(-672.44,6373.86,13.29),"QG_128"}, -- QG_128
        
    },
    RDM_ZONES = {
        
        -- ["QG_128"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_128",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_129"] = {   
    GARAGES = {
        --QG_129 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2577.86,1925.66,167.30,247.16),
                ["Positions"] = {
                    [1] = vector4(-2576.38,1928.64,167.50,229.29),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_129",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2549.42,1914.15,169.38,136.42),
                ["Positions"] = {
                    [1] = vector4(-2554.74,1912.32,168.93,244.56),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(-2557.46,1913.07,168.89), Hash = -546378757, Lock = true, Distance = 5.5, Perm = "QG_129" },
        { Coords = vec3(-2557.46,1913.07,168.89), Hash = -1249591818, Lock = true, Distance = 5.5, Perm = "QG_129" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_129-2", ["Coords"] = vec3(-2600.44,1889.53,163.75), ["Mode"] = "2" },
        { ["Name"] = "QG_129-3", ["Coords"] = vec3(-2591.62,1893.25,167.30), ["Mode"] = "2" },
        { ["Name"] = "QG_129-4", ["Coords"] = vec3(-2588.72,1909.11,167.49), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2590.12,1878.27,167.30), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2603.81,1922.73,167.30),"QG_129" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_129"] = vec3(-2585.61,1914.66,167.3),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_129"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2585.61,1914.66,167.3),"QG_129"}, -- QG_129
        
    },
    RDM_ZONES = {
        
        -- ["QG_129"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_129",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_130"] = {   
    GARAGES = {
        --QG_130 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2040.23,3366.77,46.80,259.56),
                ["Positions"] = {
                    [1] = vector4(2043.89,3363.55,46.11,257.90),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_130",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2050.04,3359.46,45.31,276.00),
                ["Positions"] = {
                    [1] = vector4(2059.25,3358.73,45.34,150.54),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_130",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2037.18,3356.56,46.80,49.26),
                ["Positions"] = {
                    [1] = vector4(2034.11,3359.85,46.80,303.40),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(2049.18,3362.42,45.39), Hash = -2125423493, Lock = true, Distance = 5.5, Perm = "QG_130" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_130-2", ["Coords"] = vec3(2021.27,3370.06,51.65), ["Mode"] = "2" },
        { ["Name"] = "QG_130-3", ["Coords"] = vec3(2015.76,3338.07,46.21), ["Mode"] = "2" },
        { ["Name"] = "QG_130-4", ["Coords"] = vec3(2010.15,3359.59,46.60), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2023.67,3378.94,46.60), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2029.97,3384.49,46.80),"QG_130" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_130"] = vec3(1998.41,3361.69,46.59),
        
    },
    WORLD_PVP = {
        
      --  {vector4(-893.74,29.94,48.65,141.74),"QG_130"},
        
    },
    RISK_ZONES = {
        
        {vec3(1998.41,3361.69,46.59),"QG_130"}, -- QG_130
        
    },
    RDM_ZONES = {
        
        -- ["QG_130"] = {
        --     {
        --         vector2(-942.80, 76.52),
        --         vector2(-918.94, 44.32),
        --         vector2(-889.02, 24.24),
        --         vector2(-869.70, 14.02),
        --         vector2(-856.06, 20.83),
        --         vector2(-857.20, 31.44),
        --         vector2(-867.42, 40.53),
        --         vector2(-862.50, 46.97),
        --         vector2(-871.97, 65.91)
        --     }, {
        --         name="QG_130",
        --         --debugGrid=true,
        --     },
        -- } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_131"] = {   
    GARAGES = {
        --QG_131 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(94.83,6576.12,31.26,335.38),
                ["Positions"] = {
                    [1] = vector4(76.30,6581.87,30.58,223.93),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(73.79,6537.84,31.26,85.30),
                ["Positions"] = {
                    [1] = vector4(77.85,6557.34,30.58,223.93),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_131",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(61.89,6526.27,31.25,47.47),
                ["Positions"] = {
                    [1] = vector4(41.18,6518.14,30.58,317.48),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_131",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(103.00,6568.55,31.26,86.84),
                ["Positions"] = {
                    [1] = vector4(106.67,6550.52,30.58,39.69),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(18.18,6415.93,31.32), Hash = 1543286598, Lock = true, Distance = 5.5, Perm = "QG_131" },
        { Coords = vec3(22.11,6419.77,31.32), Hash = 1543286598, Lock = true, Distance = 5.5, Perm = "QG_131" },
        { Coords = vec3(100.14,6573.92,31.36), Hash = 1543286598, Lock = true, Distance = 5.5, Perm = "QG_131" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_131" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_131-2", ["Coords"] = vec3(87.52,6531.49,34.87), ["Mode"] = "2" },
        { ["Name"] = "QG_131-3", ["Coords"] = vec3(91.40,6518.20,34.87), ["Mode"] = "2" },
        { ["Name"] = "QG_131-4", ["Coords"] = vec3(88.24,6539.12,31.26), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(88.97,6517.83,31.26), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(84.92,6505.88,31.26),"QG_131" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_131"] = vec3(85.18,6511.92,31.26),
        
    },
    WORLD_PVP = {
        
       {vector4(84.43,6545.79,31.26,213.15),"QG_131"},
        
    },
    RISK_ZONES = {
        
        {vec3(85.18,6511.92,31.26),"QG_131"}, -- QG_131
        
    },
    RDM_ZONES = {
        
        ["QG_131"] = {
            {
                vector2(130.68, 6508.33),
                vector2(73.11, 6454.17),
                vector2(7.20, 6516.67),
                vector2(32.20, 6541.29),
                vector2(48.86, 6559.09),
                vector2(66.67, 6576.52),
                vector2(74.24, 6580.68),
                vector2(81.44, 6577.27),
                vector2(92.80, 6566.67),
                vector2(100.76, 6556.44),
                vector2(113.64, 6545.08),
                vector2(127.27, 6531.44),
                vector2(134.47, 6523.86),
                vector2(135.23, 6516.29),
                vector2(-113.26, 6394.32),
                vector2(-51.52, 6337.88),
                vector2(135.61, 6521.21),
                vector2(72.73, 6580.30)
            }, {
                name="QG_131",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_132"] = {   
    GARAGES = {
        --QG_132 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2192.27,4270.21,48.63,124.86),
                ["Positions"] = {
                    [1] = vector4(-2196.86,4259.53,47.41,121.82),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2206.68,4275.89,48.24,52.22),
                ["Positions"] = {
                    [1] = vector4(-2217.63,4283.49,46.79,150.15),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_132",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2219.67,4252.89,46.59,57.94),
                ["Positions"] = {
                    [1] = vector4(-2232.56,4258.97,45.23,141.66),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_132",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2207.21,4245.47,47.67,68.64),
                ["Positions"] = {
                    [1] = vector4(-2212.92,4247.68,46.70,311.91),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(-2212.49,4263.38,47.31), Hash = 802611527, Lock = true, Distance = 5.5, Perm = "QG_132" },
        { Coords = vec3(-2193.23,4289.47,49.18), Hash = -1456353489, Lock = true, Distance = 5.5, Perm = "QG_132" },
        { Coords = vec3(-2193.06,4286.80,49.17), Hash = -891809157, Lock = true, Distance = 5.5, Perm = "QG_132" },
        { Coords = vec3(-2196.47,4276.12,49.17), Hash = -891809157, Lock = true, Distance = 5.5, Perm = "QG_132" },
        { Coords = vec3(-2194.94,4276.24,49.18), Hash = -891809157, Lock = true, Distance = 5.5, Perm = "QG_132" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_132-2", ["Coords"] = vec3(-2187.78,4280.52,49.18), ["Mode"] = "2" },
        { ["Name"] = "QG_132-3", ["Coords"] = vec3(-2207.43,4241.95,48.31), ["Mode"] = "2" },
        { ["Name"] = "QG_132-4", ["Coords"] = vec3(-2192.48,4283.98,49.17), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2184.59,4281.53,49.18), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2179.53,4292.21,49.18),"QG_132" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_132"] = vec3(-2174.52,4272.32,48.99),
        
    },
    WORLD_PVP = {
        
       {vector4(-2193.70,4248.32,47.92,220.64),"QG_132"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2174.52,4272.32,48.99),"QG_132"}, -- QG_132
        
    },
    RDM_ZONES = {
        
        ["QG_132"] = {
            {
                vector2(-2185.23, 4318.56),
                vector2(-2148.11, 4321.59),
                vector2(-2097.35, 4287.50),
                vector2(-2116.67, 4242.42),
                vector2(-2154.55, 4214.77),
                vector2(-2213.26, 4189.77),
                vector2(-2261.36, 4188.26),
                vector2(-2223.11, 4250.76),
                vector2(-2203.79, 4285.61)
            }, {
                name="QG_132",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_133"] = {   
    GARAGES = {
        --QG_133 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1343.58,-2563.66,47.49,27.61),
                ["Positions"] = {
                    [1] = vector4(1364.67,-2601.08,47.42,8.67),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1369.76,-2263.87,61.28,357.87),
                ["Positions"] = {
                    [1] = vector4(1374.64,-2247.72,61.09,66.52),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_133",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1350.80,-2559.42,47.81,31.59),
                ["Positions"] = {
                    [1] = vector4(1347.50,-2589.85,48.36,109.19),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_133",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1350.65,-2266.52,61.64,9.17),
                ["Positions"] = {
                    [1] = vector4(1355.89,-2255.97,61.43,6.26),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(1352.31,-2574.09,48.62), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_133" },
        { Coords = vec3(1356.99,-2267.27,61.60), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_133" },
        -- { Coords = vec3(-895.88,49.52,50.03), Hash = 362837712, Lock = true, Distance = 5.5, Perm = "QG_133" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_133-2", ["Coords"] = vec3(1360.64,-2332.00,63.41), ["Mode"] = "2" },
        { ["Name"] = "QG_133-3", ["Coords"] = vec3(1373.69,-2323.27,61.84), ["Mode"] = "2" },
        { ["Name"] = "QG_133-4", ["Coords"] = vec3(1357.76,-2289.81,62.37), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1351.58,-2278.06,62.33), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1375.19,-2336.52,61.39),"QG_133" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_133"] = vec3(1371.28,-2348.56,62.14),
        
    },
    WORLD_PVP = {
        
       {vector4(1385.61,-2337.34,62.36,32.62),"QG_133"},
        
    },
    RISK_ZONES = {
        
        {vec3(1371.28,-2348.56,62.14),"QG_133"}, -- QG_133
        
    },
    RDM_ZONES = {
        
        ["QG_133"] = {
            {
                vector2(1363.87, -2255.04),
                vector2(1356.67, -2255.04),
                vector2(1348.72, -2256.94),
                vector2(1346.44, -2269.44),
                vector2(1342.28, -2278.54),
                vector2(1342.28, -2297.87),
                vector2(1345.69, -2331.22),
                vector2(1346.44, -2364.19),
                vector2(1340.53, -2406.90),
                vector2(1335.23, -2426.23),
                vector2(1328.03, -2447.83),
                vector2(1314.39, -2475.69),
                vector2(1293.18, -2499.57),
                vector2(1270.08, -2520.60),
                vector2(1247.35, -2537.65),
                vector2(1235.98, -2545.61),
                vector2(1222.73, -2554.71),
                vector2(1217.80, -2573.28),
                vector2(1218.94, -2588.06),
                vector2(1236.36, -2600.19),
                vector2(1257.58, -2595.64),
                vector2(1275.76, -2591.47),
                vector2(1304.17, -2587.68),
                vector2(1321.21, -2583.13),
                vector2(1335.23, -2577.83),
                vector2(1354.17, -2572.90),
                vector2(1371.21, -2569.87),
                vector2(1381.44, -2564.18),
                vector2(1391.67, -2558.50),
                vector2(1400.00, -2551.30),
                vector2(1401.89, -2539.93),
                vector2(1398.86, -2526.28),
                vector2(1395.45, -2516.05),
                vector2(1393.18, -2505.06),
                vector2(1396.21, -2493.31),
                vector2(1404.55, -2474.36),
                vector2(1412.12, -2463.37),
                vector2(1425.76, -2457.69),
                vector2(1440.91, -2450.87),
                vector2(1447.73, -2437.98),
                vector2(1453.41, -2423.20),
                vector2(1454.55, -2393.64),
                vector2(1452.27, -2376.59),
                vector2(1452.27, -2357.64),
                vector2(1451.14, -2342.48),
                vector2(1435.61, -2323.91),
                vector2(1424.62, -2315.95),
                vector2(1404.17, -2303.44),
                vector2(1390.15, -2288.66),
                vector2(1376.89, -2270.47),
                vector2(1368.94, -2259.10)
            }, {
                name="QG_133",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_134"] = {   
    GARAGES = {
        --QG_134 
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(139.05,-357.82,44.94,76.54),
                ["Positions"] = {
                    [1] = vector4(137.49,-363.25,44.94,249.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(0.06,-411.08,39.28,257.96),
                ["Positions"] = {
                    [1] = vector4(-9.98,-415.22,39.43,345.83),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(130.15,-432.97,40.94,153.08),
                ["Positions"] = {
                    [1] = vector4(138.99,-436.11,41.06,161.58),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(110.91,-424.89,40.57,255.12),
                ["Positions"] = {
                    [1] = vector4(103.84,-422.38,40.52,158.75),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(11.16,-436.91,39.55,343.0),
                ["Positions"] = {
                    [1] = vector4(5.39,-449.52,40.12,164.41),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_134",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(7.26,-435.73,39.53,340.16),
                ["Positions"] = {
                    [1] = vector4(5.39,-449.52,40.12,164.41),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_134",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(118.49,-456.83,41.27,311.82),
                ["Positions"] = {
                    [1] = vector4(120.35,-434.43,41.27,343.0),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_134",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(107.85,-450.73,41.27,147.41),
                ["Positions"] = {
                    [1] = vector4(113.56,-429.75,41.27,343.0),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(23.66,-462.58,39.93), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_134" },
        { Coords = vec3(18.59,-462.11,40.05), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_134" },
        { Coords = vec3(4.98,-402.98,39.48 ), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_134" },  
        { Coords = vec3(7.72,-392.49,39.45), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_134" },  
        { Coords = vec3(133.77,-415.78,41.27), Hash = 741314661, Lock = true, Distance = 5.5, Perm = "QG_134" },  
        { Coords = vec3(148.78,-345.4,44.82), Hash = -1551033277, Lock = true, Distance = 5.5, Perm = "QG_134" },  

    },
    CHESTS = {
        
        { ["Name"] = "QG_134-2", ["Coords"] = vec3(146.46,-364.53,61.6), ["Mode"] = "2" },
        { ["Name"] = "QG_134-3", ["Coords"] = vec3(134.39,-345.42,50.33), ["Mode"] = "2" },
        { ["Name"] = "QG_134-4", ["Coords"] = vec3(131.12,-352.89,44.94), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-122.77,-375.33,50.36), ["Mode"] = "Personal" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(133.34,-346.78,44.94), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        -- { vec3(1375.19,-2336.52,61.39),"QG_134" },
        
    },
    INTERPHONE = {
        
        -- {vector3(-302.98,-1517.59,28.41),"QG_122"},
        
    },
    SURVIVAL = {
        
       ["QG_134"] = vec3(124.36,-389.14,44.94),
        
    },
    WORLD_PVP = {
        
       {vector4(139.28,-396.81,44.94,232.45),"QG_134"},
        
    },
    RISK_ZONES = {
        
        {vec3(124.36,-389.14,44.94),"QG_134"}, -- QG_134
        
    },
    RDM_ZONES = {
        
        ["QG_134"] = {
            {
                vector2(38.21,-301.93),
                vector2(167.28,-345.82),
                vector2(118.86,-468.69),
                vector2(-16.6,-459.5)
            }, {
                name="QG_134",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_135"] = {   
    GARAGES = {
        --QG_135 
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2240.81,3267.62,47.93,112.08),
                ["Positions"] = {
                    [1] = vector4(2244.39,3256.68,47.98,133.96),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2170.05,3365.37,45.55,301.81),
                ["Positions"] = {
                    [1] = vector4(2178.70,3365.12,45.41,296.61),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_135",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2180.45,3373.26,45.35,245.39),
                ["Positions"] = {
                    [1] = vector4(2185.18,3369.13,45.46,298.95),
                },
            },
        },
            {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_135",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2153.54,3479.97,45.26,198.26),
                ["Positions"] = {
                    [1] = vector4(2152.13,3489.35,45.24,8.26),
                },
            },
        },
    },    
    DOORS = {
        
        { Coords = vec3(2154.78,3487.46,45.33), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_135" },
        { Coords = vec3(2240.72,3261.95,47.99), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_135" },
        { Coords = vec3(2308.92,3461.67,63.52), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_135" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_135-2", ["Coords"] = vec3(2235.69,3348.09,53.28), ["Mode"] = "2" },
        { ["Name"] = "QG_135-3", ["Coords"] = vec3(2236.77,3359.89,53.28), ["Mode"] = "2" },
        { ["Name"] = "QG_135-4", ["Coords"] = vec3(2229.38,3327.26,45.94), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2223.64,3359.79,53.28), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2206.53,3375.06,53.28),"QG_135" },
        
    },
    INTERPHONE = {
        
        {vector3(2232.46,3260.23,48.00),"QG_135"},
        
    },
    SURVIVAL = {
        
       ["QG_135"] = vec3(2216.85,3388.51,58.53),
        
    },
    WORLD_PVP = {
        
       {vector4(2220.00,3325.74,45.69,300.65),"QG_135"},
        
    },
    RISK_ZONES = {
        
        {vec3(2216.85,3388.51,58.53),"QG_135"}, -- QG_135
        
    },
    RDM_ZONES = {
        
        ["QG_135"] = {
            {
                vector2(2139.34,3486.53),
                vector2(2188.46,3506.46),
                vector2(2245.75,3459.79),
                vector2(2316.39,3482.99),
                vector2(2318.48,3443.46),
                vector2(2271.57,3422.0),
                vector2(2257.43,3293.87),
                vector2(2294.84,3259.22),
                vector2(2243.81,3250.69),
                vector2(2181.54,3255.93),
                vector2(2145.53,3360.77),
                vector2(2146.11,3438.2),
                vector2(2139.34,3486.53)
            }, {
                name="QG_135",
                --debugGrid=true,
            },
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = true,
        ["Alexandria"] = false,
    }
}
ORGS_CONFIG["QG_136"] = { -- so santa
    GARAGES = {
        -- QG_136
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-948.01,-1515.65,5.18,124.73),
                ["Positions"] = {
                    [1] = vector4(-955.70,-1520.93,5.05,133.78),
                },
            },
        },

        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1012.11,-1458.51,5.06,30.34),
                ["Positions"] = {
                    [1] = vector4(-1012.96,-1463.01,5.02,112.30),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_136",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1010.83,-1434.50,5.06,127.23),
                ["Positions"] = {
                    [1] = vector4(-1021.03,-1429.66,5.06,92.24),
                },
            },
        },

    },    
    DOORS = {
        { Coords = vec3(-1006.94,-1438.19,5.00), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_136" },
        { Coords = vec3(-1003.01,-1448.69,5.08), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_136" },

        { Coords = vec3(-1008.65,-1563.29,5.24), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_136" },
        { Coords = vec3(-1013.02,-1556.30,5.17), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_136" },

        { Coords = vec3(-895.94,-1425.35,5.16), Hash = 91564889, Lock = true, Distance = 5.5, Perm = "QG_136" },
        { Coords = vec3(-867.07,-1503.08,5.17), Hash = 91564889, Lock = true, Distance = 5.5, Perm = "QG_136" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_136-2", ["Coords"] = vec3(-879.91,-1462.49,7.53), ["Mode"] = "2" },
        { ["Name"] = "QG_136-2", ["Coords"] = vec3(-965.55,-1564.54,5.02), ["Mode"] = "2" },
        { ["Name"] = "QG_136-3", ["Coords"] = vec3(-867.66,-1458.15,7.53), ["Mode"] = "2" },
        { ["Name"] = "QG_136-3", ["Coords"] = vec3(-947.35,-1551.09,5.18), ["Mode"] = "2" },
        { ["Name"] = "QG_136-4", ["Coords"] = vec3(-865.78,-1451.72,7.53), ["Mode"] = "2" },
        { ["Name"] = "QG_136-4", ["Coords"] = vec3(-935.59,-1523.16,5.24), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-881.36,-1443.53,7.53), ["Mode"] = "Personal" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-952.25,-1552.87,5.18), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-875.53,-1458.98,7.53),"QG_136" },   
        { vec3(-957.19,-1566.89,5.02),"QG_136" },      
    },
    INTERPHONE = {
        
        -- {vector3(-956.75,-1483.56,5.16),"QG_136"},
        
    },
    SURVIVAL = {
        
        ["QG_136"] = vec3(-923.98,-1467.25,5.9),
        
    },
    WORLD_PVP = {
        
        {vector4(-943.33,-1485.53,6.79,14.18),"QG_136"},
        
    },
    RISK_ZONES = {
        
        {vec3(-923.98,-1467.25,5.9),"QG_136"}, -- QG_136
        
    },
    RDM_ZONES = {
        ["QG_136"] = {
            {
                vector2(-822.76,-1503.77),
                vector2(-972.80,-1659.06),
                vector2(-1085.36,-1452.52),
                vector2(-868.07,-1367.19)
            }, {
                name="QG_136",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_137"] = { -- so santa
    GARAGES = {
        -- QG_137
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(627.87,2068.41,110.33,357.21),
                ["Positions"] = {
                    [1] = vector4(627.24,2071.31,110.18,90.16),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_137",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(623.06,2083.36,110.28,217.01),
                ["Positions"] = {
                    [1] = vector4(625.39,2077.74,110.28,84.08),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-1006.94,-1438.19,5.00), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_137" },
        -- { Coords = vec3(-1003.01,-1448.69,5.08), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_137" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_137-2", ["Coords"] = vec3(641.58,2067.15,110.48), ["Mode"] = "2" },
        { ["Name"] = "QG_137-3", ["Coords"] = vec3(641.79,2058.61,110.48), ["Mode"] = "2" },
        { ["Name"] = "QG_137-4", ["Coords"] = vec3(650.76,2061.26,110.28), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(660.76,2072.13,110.28), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(646.20,2039.97,110.28),"QG_137" },    
    },
    INTERPHONE = {
        
        {vector3(618.40,2081.85,110.30),"QG_137"},
        
    },
    SURVIVAL = {
        
        ["QG_137"] = vec3(628.95,2049.25,111.28),
        
    },
    WORLD_PVP = {
        
        {vector4(619.51,2051.32,110.28,261.70),"QG_137"},
        
    },
    RISK_ZONES = {
        
        {vec3(628.95,2049.25,111.28),"QG_137"}, -- QG_137
        
    },
    RDM_ZONES = {
        ["QG_137"] = {
            -- {
            --     vector2(-822.76,-1503.77),
            --     vector2(-972.80,-1659.06),
            --     vector2(-1085.36,-1452.52),
            --     vector2(-868.07,-1367.19)
            -- }, {
            --     name="QG_137",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_138"] = { -- so santa
    GARAGES = {
        -- QG_138
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(659.16,943.76,247.63,90.19 ),
                ["Positions"] = {
                    [1] = vector4(662.69,942.53,247.58,347.82 ),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_138",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(665.33,931.99,247.58,345.75),
                ["Positions"] = {
                    [1] = vector4(666.50,941.10,247.65,351.50 ),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-1006.94,-1438.19,5.00), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_138" },
        -- { Coords = vec3(-1003.01,-1448.69,5.08), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_138" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_138-2", ["Coords"] = vec3(669.90,902.62,242.53), ["Mode"] = "2" },
        { ["Name"] = "QG_138-3", ["Coords"] = vec3(647.06,931.55,247.78), ["Mode"] = "2" },
        { ["Name"] = "QG_138-4", ["Coords"] = vec3(648.40,921.89,247.58), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(659.44,913.45,247.58), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(657.46,910.38,247.58),"QG_138" },    
    },
    INTERPHONE = {
        
        {vector3(673.32,951.18,247.91),"QG_138"},
        
    },
    SURVIVAL = {
        
        ["QG_138"] = vec3(641.21,939.99,247.58),
        
    },
    WORLD_PVP = {
        
        {vector4(643.25,954.57,247.58,0.0),"QG_138"},
        
    },
    RISK_ZONES = {
        
        {vec3(641.21,939.99,247.58),"QG_138"}, -- QG_138
        
    },
    RDM_ZONES = {
        ["QG_138"] = {
            -- {
            --     vector2(-822.76,-1503.77),
            --     vector2(-972.80,-1659.06),
            --     vector2(-1085.36,-1452.52),
            --     vector2(-868.07,-1367.19)
            -- }, {
            --     name="QG_138",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_139"] = { 
    GARAGES = {
        -- QG_139
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1410.39,4735.18,135.94,38.99),
                ["Positions"] = {
                    [1] = vector4(1413.72,4740.92,135.94,279.13),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1669.84,4800.36,41.99,266.52),
                ["Positions"] = {
                    [1] = vector4(1670.73,4816.55,42.01,189.44),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_139",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1402.07,4734.73,135.94,358.70),
                ["Positions"] = {
                    [1] = vector4(1399.05,4740.89,135.94,271.50),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_139",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1669.65,4795.14,41.98,281.59),
                ["Positions"] = {
                    [1] = vector4(1672.69,4794.50,42.00,181.52),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(1667.05,4806.37,42.21), Hash = -1684988513, Lock = true, Distance = 5.5, Perm = "QG_139" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_139-2", ["Coords"] = vec3(1394.87,4715.17,140.24), ["Mode"] = "2" },
        { ["Name"] = "QG_139-3", ["Coords"] = vec3(1414.65,4714.01,140.24), ["Mode"] = "2" },
        { ["Name"] = "QG_139-4", ["Coords"] = vec3(1417.34,4716.72,134.84), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1428.52,4712.34,134.84), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1431.45,4714.53,129.74),"QG_139" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_139"},
        
    },
    SURVIVAL = {
        
        ["QG_139"] = vec3(1431.04,4688.00,133.99),
        
    },
    WORLD_PVP = {
        
        -- {vector4(643.25,954.57,247.58),"QG_139"},
        
    },
    RISK_ZONES = {
        
        {vec3(1431.04,4688.00,133.99),"QG_139"}, -- QG_139
        
    },
    RDM_ZONES = {
        ["QG_139"] = {
            -- {
            --     vector2(-822.76,-1503.77),
            --     vector2(-972.80,-1659.06),
            --     vector2(-1085.36,-1452.52),
            --     vector2(-868.07,-1367.19)
            -- }, {
            --     name="QG_139",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_140"] = { 
    GARAGES = {
        -- QG_140
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(188.67,1674.76,230.54,201.61),
                ["Positions"] = {
                    [1] = vector4(189.32,1672.23,230.54,117.30),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(170.77,1667.55,229.54,195.48),
                ["Positions"] = {
                    [1] = vector4(170.64,1664.54,229.52,111.84),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_140",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(185.62,1675.48,230.41,196.31),
                ["Positions"] = {
                    [1] = vector4(185.88,1664.49,230.18,111.88),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(179.42,1677.88,230.13), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_140" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_140-2", ["Coords"] = vec3(176.18,1719.70,224.14), ["Mode"] = "2" },
        { ["Name"] = "QG_140-3", ["Coords"] = vec3(184.91,1711.79,231.07), ["Mode"] = "2" },
        { ["Name"] = "QG_140-4", ["Coords"] = vec3(187.91,1704.05,227.39), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(189.37,1709.90,227.39), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(169.55,1704.97,227.39),"QG_140" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_140"},
        
    },
    SURVIVAL = {
        
        ["QG_140"] = vec3(177.29,1697.01,227.39),
        
    },
    WORLD_PVP = {
        
        -- {vector4(643.25,954.57,247.58),"QG_140"},
        
    },
    RISK_ZONES = {
        
        {vec3(177.29,1697.01,227.39),"QG_140"}, -- QG_140
        
    },
    RDM_ZONES = {
        ["QG_140"] = {
            -- {
            --     vector2(-822.76,-1503.77),
            --     vector2(-972.80,-1659.06),
            --     vector2(-1085.36,-1452.52),
            --     vector2(-868.07,-1367.19)
            -- }, {
            --     name="QG_140",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_141"] = { 
    GARAGES = {
        -- QG_141
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(3420.09,4888.36,35.14,132.18),
                ["Positions"] = {
                    [1] = vector4(3421.97,4883.93,35.06,48.74),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(3429.40,4913.29,36.00,130.61),
                ["Positions"] = {
                    [1] = vector4(3421.03,4911.19,36.00,131.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_141",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3409.85,4900.74,35.55,111.38),
                ["Positions"] = {
                    [1] = vector4(3406.99,4897.53,35.67,46.17),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_141",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(3434.75,4907.61,36.00,133.48),
                ["Positions"] = {
                    [1] = vector4(3432.91,4900.10,36.00,132.67),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(3419.39,4897.69,35.99), Hash = 1581555540, Lock = true, Distance = 5.5, Perm = "QG_141" },
        { Coords = vec3(3419.39,4897.69,35.99), Hash = 1581555540, Lock = true, Distance = 5.5, Perm = "QG_141" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_141-2", ["Coords"] = vec3(3418.87,4949.86,36.00), ["Mode"] = "2" },
        { ["Name"] = "QG_141-3", ["Coords"] = vec3(3422.28,4946.40,36.00), ["Mode"] = "2" },
        { ["Name"] = "QG_141-4", ["Coords"] = vec3(3456.33,4924.66,35.80), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(3447.75,4936.08,35.80), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(3452.83,4900.36,36.00),"QG_141" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_141"},
        
    },
    SURVIVAL = {
        
        ["QG_141"] = vec3(3443.15,4922.17,35.80),
        
    },
    WORLD_PVP = {
        
        -- {vector4(643.25,954.57,247.58),"QG_141"},
        
    },
    RISK_ZONES = {
        
        {vec3(3443.15,4922.17,35.80),"QG_141"}, -- QG_141
        
    },
    RDM_ZONES = {
        ["QG_141"] = {
            -- {
            --     vector2(-822.76,-1503.77),
            --     vector2(-972.80,-1659.06),
            --     vector2(-1085.36,-1452.52),
            --     vector2(-868.07,-1367.19)
            -- }, {
            --     name="QG_141",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_142"] = { 
    GARAGES = {
        -- QG_142
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2977.66,2184.15,41.90,220.58),
                ["Positions"] = {
                    [1] = vector4(-2977.22,2177.95,41.90,141.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2965.09,2118.47,41.16,233.20),
                ["Positions"] = {
                    [1] = vector4(-2965.87,2111.92,41.20,146.51),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_142",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2976.12,2161.79,41.90,32.03),
                ["Positions"] = {
                    [1] = vector4(-2974.67,2171.38,41.90,139.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_142",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2958.79,2126.59,41.13,231.94),
                ["Positions"] = {
                    [1] = vector4(-2948.24,2131.50,41.00,315.08),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-1006.94,-1438.19,5.00), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_142" },
        { Coords = vec3(-2965.02,2125.14,41.62), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_142" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_142-2", ["Coords"] = vec3(-2986.22,2188.07,45.10), ["Mode"] = "2" },
        { ["Name"] = "QG_142-3", ["Coords"] = vec3(-3009.58,2178.13,45.10), ["Mode"] = "2" },
        { ["Name"] = "QG_142-4", ["Coords"] = vec3(-2992.19,2185.95,41.50), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2984.24,2188.50,41.50), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2967.62,2158.11,41.99),"QG_142" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_142"},
        
    },
    SURVIVAL = {
        
        ["QG_142"] = vec3(-2987.42,2185.87,41.53),
        
    },
    WORLD_PVP = {
        
        -- {vector4(643.25,954.57,247.58),"QG_142"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2987.42,2185.87,41.53),"QG_142"}, -- QG_142
        
    },
    RDM_ZONES = {
        ["QG_142"] = {
            -- {
            --     vector2(-822.76,-1503.77),
            --     vector2(-972.80,-1659.06),
            --     vector2(-1085.36,-1452.52),
            --     vector2(-868.07,-1367.19)
            -- }, {
            --     name="QG_142",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_143"] = { 
    GARAGES = {
        -- QG_143
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(96.52,-1319.80,29.32,211.01),
                ["Positions"] = {
                    [1] = vector4(87.89,-1314.73,29.36,32.14),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(116.19,-1348.92,29.31,48.04),
                ["Positions"] = {
                    [1] = vector4(115.46,-1353.41,29.32,225.99),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_143",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(168.01,-1270.10,29.21,174.25),
                ["Positions"] = {
                    [1] = vector4(176.00,-1276.29,29.20,250.87),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_143",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(172.98,-1282.05,35.02,156.90),
                ["Positions"] = {
                    [1] = vector4(176.11,-1287.48,34.96,70.29),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(128.88,-1298.7,29.23), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(99.7,-1295.65,29.32), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(95.91,-1285.62,29.32), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(101.68,-1305.85,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(121.17,-1294.66,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(88.22,-1284.29,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(108.85,-1271.88,21.11), Hash = 401003935, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(117.01,-1321.17,-84.25), Hash = 634417522, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(130.17,-1295.23,-84.25), Hash = 634417522, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(144.51,-1320.51,-84.25), Hash = 634417522, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(142.61,-1305.5,-84.25), Hash = 272844368, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(142.84,-1312.36,-84.25), Hash = 272844368, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(122.08,-1300.62,29.28), Hash = -884268790, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(117.14,-1304.61,29.32), Hash = 488457389, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(82.33,-1284.29,29.28), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(174.48,-1331.96,29.3), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(196.05,-1283.47,29.28), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_143" },
        { Coords = vec3(106.72,-1326.51,29.45), Hash = 725274945 , Lock = true, Distance = 5.5, Perm = "QG_143" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_143-2", ["Coords"] = vec3(89.98,-1290.84,29.3), ["Mode"] = "2" },
        { ["Name"] = "QG_143-3", ["Coords"] = vec3(120.65,-1301.36,21.11), ["Mode"] = "2" },
        { ["Name"] = "QG_143-4", ["Coords"] = vec3(98.8,-1310.41,21.13), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(122.73,-1297.84,29.32), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(145.42,-1323.46,-84.25),"QG_143" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_143"},
        
    },
    SURVIVAL = {
        
        ["QG_143"] = vec3(141.57,-1292.93,29.32),
        
    },
    WORLD_PVP = {
        
        {vector4(130.17,-1324.89,29.20,228.05),"QG_143"},
        
    },
    RISK_ZONES = {
        
        {vec3(141.57,-1292.93,29.32),"QG_143"}, -- QG_143
        
    },
    RDM_ZONES = {
        ["QG_143"] = {
            {
                vector2(84.85, -1291.29),
                vector2(153.41, -1256.44),
                vector2(206.82, -1245.45),
                vector2(186.74, -1318.56),
                vector2(151.89, -1367.05),
                vector2(110.23, -1336.74)
            }, {
                name="QG_143",
                --debugGrid=true,
            },    
        }  
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_144"] = { 
    GARAGES = {
        -- QG_144
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2192.27,4270.21,48.63,124.86),
                ["Positions"] = {
                    [1] = vector4(-2196.86,4259.53,47.41,121.82),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2206.68,4275.89,48.24,52.22),
                ["Positions"] = {
                    [1] = vector4(-2217.63,4283.49,46.79,150.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_144",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2219.67,4252.89,46.59,57.94),
                ["Positions"] = {
                    [1] = vector4( -2232.56,4258.97,45.23,141.66),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_144",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2207.21,4245.47,47.67,68.64),
                ["Positions"] = {
                    [1] = vector4(-2212.92,4247.68,46.70,311.91),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-2212.45,4263.76,47.31), Hash = 802611527, Lock = true, Distance = 5.5, Perm = "QG_144" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_144-2", ["Coords"] = vec3(-2187.78,4280.52,49.18), ["Mode"] = "2" },
        { ["Name"] = "QG_144-3", ["Coords"] = vec3(-2207.43,4241.95,48.31), ["Mode"] = "2" },
        { ["Name"] = "QG_144-4", ["Coords"] = vec3(-2192.48,4283.98,49.17), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2184.59,4281.53,49.18), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2179.53,4292.21,49.18),"QG_144" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_144"},
        
    },
    SURVIVAL = {
        
        ["QG_144"] = vec3(-2174.52,4272.32,48.99),
        
    },
    WORLD_PVP = {
        
        {vector4(-2193.70,4248.32,47.92,220.64),"QG_144"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2174.52,4272.32,48.99),"QG_144"}, -- QG_144
        
    },
    RDM_ZONES = {
        ["QG_144"] = {
            -- {
            --     vector2(70.08, -1276.89),
            --     vector2(79.92, -1298.86),
            --     vector2(111.36, -1345.45),
            --     vector2(150.38, -1373.48),
            --     vector2(165.53, -1362.88),
            --     vector2(195.08, -1309.47),
            --     vector2(203.79, -1276.52),
            --     vector2(165.53, -1267.80),
            --     vector2(144.32, -1260.98),
            --     vector2(115.15, -1273.86)
            -- }, {
            --     name="QG_144",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_145"] = { 
    GARAGES = {
        -- QG_145
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(153.82,-128.58,60.76,158.90),
                ["Positions"] = {
                    [1] = vector4(104.84,-122.22,55.08,260.79),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_145",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(138.48,-135.79,68.22,158.75),
                ["Positions"] = {
                    [1] = vector4(123.94,-109.89,60.76,59.90),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-1006.94,-1438.19,5.00), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_145" },
        -- { Coords = vec3(-1003.01,-1448.69,5.08), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_145" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_145-2", ["Coords"] = vec3(116.84,-99.15,49.57), ["Mode"] = "2" },
        { ["Name"] = "QG_145-3", ["Coords"] = vec3(120.49,-112.76,49.57), ["Mode"] = "2" },
        { ["Name"] = "QG_145-4", ["Coords"] = vec3(119.81,-103.59,49.57), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(109.98,-150.67,54.85), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(118.49,-94.95,49.57),"QG_145" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_145"},
        
    },
    SURVIVAL = {
        
        ["QG_145"] = vec3(103.13,-142.5,54.74),
        
    },
    WORLD_PVP = {
        
        -- {vector4(-2193.70,4248.32,47.92,220.64),"QG_145"},
        
    },
    RISK_ZONES = {
        
        {vec3(103.13,-142.5,54.74),"QG_145"}, -- QG_145
        
    },
    RDM_ZONES = {
        ["QG_145"] = {
            -- {
            --     vector2(70.08, -1276.89),
            --     vector2(79.92, -1298.86),
            --     vector2(111.36, -1345.45),
            --     vector2(150.38, -1373.48),
            --     vector2(165.53, -1362.88),
            --     vector2(195.08, -1309.47),
            --     vector2(203.79, -1276.52),
            --     vector2(165.53, -1267.80),
            --     vector2(144.32, -1260.98),
            --     vector2(115.15, -1273.86)
            -- }, {
            --     name="QG_145",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_146"] = { 
    GARAGES = {
        -- QG_146
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-680.03,5808.3,17.39,161.58),
                ["Positions"] = {
                    [1] = vector4(-688.48,5805.1,16.88,65.2),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-709.05,5802.04,17.44,65.2),
                ["Positions"] = {
                    [1] = vector4(-712.37,5802.72,17.02,150.24),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_146",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(138.48,-135.79,68.22,158.75),
                ["Positions"] = {
                    [1] = vector4(123.94,-109.89,60.76,59.90),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_146",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-702.55,5814.68,17.24,153.08),
                ["Positions"] = {
                    [1] = vector4(-706.27,5824.21,16.73,155.91),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-704.07,5807.02,17.27), Hash = 154407989, Lock = true, Distance = 5.5, Perm = "QG_146" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_146-2", ["Coords"] = vec3(-712.23,5777.37,18.08), ["Mode"] = "2" },
        { ["Name"] = "QG_146-3", ["Coords"] = vec3(-685.49,5768.59,18.08), ["Mode"] = "2" },
        { ["Name"] = "QG_146-4", ["Coords"] = vec3(-696.09,5820.51,17.36), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-700.24,5783.48,18.08), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-704.29,5780.1,22.49),"QG_146" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_146"},
        
    },
    SURVIVAL = {
        
        ["QG_146"] = vec3(-692.95,5781.29,18.08),
        
    },
    WORLD_PVP = {
        
        {vector4(-672.14,5798.22,17.44,62.37),"QG_146"},
        
    },
    RISK_ZONES = {
        
        {vec3(-692.95,5781.29,18.08),"QG_146"}, -- QG_146
        
    },
    RDM_ZONES = {
        ["QG_146"] = {
            -- {
            --     vector2(70.08, -1276.89),
            --     vector2(79.92, -1298.86),
            --     vector2(111.36, -1345.45),
            --     vector2(150.38, -1373.48),
            --     vector2(165.53, -1362.88),
            --     vector2(195.08, -1309.47),
            --     vector2(203.79, -1276.52),
            --     vector2(165.53, -1267.80),
            --     vector2(144.32, -1260.98),
            --     vector2(115.15, -1273.86)
            -- }, {
            --     name="QG_146",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_147"] = { 
    GARAGES = {
        -- QG_147
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1143.19,-1772.58,4.7,22.68),
                ["Positions"] = {
                    [1] = vector4(-1141.45,-1759.45,4.08,308.98),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1144.72,-1675.17,4.85,308.98),
                ["Positions"] = {
                    [1] = vector4(-1139.48,-1674.89,4.23,215.44),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_147",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1124.57,-1709.39,4.7,218.27),
                ["Positions"] = {
                    [1] = vector4(-1117.91,-1716.93,4.63,306.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_147",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1105.52,-1742.21,4.53,36.86),
                ["Positions"] = {
                    [1] = vector4(-1103.36,-1727.53,4.63,308.98),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-1091.82,-1714.95,4.53), Hash = -154407989, Lock = true, Distance = 5.5, Perm = "QG_147" },
        { Coords = vec3(-1226.62,-1752.68,4.73), Hash = 1914083887, Lock = true, Distance = 5.5, Perm = "QG_147" },
        { Coords = vec3(-1279.39,-1669.89,4.47), Hash = 137809488, Lock = true, Distance = 5.5, Perm = "QG_147" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_147-2", ["Coords"] = vec3(-1166.65,-1623.45,9.32), ["Mode"] = "2" },
        { ["Name"] = "QG_147-3", ["Coords"] = vec3(-1194.75,-1620.05,9.32), ["Mode"] = "2" },
        { ["Name"] = "QG_147-4", ["Coords"] = vec3(-1186.23,-1789.92,5.56), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1163.68,-1780.81,5.56), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1165.74,-1620.68,9.32),"QG_147" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_147"},
        
    },
    SURVIVAL = {
        
        ["QG_147"] = vec3(-1180.46,-1771.78,5.56),
        
    },
    WORLD_PVP = {
        
        {vector4(-1186.44,-1676.88,4.7,226.78),"QG_147"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1180.46,-1771.78,5.56),"QG_147"}, -- QG_147
        
    },
    RDM_ZONES = {
        ["QG_147"] = {
            -- {
            --     vector2(70.08, -1276.89),
            --     vector2(79.92, -1298.86),
            --     vector2(111.36, -1345.45),
            --     vector2(150.38, -1373.48),
            --     vector2(165.53, -1362.88),
            --     vector2(195.08, -1309.47),
            --     vector2(203.79, -1276.52),
            --     vector2(165.53, -1267.80),
            --     vector2(144.32, -1260.98),
            --     vector2(115.15, -1273.86)
            -- }, {
            --     name="QG_147",
            --     --debugGrid=true,
            -- },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_148"] = { 
    GARAGES = {
        -- QG_148
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1395.41,-585.41,30.27,33.31),
                ["Positions"] = {
                    [1] = vector4(-1401.16,-585.87,30.25,303.29),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1394.48,-641.83,28.67,127.60),
                ["Positions"] = {
                    [1] = vector4(-1403.66,-641.33,28.67,125.50),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_148",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1400.59,-588.79,30.32,30.26),
                ["Positions"] = {
                    [1] = vector4(-1401.16,-585.87,30.25,303.29),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_148",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1402.97,-634.95,28.67,143.68),
                ["Positions"] = {
                    [1] = vector4(-1403.66,-641.33,28.67,125.50),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-1006.94,-1438.19,5.00), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_148" },
        -- { Coords = vec3(-1003.01,-1448.69,5.08), Hash = 725274945, Lock = true, Distance = 5.5, Perm = "QG_148" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_148-2", ["Coords"] = vec3(-1369.18,-624.53,30.32), ["Mode"] = "2" },
        { ["Name"] = "QG_148-3", ["Coords"] = vec3(-1381.71,-595.53,30.32), ["Mode"] = "2" },
        { ["Name"] = "QG_148-4", ["Coords"] = vec3(-1380.53,-595.82,30.32), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1363.59,-625.10,30.32), ["Mode"] = "Personal" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1382.78,-588.24,30.32), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1393.70,-631.07,28.70),"QG_148" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_148"},
        
    },
    SURVIVAL = {
        
        ["QG_148"] = vec3(-1382.79,-592.82,30.32),
        
    },
    WORLD_PVP = {
        
        {vector4(-1397.21,-647.56,28.67,218.99),"QG_148"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1382.79,-592.82,30.32),"QG_148"}, -- QG_148
        
    },
    RDM_ZONES = {
        ["QG_148"] = {
            {
                vector2(-1384.88,-578.99),
                vector2(-1418.84,-598.08),
                vector2(-1418.18, -608.71),
                vector2(-1456.06, -632.20),
                vector2(-1416.79,-602.71),
                vector2(-1450.47,-624.89),
                vector2(-1422.44,-665.17),
                vector2(-1405.52,-649.10),
               vector2(-1397.67,-659.79),
               vector2(-1353.95,-628.07)
            }, {
                name="QG_148",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_149"] = { 
    GARAGES = {
        -- QG_149
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_149",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2637.86,1311.42,144.92,354.29),
                ["Positions"] = {
                    [1] = vector4(-2631.8,1316.02,144.32,354.29),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-2653.02,1326.7,147.44), Hash = -1249591818, Lock = true, Distance = 5.5, Perm = "QG_149" },
        { Coords = vec3(-2652.58,1308.02,146.64), Hash = -1573772550, Lock = true, Distance = 5.5, Perm = "QG_149" },
        { Coords = vec3(-2667.32,1326.76,147.44), Hash = 1901183774, Lock = true, Distance = 5.5, Perm = "QG_149" },
        { Coords = vec3(-2666.91,1336.19,152.0), Hash = -1821777987, Lock = true, Distance = 5.5, Perm = "QG_149" },
        { Coords = vec3(-2667.01,1330.42,147.44), Hash = -147325430, Lock = true, Distance = 5.5, Perm = "QG_149" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_149-2", ["Coords"] = vec3(-2679.91,1336.55,144.25), ["Mode"] = "2" },
        { ["Name"] = "QG_149-3", ["Coords"] = vec3(-2656.45,1335.54,147.44), ["Mode"] = "2" },
        { ["Name"] = "QG_149-4", ["Coords"] = vec3(-2665.52,1344.3,147.44), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2673.75,1314.62,147.44), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2679.53,1328.06,144.25),"QG_149" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_149"},
        
    },
    SURVIVAL = {
        
        ["QG_149"] = vec3(-2665.17,1326.44,147.37),
        
    },
    WORLD_PVP = {
        
        -- {vector4(-1397.21,-647.56,28.67,218.99),"QG_149"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2665.17,1326.44,147.37),"QG_149"}, -- QG_149
        
    },
    RDM_ZONES = {
        ["QG_149"] = {
            {
                vector2(-2637.42,1296.94),
                vector2(-2633.56,1346.6),
                vector2(-2685.53,1347.0),
                vector2(-2685.24,1297.98)
            }, {
                name="QG_149",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_150"] = { 
    GARAGES = {
        -- QG_150
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2049.58,3356.72,45.27,255.09),
                ["Positions"] = {
                    [1] = vector4(2056.44,3369.31,45.44,173.31),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1970.30,3303.11,45.51,148.46),
                ["Positions"] = {
                    [1] = vector4(1966.53,3302.87,45.52,50.06),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_150",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1975.25,3333.79,47.30,217.68),
                ["Positions"] = {
                    [1] = vector4(1981.35,3325.81,47.30,88.38),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_150",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2051.88,3368.93,45.42,277.20),
                ["Positions"] = {
                    [1] = vector4(2056.44,3369.31,45.44,173.31),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(1963.75,3310.38,45.39), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_150" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_150-2", ["Coords"] = vec3(2021.53,3370.16,51.75), ["Mode"] = "2" },
        { ["Name"] = "QG_150-3", ["Coords"] = vec3(2015.83,3338.06,46.21), ["Mode"] = "2" },
        { ["Name"] = "QG_150-4", ["Coords"] = vec3(2010.18,3359.42,46.60), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2023.64,3378.80,46.60), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        -- { vec3(-2679.53,1328.06,144.25),"QG_150" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_150"},
        
    },
    SURVIVAL = {
        
        ["QG_150"] = vec3(1995.60,3348.21,46.30),
        
    },
    WORLD_PVP = {
        
        {vector4(1975.70,3406.12,46.10,231.12),"QG_150"},
        
    },
    RISK_ZONES = {
        
        {vec3(1995.60,3348.21,46.30),"QG_150"}, -- QG_150
        
    },
    RDM_ZONES = {
        ["QG_150"] = {
            {
                vector2(1975.38, 3283.71),
                vector2(1943.94, 3306.44),
                vector2(2019.32, 3421.59),
                vector2(2023.48, 3407.20),
                vector2(2035.98, 3399.24),
                vector2(2048.48, 3365.91),
                vector2(2045.08, 3350.38),
                vector2(2020.45, 3298.86),
                vector2(2001.14, 3298.11),
                vector2(1979.92, 3287.50)
            }, {
                name="QG_150",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_151"] = { 
    GARAGES = {
        -- QG_151
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3214.37,1116.40,10.17,248.59),
                ["Positions"] = {
                    [1] = vector4(-3205.17,1122.61,10.09,149.40),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3465.65,1284.97,7.64,37.13),
                ["Positions"] = {
                    [1] = vector4(-3473.12,1285.82,7.58,248.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_151",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3469.20,1280.35,7.63,37.13),
                ["Positions"] = {
                    [1] = vector4(-3473.12,1285.82,7.58,248.23),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_151",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3211.45,1124.66,9.82,243.36),
                ["Positions"] = {
                    [1] = vector4(-3205.17,1122.61,10.09,149.40),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-2653.02,1326.7,147.44), Hash = -1249591818, Lock = true, Distance = 5.5, Perm = "QG_151" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_151-2", ["Coords"] = vec3(-3523.30,1288.33,13.26), ["Mode"] = "2" },
        { ["Name"] = "QG_151-3", ["Coords"] = vec3(-3520.56,1301.08,13.26), ["Mode"] = "2" },
        { ["Name"] = "QG_151-4", ["Coords"] = vec3(-3516.53,1286.32,8.00), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3517.64,1278.07,8.00), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3519.96,1281.71,13.26),"QG_151" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_151"},
        
    },
    SURVIVAL = {
        
        ["QG_151"] = vec3(-3486.20,1300.78,7.55),
        
    },
    WORLD_PVP = {
        
        {vector4(-3540.11,1324.90,7.55,205.79),"QG_151"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3486.20,1300.78,7.55),"QG_151"}, -- QG_151
        
    },
    RDM_ZONES = {
        ["QG_151"] = {
            {
                vector2(-3483.12,1204.44),
                vector2(-3463.59,1228.40),
                vector2(-3241.07,1129.06),
                vector2(-3237.98,1136.08),
                vector2(-3452.44,1232.17),
                vector2(-3420.10,1307.03),
                vector2(-3544.14,1378.63),
                vector2(-3588.11,1317.48),
                vector2(-3604.24,1278.04),
                vector2(-3593.68,1260.65),
                vector2(-3600.16,1238.97),
                vector2(-3503.05,1206.64)
            }, {
                name="QG_151",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_152"] = { 
    GARAGES = {
        -- QG_152
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3495.15,1248.59,7.55,247.86),
                ["Positions"] = {
                    [1] = vector4(-3482.36,1240.61,8.88,231.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3214.37,1116.40,10.17,248.59),
                ["Positions"] = {
                    [1] = vector4(-3205.17,1122.61,10.09,149.40),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_152",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3489.26,1238.78,7.55,245.90),
                ["Positions"] = {
                    [1] = vector4(-3495.15,1248.59,7.55,247.86),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_152",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3211.45,1124.66,9.82,243.36),
                ["Positions"] = {
                    [1] = vector4(-3205.17,1122.61,10.09,149.40),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-3239.23,1132.4,9.52), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_152" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_152-2", ["Coords"] = vec3(-3523.30,1288.33,13.26), ["Mode"] = "2" },
        { ["Name"] = "QG_152-3", ["Coords"] = vec3(-3520.56,1301.08,13.26), ["Mode"] = "2" },
        { ["Name"] = "QG_152-4", ["Coords"] = vec3(-3516.53,1286.32,8.00), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3517.64,1278.07,8.00), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3525.03,1284.30,13.26),"QG_152" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_152"},
        
    },
    SURVIVAL = {
        
        ["QG_152"] = vec3(-3486.20,1300.78,7.55),
        
    },
    WORLD_PVP = {
        
        {vector4(-3540.11,1324.90,7.55,205.79),"QG_152"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3486.20,1300.78,7.55),"QG_152"}, -- QG_152
        
    },
    RDM_ZONES = {
        ["QG_152"] = {
            {
                vector2(-3483.12,1204.44),
                vector2(-3463.59,1228.40),
                vector2(-3241.07,1129.06),
                vector2(-3237.98,1136.08),
                vector2(-3452.44,1232.17),
                vector2(-3420.10,1307.03),
                vector2(-3544.14,1378.63),
                vector2(-3588.11,1317.48),
                vector2(-3604.24,1278.04),
                vector2(-3593.68,1260.65),
                vector2(-3600.16,1238.97),
                vector2(-3503.05,1206.64)
            }, {
                name="QG_152",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_153"] = { 
    GARAGES = {
        -- QG_153
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2460.25,4948.61,45.34,135.5),
                ["Positions"] = {
                    [1] = vector4(2449.92,4943.61,45.15,135.5),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(2395.04,4950.38,43.33,144.15),
                ["Positions"] = {
                    [1] = vector4(2389.58,4942.11,42.87,144.15),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_153",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2417.28,5041.86,46.0,322.03),
                ["Positions"] = {
                    [1] = vector4(2399.42,5043.35,45.94,322.03),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_153",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(0.0,0.0,1.0,318.92),
                ["Positions"] = {
                    [1] = vector4(2405.31,4957.29,44.36,318.92),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_153",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(2450.24,4952.8,44.97,307.89),
                ["Positions"] = {
                    [1] = vector4(2468.47,4959.64,45.11,307.89),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(2367.09,4910.52,42.06), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_153" },
        { Coords = vec3(2360.26,4916.96,42.06), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_153" },
        { Coords = vec3(2485.43,4937.31,44.18), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_153" },
        { Coords = vec3(2464.03,5011.24,45.54), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_153" },
        { Coords = vec3(2456.27,5017.65,45.65), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_153" },
        { Coords = vec3(2429.87,4883.28,39.73), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_153" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_153-2", ["Coords"] = vec3(2435.79,4964.67,46.83), ["Mode"] = "2" },
        { ["Name"] = "QG_153-3", ["Coords"] = vec3(2459.57,4980.37,46.83), ["Mode"] = "2" },
        { ["Name"] = "QG_153-4", ["Coords"] = vec3(2439.88,4975.07,46.83), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(2449.61,4970.51,46.83), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(2451.8,4977.55,46.83),"QG_153" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_153"},
        
    },
    SURVIVAL = {
        
        ["QG_153"] = vec3(2440.9,4956.3,45.85),
        
    },
    WORLD_PVP = {
        
        {vector4(2463.37,4975.28,46.59,85.04),"QG_153"},
        
    },
    RISK_ZONES = {
        
        {vec3(2440.9,4956.3,45.85),"QG_153"}, -- QG_153
        
    },
    RDM_ZONES = {
        ["QG_153"] = {
            {
                vector2(2409.47,4867.86),
                vector2(2276.35,5002.48),
                vector2(2365.3,5094.33),
                vector2(2518.4,4965.71)
            }, {
                name="QG_153",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = true,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_154"] = { 
    GARAGES = {
        -- QG_154
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1753.24,366.44,89.65,34.07),
                ["Positions"] = {
                    [1] = vector4(-1761.19,365.53,89.13,22.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1761.37,373.57,88.71,289.31),
                ["Positions"] = {
                    [1] = vector4(-1758.19,377.25,88.73,294.94),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_154",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1747.90,352.33,88.72,101.90),
                ["Positions"] = {
                    [1] = vector4(-1751.80,345.69,88.66,26.85),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_154",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1747.79,355.96,88.72,15.14),
                ["Positions"] = {
                    [1] = vector4(-1754.54,355.04,89.13,308.89),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-3239.23,1132.4,9.52), Hash = 1286535678, Lock = true, Distance = 5.5, Perm = "QG_154" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_154-2", ["Coords"] = vec3(-1726.23,376.28,89.72), ["Mode"] = "2" },
        { ["Name"] = "QG_154-3", ["Coords"] = vec3(-1728.43,372.53,89.72), ["Mode"] = "2" },
        { ["Name"] = "QG_154-4", ["Coords"] = vec3(-1732.56,359.34,89.42), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1718.85,378.31,89.72), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1724.04,378.78,89.72),"QG_154" },    
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_154"},
        
    },
    SURVIVAL = {
        
        ["QG_154"] = vec3(-1738.09,380.96,89.63),
        
    },
    WORLD_PVP = {
        
        {vector4(-1704.72,367.79,87.07,206.64),"QG_154"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1738.09,380.96,89.63),"QG_154"}, -- QG_154
        
    },
    RDM_ZONES = {
        ["QG_154"] = {
            {
                vector2(-1778.71,374.69),
                vector2(-1747.82,319.19),
                vector2(-1733.23,328.63),
                vector2(-1695.86,364.01),
                vector2(-1708.38,402.08),
                vector2(-1713.01,411.57)
            }, {
                name="QG_154",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_155"] = { 
    GARAGES = {
        -- QG_155
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1087.54,374.17,68.84,295.95),
                ["Positions"] = {
                    [1] = vector4(-1080.90,380.30,68.89,182.19),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1092.61,355.57,68.51,9.95),
                ["Positions"] = {
                    [1] = vector4(-1098.47,362.18,68.59,2.99),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_155",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1092.82,365.73,68.68,268.57),
                ["Positions"] = {
                    [1] = vector4(-1082.70,369.40,68.60,271.34),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_155",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1133.73,388.24,70.88,260.49),
                ["Positions"] = {
                    [1] = vector4(-1133.59,398.95,71.05,85.42),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-1091.33,369.72,68.71), Hash = 1930237257, Lock = true, Distance = 5.5, Perm = "QG_155" },
        { Coords = vec3(-1129.19,389.25,70.76), Hash = -2139443164, Lock = true, Distance = 5.5, Perm = "QG_155" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_155-2", ["Coords"] = vec3(-1123.54,362.20,71.31), ["Mode"] = "2" },
        { ["Name"] = "QG_155-3", ["Coords"] = vec3(-1143.57,369.02,71.31), ["Mode"] = "2" },
        { ["Name"] = "QG_155-4", ["Coords"] = vec3(-1138.64,375.76,71.31), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1137.63,365.79,71.31), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1124.03,366.02,71.36),"QG_155" },
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_155"},
        
    },
    SURVIVAL = {
        
        ["QG_155"] = vec3(-1134.22,368.02,78.52),
        
    },
    WORLD_PVP = {
        
        {vector4(-1105.44,346.79,68.48,187.65),"QG_155"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1134.22,368.02,78.52),"QG_155"}, -- QG_155
        
    },
    RDM_ZONES = {
        ["QG_155"] = {
            {
                vector2(-1085.61, 338.64),
                vector2(-1088.64, 377.27),
                vector2(-1121.97, 388.64),
                vector2(-1181.06, 390.91),
                vector2(-1176.52, 351.52),
                vector2(-1162.12, 340.15)
            }, {
                name="QG_155",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = true,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_156"] = { 
    GARAGES = {
        -- QG_156
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2114.14,-333.17,13.01,102.05),
                ["Positions"] = {
                    [1] = vector4(-2108.45,-332.2,13.01,269.3),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-2105.98,-352.66,12.94,206.93),
                ["Positions"] = {
                    [1] = vector4(-2113.12,-357.27,12.92,249.45),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_156",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2084.76,-363.54,12.49,59.53),
                ["Positions"] = {
                    [1] = vector4(-2087.65,-373.1,12.44,238.12),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_156",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2110.18,-295.76,13.04,141.74),
                ["Positions"] = {
                    [1] = vector4(-2104.65,-312.23,13.02,178.59),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_156",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-2078.03,-323.1,13.14,198.43),
                ["Positions"] = {
                    [1] = vector4(-2095.68,-322.72,13.02,172.92),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-2097.24,-342.85,12.99), Hash = -154407989, Lock = true, Distance = 5.5, Perm = "QG_156" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_156-2", ["Coords"] = vec3(-2067.89,-326.03,13.77), ["Mode"] = "2" },
        { ["Name"] = "QG_156-3", ["Coords"] = vec3(-2069.67,-340.74,13.77), ["Mode"] = "2" },
        { ["Name"] = "QG_156-4", ["Coords"] = vec3(-2095.96,-301.33,13.24), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-2082.35,-302.76,13.24), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-2064.18,-325.55,13.77),"QG_156" },
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_156"},
        
    },
    SURVIVAL = {
        
        ["QG_156"] = vec3(-2099.09,-293.77,13.28),
        
    },
    WORLD_PVP = {
        
        {vector4(-2130.06,-310.47,13.63,90.71),"QG_156"},
        
    },
    RISK_ZONES = {
        
        {vec3(-2099.09,-293.77,13.28),"QG_156"}, -- QG_156
        
    },
    RDM_ZONES = {
        ["QG_156"] = {
            {
                vector2(-1085.61, 338.64),
                vector2(-1088.64, 377.27),
                vector2(-1121.97, 388.64),
                vector2(-1181.06, 390.91),
                vector2(-1176.52, 351.52),
                vector2(-1162.12, 340.15)
            }, {
                name="QG_156",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_157"] = { 
    GARAGES = {
        -- QG_157
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1453.81,-49.66,53.90,1.97),
                ["Positions"] = {
                    [1] = vector4(-1450.35,-54.06,52.56,240.97),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-1469.02,-6.67,54.17,25.23),
                ["Positions"] = {
                    [1] = vector4(-1473.74,-1.14,54.40,281.48),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_157",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1458.23,-8.63,54.65,271.03),
                ["Positions"] = {
                    [1] = vector4(-1453.74,-14.68,54.65,265.27),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_157",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-1513.78,-41.03,54.61,315.33),
                ["Positions"] = {
                    [1] = vector4(-1519.28,-47.76,55.15,185.86),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-1472.56,-14.27,54.65), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_157" },
        { Coords = vec3(-1453.75,-32.05,54.65), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_157" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_157-2", ["Coords"] = vec3(-1476.98,-38.10,51.32), ["Mode"] = "2" },
        { ["Name"] = "QG_157-3", ["Coords"] = vec3(-1470.85,-32.28,54.61), ["Mode"] = "2" },
        { ["Name"] = "QG_157-4", ["Coords"] = vec3(-1476.98,-47.01,57.42), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-1467.95,-40.27,54.65), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-1473.54,-34.22,51.32),"QG_157" },
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_157"},
        
    },
    SURVIVAL = {
        
        ["QG_157"] = vec3(-1464.23,-41.51,54.65),
        
    },
    WORLD_PVP = {
        
        {vector4(-1450.26,-39.89,54.64,306.60),"QG_157"},
        
    },
    RISK_ZONES = {
        
        {vec3(-1464.23,-41.51,54.65),"QG_157"}, -- QG_157
        
    },
    RDM_ZONES = {
        ["QG_157"] = {
            {
                vector2(-1491.29,-110.98),
                vector2(-1531.44,-73.48),
                vector2(-1522.73,-52.27),
                vector2(-1525.00,-31.44),
                vector2(-1482.95,-3.79),
                vector2(-1437.12,-4.17),
                vector2(-1432.20,-14.02),
                vector2(-1433.33,-38.64),
                vector2(-1438.26,-59.47),
                vector2(-1451.52,-79.55)
            }, {
                name="QG_157",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = true,
        ["CidadeNobre"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_158"] = { 
    GARAGES = {
        -- QG_158
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-524.78,533.26,111.75,284.16),
                ["Positions"] = {
                    [1] = vector4(-528.84,532.53,111.48,60.33),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-526.06,541.27,112.07,287.78),
                ["Positions"] = {
                    [1] = vector4(-526.32,544.11,112.29,316.10),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_158",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-537.89,530.11,109.33,77.88),
                ["Positions"] = {
                    [1] = vector4(-541.23,530.03,109.07,125.95),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_158",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-526.26,522.72,112.45,204.04),
                ["Positions"] = {
                    [1] = vector4(-527.73,527.45,111.96,41.58),
                },
            },
        },

    },    
    DOORS = {

        { Coords = vec3(-525.89,516.53,112.98), Hash = -711771128, Lock = true, Distance = 5.5, Perm = "QG_158" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_158-2", ["Coords"] = vec3(-524.24,509.21,112.44), ["Mode"] = "2" },
        { ["Name"] = "QG_158-3", ["Coords"] = vec3(-529.89,511.46,112.44), ["Mode"] = "2" },
        { ["Name"] = "QG_158-4", ["Coords"] = vec3(-534.80,511.37,112.44), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-517.42,502.69,112.44), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-527.65,505.55,112.44),"QG_158" },
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_158"},
        
    },
    SURVIVAL = {
        
        ["QG_158"] = vec3(-493.21,476.12,107.45),
        
    },
    WORLD_PVP = {
        
        {vector4(-484.57,477.26,107.45,229.54),"QG_158"},
        
    },
    RISK_ZONES = {
        
        {vec3(-493.21,476.12,107.45),"QG_158"}, -- QG_158
        
    },
    RDM_ZONES = {
        ["QG_158"] = {
            {
                vector2(-549.56,500.58),
                vector2(-533.05,493.73),
                vector2(-529.87,487.50),
                vector2(-508.51,473.02),
                vector2(-490.15,470.30),
                vector2(-474.56,476.36),
                vector2(-484.86,498.33),
                vector2(-505.14,513.73),
                vector2(-532.15,543.66),
                vector2(-558.00,510.68)
            }, {
                name="QG_158",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_159"] = { 
    GARAGES = {
        -- QG_159
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1190.91,929.30,148.08,118.21),
                ["Positions"] = {
                    [1] = vector4(1185.48,931.14,148.60,273.33),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(1202.10,925.46,148.16,284.36),
                ["Positions"] = {
                    [1] = vector4(1201.69,916.62,148.16,193.92),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_159",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1198.43,932.98,146.98,254.27),
                ["Positions"] = {
                    [1] = vector4(1195.70,937.09,147.07,274.56),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_159",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(1182.62,887.08,144.93,47.52),
                ["Positions"] = {
                    [1] = vector4(1174.22,888.34,144.93,288.63),
                },
            },
        },

    },    
    DOORS = {

        -- { Coords = vec3(-1472.56,-14.27,54.65), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_159" },
        -- { Coords = vec3(-1453.75,-32.05,54.65), Hash = -512634970, Lock = true, Distance = 5.5, Perm = "QG_159" },

    },
    CHESTS = {
        
        { ["Name"] = "QG_159-2", ["Coords"] = vec3(1179.69,866.25,147.50), ["Mode"] = "2" },
        { ["Name"] = "QG_159-3", ["Coords"] = vec3(1173.30,861.53,144.00), ["Mode"] = "2" },
        { ["Name"] = "QG_159-4", ["Coords"] = vec3(1180.40,870.05,144.04), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(1185.76,861.40,144.00), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(1178.28,863.47,147.50),"QG_159" },
    },
    INTERPHONE = {
        
        -- {vector3(673.32,951.18,247.91),"QG_159"},
        
    },
    SURVIVAL = {
        
        ["QG_159"] = vec3(1186.92,846.11,144.01),
        
    },
    WORLD_PVP = {
        
        {vector4(1189.29,815.49,142.00,197.52),"QG_159"},
        
    },
    RISK_ZONES = {
        
        {vec3(1186.92,846.11,144.01),"QG_159"}, -- QG_159
        
    },
    RDM_ZONES = {
        ["QG_159"] = {
            {
                vector2(1190.70,813.78),
                vector2(1190.36,892.67),
                vector2(1214.95,905.15),
                vector2(1196.63,941.76),
                vector2(1184.96,936.08),
                vector2(1198.69,907.98),
                vector2(1165.89,891.55),
                vector2(1163.86,882.61),
                vector2(1163.77,854.33),
                vector2(1156.49,853.06),
                vector2(1156.24,841.72),
                vector2(1149.69,833.19),
                vector2(1150.43,814.52)
            }, {
                name="QG_159",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Kingdom"] = true,
        ["Universo"] = false,
        ["Maresia"] = false,
        ["Alexandria"] = false,
    }
}

ORGS_CONFIG["QG_160"] = { -- só maresia
    GARAGES = {
        -- QG_160
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3305.97,491.46,11.47,31.19),
                ["Positions"] = {
                    [1] = vector4(-3306.27,494.95,11.98,300.48),
                },
            },
        },    
        {
            ["Info"] = {
                ["Name"] = "Garage",
                ["Payment"] = false,
                ["Perm"] = nil,
                ["Level"] = nil,
            },
            ["Teleport"] = false,
            ["Spawns"] = {
                ["Open"] = vector4(-3058.48,422.58,6.57,252.29),
                ["Positions"] = {
                    [1] = vector4(-3053.02,424.21,6.62,153.08),
                },
            },
        },         
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_160",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3415.05,518.76,9.2,221.11),
                ["Positions"] = {
                    [1] = vector4(-3411.34,514.04,9.23,300.48),
                },
            },
        },
        {
            ["Info"] = {
                ["Name"] = "vip",
                --["Heli"] = true,
                ["Payment"] = false,
                ["Perm"] = "QG_160",
                ["Level"] = nil,
            },
            ["Spawns"] = {
                ["Open"] = vector4(-3272.29,525.02,12.27,119.06),
                ["Positions"] = {
                    [1] = vector4(-3285.79,522.52,12.37,96.38),
                },
            },
        },
    },    
    DOORS = {

    },
    CHESTS = {
        
        { ["Name"] = "QG_160-2", ["Coords"] = vec3(-3333.52,536.37,17.44), ["Mode"] = "2" },
        { ["Name"] = "QG_160-3", ["Coords"] = vec3(-3328.16,539.44,17.14), ["Mode"] = "2" },
        { ["Name"] = "QG_160-4", ["Coords"] = vec3(-3309.21,555.17,14.41), ["Mode"] = "2" },
        { ["Name"] = "PlayerChest", ["Coords"] = vec3(-3333.53,552.2,13.95), ["Mode"] = "Personal" },
        
    },
    CRAFT = {
        
        { vec3(-3277.35,565.56,6.89),"QG_160" },
        { vec3(-3281.60,580.83,6.12),"QG_160" },

    },
    INTERPHONE = {
        
        -- {vector3(-3061.93,414.52,6.69),"QG_160"},
        
    },
    SURVIVAL = {
        
        ["QG_160"] = vec3(-3340.14,558.55,13.95),
        
    },
    WORLD_PVP = {
        
        {vector4(-3373.19,594.69,3.67,17.01),"QG_160"},
        
    },
    RISK_ZONES = {
        
        {vec3(-3340.14,558.55,13.95),"QG_160"}, -- QG_160
        
    },
    RDM_ZONES = {
        ["QG_160"] = {
            {
                vector2(-3061.52,415.15),
                vector2(-3268.15,495.9),
                vector2(-3284.86,465.46),
                vector2(-3322.39,459.71),
                vector2(-3356.95,437.69),
                vector2(-3374.49,441.71),
                vector2(-3381.77,463.82),
                vector2(-3426.42,456.23),
                vector2(-3458.51,557.45),
                vector2(-3395.35,584.92),
                vector2(-3404.71,598.91),
                vector2(-3367.47,623.66),
                vector2(-3356.69,608.05),
                vector2(-3320.07,626.95),
                vector2(-3254.7,605.89),
                vector2(-3260.09,500.05),
                vector2(-3059.15,421.21)
            }, {
                name="QG_160",
                --debugGrid=true,
            },    
        } 
    },
    ACTIVE = {
        ["Santa"] = false,
        ["CidadeNobre"] = false,
        ["Caravelas"] = false,
        ["Kingdom"] = false,
        ["Universo"] = false,
        ["Maresia"] = true,
        ["Alexandria"] = false,
    }
}
-- if cityName == "CidadeNobre" then
--     ORGS_CONFIG["QG_01"]["GARAGES"] = {
--         {
--             ["Info"] = {
--                 ["Name"] = "vip",
                -- --["Heli"] = true,
--                 ["Payment"] = false,
--                 ["Perm"] = "QG_01",
--                 ["Level"] = nil,
--             },
--         ["Spawns"] = {
--                 ["Open"] = vector4(92.47,-1945.3,20.78,0.0),
--                 ["Positions"] = {
--                     [1] = vector4(99.17,-1940.66,20.86,48.19),
--                 },
--             },
--         },
--         {
--             ["Info"] = {
--                 ["Name"] = "vip",
--                 ["Payment"] = false,
--                 ["Perm"] = "QG_01",
--                 ["Level"] = nil,
--             },
--         ["Spawns"] = {
--                 ["Open"] = vector4(92.47,-1945.3,20.78,0.0),
--                 ["Positions"] = {
--                     [1] = vector4(99.17,-1940.66,20.86,48.19),
--                 },
--             },
--         },
--     }
-- end