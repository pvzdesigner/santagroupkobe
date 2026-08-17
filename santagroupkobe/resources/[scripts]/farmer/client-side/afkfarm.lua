local InZone = false
local Hacking = false
local LapTop = false
cityName = GetConvar("cityName", "")
local KeySwitch = "E"
local KeySwitchNumber = 38

if cityName == "Santa" then
    KeySwitch = "Q"
    KeySwitchNumber = 44
end

local Zones = {
    PolyZone:Create({
        vector2(1497.73, 6405.30),
        vector2(1467.80, 6368.94),
        vector2(1401.52, 6389.02),
        vector2(1384.47, 6275.76),
        vector2(1546.97, 6281.82),
        vector2(1581.44, 6344.70)
    }, {
        name="HackZone",
        minZ=15,
        maxZ=30
    }),
    PolyZone:Create({
        vector2(5417.4, -5253.21),
        vector2(5389.6, -5293.75),
        vector2(5335.14, -5251.97),
        vector2(5367.91, -5213.78)
    }, {
        name="CayoPerico",
        -- minZ=15,
        -- maxZ=30
    }),
}

local StartCoords = {
    vector3(1531.98,6327.61,24.28),
    vector3(1431.53,6345.75,23.98),
    vector3(1472.44,6359.79,23.67),
    vector3(5377.56,-5253.87,33.82),
}

if cityName == "Santa" then
    -- QG_133
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1433.63,-2424.86),
        vector2(1417.51,-2420.88),
        vector2(1415.23,-2428.10),
        vector2(1433.01,-2433.21)
    }, {
        name="QG_133",
        --minZ=0,
        --maxZ=800
    })    
    -- QG_07
    Zones[#Zones+1] = PolyZone:Create({
        vector2(831.74,1863.57),
        vector2(850.25,1872.93),
        vector2(845.48,1882.27),
        vector2(826.95,1872.76)
    }, {
        name="QG_07",
        --minZ=0,
        --maxZ=800
    })
    -- QG_91
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-1195.68,826.53),
        vector2(-1210.79,832.80),
        vector2(-1201.32,813.07),
        vector2(-1215.99,820.09)
    }, {
        name="QG_91",
        --minZ=0,
        --maxZ=800
    })
    -- QG_49
    Zones[#Zones+1] = PolyZone:Create({
        vector2(201.14,1153.44),
        vector2(217.31,1157.56),
        vector2(211.54,1180.88),
        vector2(196.24,1177.50)
    }, {
        name="QG_49",
        --minZ=0,
        --maxZ=800
    })
    -- QG_78
    Zones[#Zones+1] = PolyZone:Create({
        vector2(5057.40,-5706.83),
        vector2(5050.57,-5712.04),
        vector2(5065.86,-5723.95),
        vector2(5070.70,-5717.67)
    }, {
        name="QG_78",
        --minZ=0,
        --maxZ=800
    })
    -- QG_120
    Zones[#Zones+1] = PolyZone:Create({
        vector2(2889.45,-671.94),
        vector2(2901.39,-679.06),
        vector2(2925.02,-639.7),
        vector2(2916.04,-627.11)
    }, {
        name="QG_120",
        --minZ=0,
        --maxZ=800
    })
    -- QG_02
    Zones[#Zones+1] = PolyZone:Create({
        vector2(616.99,2046.08),
        vector2(603.32,2044.67),
        vector2(604.11,2072.63),
        vector2(618.29,2072.19)
    }, {
        name="QG_02",
        --minZ=0,
        --maxZ=800
    })
    -- QG_65
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1210.55,-219.38),
        vector2(1206.77,-211.28),
        vector2(1216.20,-205.76),
        vector2(1221.69,-216.27)
    }, {
        name="QG_65",
        --minZ=0,
        --maxZ=800
    })
    -- QG_83
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-1255.78,-1659.55),
        vector2(-1270.66,-1638.07),
        vector2(-1283.85,-1647.21),
        vector2(-1268.98,-1668.69)
    }, {
        name="QG_83",
        --minZ=0,
        --maxZ=800
    })
    -- QG_20
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-1554.55, 78.41),
        vector2(-1562.88, 71.21),
        vector2(-1545.83, 55.30),
        vector2(-1538.26, 63.26)
    }, {
        name="QG_20",
        --minZ=0,
        --maxZ=800
    })
    -- QG_33
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1402.14,-756.16),
        vector2(1396.43,-769.07),
        vector2(1419.40,-764.06),
        vector2(1412.94,-777.97)
    }, {
        name="QG_33",
        --minZ=0,
        --maxZ=800
    })
    -- QG_72
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-493.90,1523.94),
        vector2(-454.31,1506.39),
        vector2(-444.68,1527.01),
        vector2(-484.33,1544.80)
    }, {
        name="QG_72",
        --minZ=0,
        --maxZ=800
    })
    -- QG_28
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1802.61,6401.85),
        vector2(1825.50,6406.94),
        vector2(1824.51,6392.98),
        vector2(1803.18,6395.75)
    }, {
        name="QG_28",
        --minZ=0,
        --maxZ=800
    })
    -- QG_04
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-2197.51,-239.26),
        vector2(-2188.17,-243.84),
        vector2(-2184.25,-236.05),
        vector2(-2192.87,-230.63)
    }, {
        name="QG_04",
        --minZ=0,
        --maxZ=800
    })
    -- QG_104
    Zones[#Zones+1] = PolyZone:Create({
        vector2(2485.82,3567.74),
        vector2(2502.63,3580.79),
        vector2(2496.33,3589.19),
        vector2(2479.08,3576.48)
    }, {
        name="QG_104",
        --minZ=0,
        --maxZ=800
    })
    -- QG_44
    Zones[#Zones+1] = PolyZone:Create({
        vector2(979.43,54.20),
        vector2(993.18,51.42),
        vector2(997.88,60.79),
        vector2(986.13,67.46)
    }, {
        name="QG_44",
        --minZ=0,
        --maxZ=800
    })
    -- QG_29
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-284.70,1920.02),
        vector2(-299.82,1921.25),
        vector2(-295.10,1913.50),
        vector2(-290.74,1912.66)
    }, {
        name="QG_29",
        --minZ=0,
        --maxZ=800
    })
    -- QG_85
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-898.55,-1471.94),
        vector2(-900.62,-1466.59),
        vector2(-884.21,-1460.69),
        vector2(-882.30,-1465.96)
    }, {
        name="QG_85",
        --minZ=0,
        --maxZ=800
    })

elseif cityName == "CidadeNobre" then
    -- QG_131
    Zones[#Zones+1] = PolyZone:Create({
        vector2(83.21,6508.79),
        vector2(78.10,6513.38),
        vector2(70.09,6505.48),
        vector2(76.34,6506.36)
    }, {
        name="QG_131",
        --minZ=0,
        --maxZ=800
    })
    -- QG_92
    Zones[#Zones+1] = PolyZone:Create({
        vector2(143.33,-1342.45),
        vector2(134.37,-1353.92),
        vector2(131.69,-1351.78),
        vector2(140.71,-1340.57)
    }, {
        name="QG_92",
        --minZ=0,
        --maxZ=800
    })
    -- QG_50
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1044.98,-2485.31),
        vector2(1035.16,-2509.56),
        vector2(1049.82,-2510.84),
        vector2(1052.87,-2486.07)
    }, {
        name="QG_50",
        --minZ=0,
        --maxZ=800
    })
    -- Mansao50
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1423.78,4725.15),
        vector2(1424.64,4716.72),
        vector2(1414.82,4716.03),
        vector2(1413.91,4724.34)
    }, {
        name="Mansao50",
        --minZ=0,
        --maxZ=800
    })
    -- QG_76
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-3274.12,569.03),
        vector2(-3279.27,566.19),
        vector2(-3282.65,571.68),
        vector2(-3277.37,574.61)
    }, {
        name="QG_76",
        --minZ=0,
        --maxZ=800
    })
        -- Paris
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1980.53,4336.01),
        vector2(1983.6,4324.22),
        vector2(1994.58,4326.52),
        vector2(1992.49,4339.07)
    }, {
        name="Paris",
        --minZ=0,
        --maxZ=800
    })
    -- QG_94
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-455.39,1508.46),
        vector2(-446.63,1528.09),
        vector2(-464.3,1535.97),
        vector2(-472.97,1516.26)
    }, {
        name="QG_94",
        --minZ=0,
        --maxZ=800
    })
    -- Morro-do-sacola
    Zones[#Zones+1] = PolyZone:Create({
        vector2(2533.4912109375, 3631.8571777344),
        vector2(2553.6352539063, 3642.9370117188),
        vector2(2559.2229003906, 3632.7287597656),
        vector2(2539.6125488281, 3621.3557128906)
    }, {
    name="Morro-do-sacola",
    --minZ=0,
    --maxZ=800
    })
    --Gringa
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-57.58, 947.73),
        vector2(-59.47, 928.41),
        vector2(-26.52, 926.89),
        vector2(-25.00, 948.48)
    }, {
    name="Gringa",
    --minZ=0,
    --maxZ=800
    })
    StartCoords[#StartCoords+1] = vector3(-44.04,943.09,232.17)
    --Japao 
    Zones[#Zones+1] = PolyZone:Create({
        vector2(872.94201660156, 341.35406494141),
        vector2(852.78839111328, 320.99850463867),
        vector2(841.36328125, 332.03182983398),
        vector2(861.25799560547, 352.63134765625)
    }, {
    name="Japao",
    --minZ=0,
    --maxZ=800
    })
    StartCoords[#StartCoords+1] = vector3(853.05,332.75,118.42)

    --Redline 
    -- Zones[#Zones+1] = PolyZone:Create({
    --     vector2(-2151.15,219.88),
    --     vector2(-2173.25,210.62),
    --     vector2(-2179.43,224.59),
    --     vector2(-2206.03,212.72),
    --     vector2(-2207.8,216.52),
    --     vector2(-2190.65,224.72),
    --     vector2(-2198.96,243.42),
    --     vector2(-2168.22,256.22)
    -- }, {
    -- name="Redline",
    -- --minZ=0,
    -- --maxZ=800
    -- })
    StartCoords[#StartCoords+1] = vector3(-2168.08,237.66,184.6)

    -- --Turquia 
    -- Zones[#Zones+1] = PolyZone:Create({
    --     vector2(-2761.35,2301.14),
    --     vector2(-2751.19,2322.85),
    --     vector2(-2761.97,2328.1),
    --     vector2(-2772.84,2306.91)
    -- }, {
    -- name="Turquia",
    -- --minZ=0,
    -- --maxZ=800
    -- })
    -- StartCoords[#StartCoords+1] = vector3(-2761.45,2315.15,15.77)


elseif cityName == "Universo" then

    --Gang4 
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-440.78,1603.57),
        vector2(-448.82,1579.36),
        vector2(-410.29,1565.52),
        vector2(-407.11,1575.33)
    }, {
    name="Gang4",
    --minZ=0,
    --maxZ=800
    })
    -- QG_104 
    Zones[#Zones+1] = PolyZone:Create({
        vector2(2497.15,3594.52),
        vector2(2471.78,3633.72),
        vector2(2486.91,3644.7),
        vector2(2515.52,3607.1)
    }, {
    name="QG_104",
    --minZ=0,
    --maxZ=800
    })
    -- QG_52
    Zones[#Zones+1] = PolyZone:Create({
        vector2(485.54,-1524.8),
        vector2(478.41,-1518.38),
        vector2(467.27,-1525.5),
        vector2(477.01,-1532.7)
    }, {
    name="QG_52",
    --minZ=0,
    --maxZ=800
    })

    --FarmAFKSindicato 
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-2296.47,242.25),
        vector2(-2325.7,223.5),
        vector2(-2298.5,162.53),
        vector2(-2267.86,172.58)
    }, {
    name="FarmAFKSindicato ",
    --minZ=0,
    --maxZ=800
    })
    StartCoords[#StartCoords+1] = vector3(-432.93,1585.69,360.32)
elseif cityName == "Maresia" then
    -- QG_54 
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-80.74,940.17),
        vector2(-81.79,934.02), 
        vector2(-95.45,936.41), 
        vector2(-94.25,942.64) 
    }, {
    name="QG_54",
    --minZ=0,
    --maxZ=800
    })
    -- QG_58
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-2240.68,257.32),
        vector2(-2233.61,257.49), 
        vector2(-2228.76,252.19), 
        vector2(-2229.37,244.95), 
        vector2(-2235.08,240.40), 
        vector2(-2242.21,241.79), 
        vector2(-2245.81,246.91), 
        vector2(-2244.54,253.92), 
        vector2(-2240.87,257.20) 
    }, {
    name="QG_58",
    --minZ=0,
    --maxZ=800
    })

elseif cityName == "Caravelas" then   
elseif cityName == "Kingdom" then 
    -- QG_152
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-3602.74,1239.81), 
        vector2(-3605.61,1243.05), 
        vector2(-3601.74,1252.74), 
        vector2(-3597.12,1252.93), 
        vector2(-3518.98,1222.52), 
        vector2(-3507.31,1216.73), 
        vector2(-3495.64,1206.95), 
        vector2(-3511.09,1207.39), 
        vector2(-3526.07,1211.52)
    }, {
    name="QG_152",
    --minZ=0,
    --maxZ=800
    })
    
    -- QG_147
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-1208.37,-1772.10),
        vector2(-1210.39,-1768.11),
        vector2(-1202.96,-1765.96),
        vector2(-1202.11,-1770.06),
    }, {
    name="QG_147",
    --minZ=0,
    --maxZ=800
    })
    -- QG_91
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-1207.53,809.13),
        vector2(-1215.57,812.77),
        vector2(-1218.00,807.56),
        vector2(-1209.73,803.98)
    }, {
    name="QG_91",
    --minZ=0,
    --maxZ=800
    })
    -- QG_20
    Zones[#Zones+1] = PolyZone:Create({
        vector2(-1548.83,58.96),
        vector2(-1552.49,62.28),
        vector2(-1546.89,68.10),
        vector2(-1543.18,64.69)
    }, {
    name="QG_20",
    --minZ=0,
    --maxZ=800
    })
    
    
elseif cityName == "Alexandria" then
    --Gang9 
    Zones[#Zones+1] = PolyZone:Create({
        vector2(1527.12,1437.51),
        vector2(1538.81,1440.85),
        vector2(1545.18,1418.31),
        vector2(1533.63,1415.02)
    }, {
    name="Gang9",
    --minZ=0,
    --maxZ=800
    })
    StartCoords[#StartCoords+1] = vector3(1536.24,1427.77,108.83)

end

CreateThread(function()

    LocalPlayer["state"]:set("Buttons",false,true)
    while true do
        local Idle = 2500
        local Ped = PlayerPedId()
        local Coords = GetEntityCoords(Ped)
        local Inside = false
        for i=1, #Zones do
            if Zones[i]:isPointInside(Coords) then
                if not InZone then
                    InZone = true
                end
                Inside = true
            end
        end
        if not Inside then
            InZone = false
        end
        Wait(Idle)
    end
end)

local Teleport = vector3(2157.93,2921,-80.0)

CreateThread(function()

    local Table = {}
    for i=1, #StartCoords do
        Table[i] = {
            StartCoords[i]["x"],
            StartCoords[i]["y"],
            StartCoords[i]["z"],
            50.0,
            KeySwitch,
            _t("start_afk_farm"),
            _t("press_to_open"),
        }
    end
    TriggerEvent("hoverfy:Insert",Table)
    while true do 
        local idle = 2500
        local Ped = PlayerPedId()
        local Coords = GetEntityCoords(Ped)
        if InZone then
            idle = 1
            if InZone and IsControlJustPressed(0,KeySwitchNumber) and not Hacking then
                idle = 2500
                Hacking = true
                LocalPlayer["state"]:set("Buttons",true,true)
                LocalPlayer["state"]:set("Cancel",true,true)
                LocalPlayer["state"]:set("Farming",true,true)
                -- TriggerEvent("Notify","amarelo","Você iniciou o farm afk, basta ficar 05 minutos para receber seus itens.",30000,"FARM")
                -- TriggerEvent("Notify2","#startFarm")
                -- TriggerEvent("Notify","amarelo","Você pode farmar enquanto estiver AFK sem morrer de fome ou sede!",60000,"FARM")
                -- TriggerEvent("Notify2","#suggFarm")
                CreateThread(function()
                    StartFarming()
                end)
            end
        end
        Wait(idle)
    end
end)

local Timer = 60*2.5
local Animations = {
    ["bong"] = { dict = "anim@safehouse@bong", anim = "bong_stage1", prop = "prop_bong_01", flag = 49, hand = 18905, pos1 = 0.10, pos2 = -0.25, pos3 = 0.0, pos4 = 95.0, pos5 = 190.0, pos6 = 180.0 },
}

function StartFarming()
    TriggerServerEvent("farmer:StartAFKFarming")
    local Ped = PlayerPedId()
    local name = "bong"
    TriggerEvent("hoverfy:removeHoverfy",Timer)
    vRP._playAnim(false,{"anim@safehouse@bong", "bong_stage1"},true)
    TriggerEvent("Progress","Minerando",1000*Timer)
    local Count = 0
    while Hacking do
        Count = Count + 1
        if Count >= Timer then
            break
        end
        Wait(1000)
    end
    if not Hacking then
        return
    end
    local Coords = GetEntityCoords(Ped)
    if InZone then
        vRP.stopAnim(false)
        TriggerServerEvent("farmer:Farming")
        -- TriggerServerEvent("DeleteObject",Network)
        LocalPlayer["state"]:set("Buttons",false,true)
        LocalPlayer["state"]:set("Cancel",false,true)
        TriggerEvent("Progress","Minerando",0)
        StartFarming()
    end
end


AddEventHandler("actions:Cancel",function()
    if Hacking then
        vRP._stopAnim(false)
        LocalPlayer["state"]:set("Buttons",false,true)
        LocalPlayer["state"]:set("Cancel",false,true)
        LocalPlayer["state"]:set("Farming",false,true)
        TriggerEvent("Progress","Cancelando",0)
        TriggerEvent("hoverfy:returnHoverfy")
        Hacking = false
        InZone = false
        Hacking = false
        LapTop = false
        TriggerServerEvent("farmer:ExitAFKFarming")
    end
end)