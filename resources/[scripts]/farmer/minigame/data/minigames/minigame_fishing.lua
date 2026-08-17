local function MINIGAME_FISHING_VOLUMES()

    return table_join(
        ---@type fsMinigameVolumesDef
        {
            { 'polygon', -- Pescaria
                {
                    vector2(1318.18, 6687.12),
                    vector2(1555.30, 6695.45),
                    vector2(1534.09, 6847.73),
                    vector2(1315.15, 6849.24)
                }
            },
            { 'polygon', -- PescariaPerico
                {
                    vector2(5109.82, -5112.69),
                    vector2(5109.61, -5207.14),
                    vector2(5088.84, -5207.01),
                    vector2(5088.65, -5113.09)
                }
            }
        },
        SWITCH( cityName, {
            { 'CidadeNobre',
                ---@type fsMinigameVolumesDef
                {
                    { 'polygon', -- PescariaPRF
                        {
                            vector2(2634.51, 5316.4),
                            vector2(2637.79, 5317.27),
                            vector2(2642.02, 5302.88),
                            vector2(2638.7, 5301.88)
                        }
                    },
                    { 'polygon', -- Resort
                        {
                            vector2(-2518.09,-2133.22),
                            vector2(-2532.57,-2138.15),
                            vector2(-2529.27,-2189.57),
                            vector2(-2503.02,-2188.91)
                        }
                    },
                    { 'polygon', -- Bloco01
                        {
                            vector2(2134.92,4629.24),
                            vector2(2140.28,4628.97),
                            vector2(2137.97,4617.2),
                            vector2(2133.04,4618.13)
                        }
                    },
                    { 'polygon', -- QG_75
                        {
                            vector2(2605.90, 3640.36),
                            vector2(2629.07, 3657.06),
                            vector2(2636.89, 3633.31),
                            vector2(2610.37, 3618.94)
                        }
                    },
                    { 'polygon', -- QG_112
                        {
                            vector2(-297.35,-1624.55),
                            vector2(-288.25,-1629.94),
                            vector2(-282.73,-1620.81),
                            vector2(-292.05,-1615.24)
                        }
                    },
                    { 'polygon', -- QG_23
                        {
                            vector2(882.45,1049.59),
                            vector2(881.17,1061.72),
                            vector2(895.72,1061.93),
                            vector2(897.62,1051.66)
                        }
                    },
                    { 'polygon', -- QG_131
                        {
                            vector2(83.78,6544.29),
                            vector2(76.71,6537.21),
                            vector2(79.97,6533.49),
                            vector2(87.17,6540.86)
                        }
                    },
                    { 'polygon', -- QG_44
                        {
                            vector2(921.16,-97.30),
                            vector2(928.50,-103.91),
                            vector2(939.79,-92.01),
                            vector2(931.11,-82.68)
                        }
                    },
                    { 'polygon', -- Mansao42
                        {
                            vector2(761.68,3442.37),
                            vector2(760.34,3447.91),
                            vector2(793.58,3448.20),
                            vector2(793.78,3441.86)
                        }
                    },
                    { 'polygon', -- QG_03
                        {
                            vector2(-542.42,338.59),
                            vector2(-552.1,339.41),
                            vector2(-553.06,330.97),
                            vector2(-543.16,330.08)
                        }
                    },
                    { 'polygon', -- mansao02
                        {
                            vector2(18.02,524.67),
                            vector2(21.18,517.46),
                            vector2(3.06,509.04),
                            vector2(0.90,516.47)
                        }
                    },
                    { 'polygon', -- QG_27
                        {
                            vector2(-1539.99,-396.39),
                            vector2(-1535.76,-392.3),
                            vector2(-1529.2,-398.37),
                            vector2(-1532.94,-401.86)
                        }
                    },
                    { 'polygon', -- QG_32
                        {
                            vector2(187.93,738.93),
                            vector2(178.54,733.44),
                            vector2(167.35,752.04),
                            vector2(176.76,757.52)
                        }
                    },
                    { 'polygon', -- QG_33
                        {
                            vector2(1379.04,-758.58),
                            vector2(1391.08,-752.59),
                            vector2(1401.41,-755.73),
                            vector2(1407.64,-758.57),
                            vector2(1421.36,-765.03),
                            vector2(1419.89,-767.95),
                            vector2(1413.11,-777.92),
                            vector2(1397.17,-770.64),
                            vector2(1395.14,-767.56),
                            vector2(1385.29,-772.53)
                        }
                    },
                    { 'polygon', -- QG_80
                        {
                            vector2(3207.42,5101.54),
                            vector2(3219.34,5103.57),
                            vector2(3210.65,5077.76),
                            vector2(3223.56,5079.55)
                        }
                    },
                    { 'polygon', -- Mansao76
                        {
                            vector2(-3493.52,1300.40),
                            vector2(-3495.97,1292.73),
                            vector2(-3503.54,1295.24),
                            vector2(-3501.69,1304.28)
                        }
                    },
                    { 'polygon', -- QG_133
                        {
                            vector2(1269.14,-2555.88),
                            vector2(1273.06,-2567.40),
                            vector2(1246.22,-2577.54),
                            vector2(1240.76,-2565.62)
                        }
                    },
                    { 'polygon', -- Mansao50
                        {
                            vector2(1377.56,4742.72),
                            vector2(1377.34,4734.80),
                            vector2(1367.81,4733.65),
                            vector2(1364.94,4741.42)
                        }
                    },
                    { 'polygon', -- PescariaBig
                        {
                            vector2(125.31, -411.82),
                            vector2(118.38, -409.2),
                            vector2(120.69, -402.56),
                            vector2(127.3, -405.7)
                        }
                    },
                    { 'polygon', -- PescaQG_11
                        {
                            vector2(-1482.54,297.91),
                            vector2(-1470.97,304.15),
                            vector2(-1466.92,296.96),
                            vector2(-1478.16,290.77)
                        }
                    },
                    { 'polygon', -- PescaMilitar
                        {
                            vector2(2448.48, -369.70),
                            vector2(2466.67, -355.68),
                            vector2(2467.42, -342.05),
                            vector2(2451.14, -343.18),
                            vector2(2442.80, -355.30)
                        }
                    },
                    { 'polygon', -- PescaQG_19
                        {
                            vector2(-1028.17,306.97),
                            vector2(-1034.83,304.73),
                            vector2(-1037.4,311.4),
                            vector2(-1030.69,313.63)
                        }
                    },
                    { 'polygon', -- PescaQG_17
                        {
                            vector2(930.99, 375.29),
                            vector2(937.5, 368.8),
                            vector2(924.48, 355.09),
                            vector2(916.48, 361.17)
                        }
                    },
                    { 'polygon', -- PescaRicardo
                        {
                            vector2(-2585.26, 3754.3),
                            vector2(-2609.49, 3756.61),
                            vector2(-2608.07, 3772.63),
                            vector2(-2583.82, 3770.56)
                        }
                    },
                    { 'polygon', -- PescariaParis
                        {
                            vector2(2063.35, 4180.26),
                            vector2(2085.37, 4185.08),
                            vector2(2093.2, 4149.83),
                            vector2(2071.09, 4144.95)
                        }
                    },
                    { 'polygon', -- PescariaArcade
                        {
                            vector2(-3430.04, 494.62),
                            vector2(-3438.11, 507.3),
                            vector2(-3431.55, 510.68),
                            vector2(-3424.58, 498.47)
                        }
                    },
                    { 'polygon', -- PescaTony
                        {
                            vector2(582.55, 6625.44),
                            vector2(570.3, 6627.76),
                            vector2(572.09, 6636.19),
                            vector2(584.13, 6633.78)
                        }
                    },
                    { 'polygon', -- PescaQG94
                        {
                            vector2(-315.61, 1641.99),
                            vector2(-313.0, 1624.38),
                            vector2(-299.73, 1625.77),
                            vector2(-297.07, 1645.14)
                        }
                    },
                    { 'polygon', -- PescariaMansao26
                        {
                            vector2(-1479.05, -61.68),
                            vector2(-1485.74, -67.72),
                            vector2(-1497.89, -53.11),
                            vector2(-1490.98, -47.36)
                        }
                    },
                    { 'polygon', -- PescaTurquia
                        {
                            vector2(-1467.77, 235.84),
                            vector2(-1445.48, 218.92),
                            vector2(-1461.09, 206.25),
                            vector2(-1481.19, 218.72)
                        }
                    },
                    { 'polygon', -- PescaRedline
                        {
                            vector2(-2274.34, 317.37),
                            vector2(-2266.51, 320.97),
                            vector2(-2246.01, 275.02),
                            vector2(-2253.94, 271.57)
                        }
                    },
                    { 'polygon', -- PescaCampinho2
                        {
                            vector2(1393.8, 1390.63),
                            vector2(1382.09, 1390.5),
                            vector2(1382.05, 1398.4),
                            vector2(1393.81, 1398.62)
                        }
                    },
                    { 'polygon', -- PescaVanilla
                        {
                            vector2(101.19, -1301.76),
                            vector2(104.1, -1301.51),
                            vector2(104.39, -1315.79),
                            vector2(101.45, -1315.93)
                        }
                    },
                    { 'polygon', -- PescariaEspanha
                        {
                            vector2(-3040.15, 62.12),
                            vector2(-3050.76, 45.83),
                            vector2(-3044.32, 29.55),
                            vector2(-3024.62, 20.45),
                            vector2(-3006.44, 19.32),
                            vector2(-2997.35, 29.55)
                        }
                    },
                    { 'polygon', -- PescaBradesco
                        {
                            vector2(-1974.79, -252.85),
                            vector2(-1965.89, -239.9),
                            vector2(-1954.57, -247.21),
                            vector2(-1964.29, -260.14)
                        }
                    },
                    { 'polygon', -- Fish
                        {
                            vector2(-74.3, 962.63),
                            vector2(-75.67, 960.49),
                            vector2(-73.67, 958.34),
                            vector2(-72.48, 956.06),
                            vector2(-73.09, 953.33),
                            vector2(-74.66, 951.78),
                            vector2(-77.01, 950.62),
                            vector2(-80.57, 949.93),
                            vector2(-83.45, 949.93),
                            vector2(-88.74, 950.89),
                            vector2(-91.47, 951.92),
                            vector2(-93.96, 953.56),
                            vector2(-96.26, 955.98),
                            vector2(-97.04, 958.49),
                            vector2(-96.47, 960.31),
                            vector2(-95.05, 961.76),
                            vector2(-93.38, 962.83),
                            vector2(-92.22, 963.25),
                            vector2(-92.51, 965.82),
                            vector2(-87.86, 966.45),
                            vector2(-84.01, 966.16),
                            vector2(-79.63, 965.1),
                            vector2(-76.81, 963.95)
                        }
                    },
                    { 'polygon', -- PescaYuri
                        {
                            vector2(-3417.53, 10.09),
                            vector2(-3426.43, 3.05),
                            vector2(-3439.37, 19.53),
                            vector2(-3430.12, 26.63)
                        }
                    },
                    { 'polygon', -- Pescaria104
                        {
                            vector2(-3514.43, 4572.8),
                            vector2(-3532.04, 4564.82),
                            vector2(-3538.99, 4580.23),
                            vector2(-3521.09, 4588.09)
                        }
                    },
                    { 'polygon', -- PescariaQG_60
                        {
                            vector2(1290.97,-1756.94),
                            vector2(1281.2,-1761.5),
                            vector2(1274.46,-1747.59),
                            vector2(1284.74,-1743.5)
                        }
                    },
                    { 'polygon', -- PescariaQG_08
                        {
                            vector2(-334.72, -87.25),
                            vector2(-338.17, -98.09),
                            vector2(-341.63, -96.94),
                            vector2(-337.85, -86.17)
                        }
                    },
                    { 'polygon', -- PescariaQG_40
                        {
                            vector2(1718.88,410.95),
                            vector2(1712.73,389.5),
                            vector2(1701.12,392.83),
                            vector2(1707.28,414.28)
                        }
                    },
                    { 'polygon', -- PescariaQG_41
                        {
                            vector2(2156.48,4031.55),
                            vector2(2150.85,4039.52),
                            vector2(2134.33,4028.87),
                            vector2(2139.75,4020.61)
                        }
                    },
                    { 'polygon', -- Exercito
                        {
                            vector2(-1913.80,3117.39),
                            vector2(-1920.53,3105.40),
                            vector2(-1907.56,3097.79),
                            vector2(-1900.51,3109.79)
                        }
                    },
                    { 'polygon', -- Mansao07
                        {
                            vector2(-2646.63,1697.0),
                            vector2(-2648.01,1701.02),
                            vector2(-2647.04,1704.43),
                            vector2(-2630.29,1711.14),
                            vector2(-2628.36,1705.27),
                            vector2(-2641.22,1700.06),
                            vector2(-2641.02,1699.03)
                        }
                    }
                }
            },
            { 'Caravelas',
                ---@type fsMinigameVolumesDef
                {
                    
                    { 'polygon', -- QG_54
                        {
                            vector2(-92.17,963.28),
                            vector2(-92.45,965.78),
                            vector2(-87.89,966.47),
                            vector2(-83.51,966.14),
                            vector2(-79.42,965.16),
                            vector2(-74.29,962.68),
                            vector2(-75.79,960.47),
                            vector2(-73.58,958.36),
                            vector2(-72.48,955.77),
                            vector2(-73.63,952.62),
                            vector2(-78.18,950.31),
                            vector2(-82.83,949.81),
                            vector2(-90.25,951.39),
                            vector2(-94.69,954.04),
                            vector2(-96.89,956.99),
                            vector2(-96.68,960.11),
                            vector2(-94.7,962.3)
                        }
                    }

                }
            },
            { 'Santa',
                ---@type fsMinigameVolumesDef
                {
                    
                    { 'polygon', -- QG_08
                        {
                            vector2(-363.65,-88.04),
                            vector2(-367.76,-98.08),
                            vector2(-346.38,-105.87),
                            vector2(-342.36,-95.58)
                        }
                    },
                    { 'polygon', -- QG_19
                        {
                            vector2(-1025.38,286.95),
                            vector2(-1025.30,289.95),
                            vector2(-1028.75,300.41),
                            vector2(-1038.75,296.88),
                            vector2(-1035.44,286.99)
                        }
                    },
                    { 'polygon', -- QG_90
                        {
                            vector2(-3336.98,461.18),
                            vector2(-3369.79,439.75),
                            vector2(-3377.82,465.93),
                            vector2(-3346.88,491.17)
                        }
                    },
                    { 'polygon', -- QG_60
                        {
                            vector2(1263.15,-1727.52),
                            vector2(1283.51,-1716.00),
                            vector2(1277.30,-1705.05),
                            vector2(1257.27,-1717.00)
                        }
                    },
                    { 'polygon', -- mansao77
                        {
                            vector2(-135.62,6613.63),
                            vector2(-128.08,6619.20),
                            vector2(-134.57,6629.10),
                            vector2(-142.61,6624.25)
                        }
                    },
                    { 'polygon', -- QG_157
                        {
                            vector2(-1504.15,-48.84),
                            vector2(-1494.43,-40.52),
                            vector2(-1503.04,-30.45),
                            vector2(-1512.49,-37.93)
                        }
                    },
                    { 'polygon', -- Pesca_Bombeiros
                        {
                            vector2(-593.56,-88.26),
                            vector2(-601.52,-94.32),
                            vector2(-601.52,-105.30),
                            vector2(-591.29,-109.85),
                            vector2(-584.47,-107.58),
                            vector2(-581.06,-95.83),
                            vector2(-583.33,-89.39)
                        }
                    },
                    { 'polygon', -- QG_01
                        {
                            vector2(-1932.09,4522.98),
                            vector2(-1941.52,4515.61),
                            vector2(-1927.41,4497.06),
                            vector2(-1917.73,4504.61)
                        }
                    },
                    { 'polygon', -- QG_65
                        {
                            vector2(1215.25,-226.18),
                            vector2(1222.34,-246.35),
                            vector2(1232.56,-242.88),
                            vector2(1225.50,-222.85)
                        }
                    },
                    { 'polygon', -- QG_16
                        {
                            vector2(1427.80,1168.69),
                            vector2(1414.86,1168.34),
                            vector2(1414.19,1139.81),
                            vector2(1427.24,1143.66)
                        }
                    },
                    { 'polygon', -- QG_34
                        {
                            vector2(771.72,-317.03),
                            vector2(781.51,-312.92),
                            vector2(769.32,-288.19),
                            vector2(762.50,-290.81)
                        }
                    },
                    { 'polygon', -- QG_13
                        {
                            vector2(78.78,-447.82),
                            vector2(91.01,-451.87),
                            vector2(87.12,-465.01),
                            vector2(73.43,-465.44)
                        }
                    },
                    { 'polygon', -- QG_78
                        {
                            vector2(5012.21,-5813.49),
                            vector2(5019.26,-5808.91),
                            vector2(5002.15,-5805.46),
                            vector2(5012.17,-5798.95)
                        }
                    },
                    { 'polygon', -- QG_05
                        {
                            vector2(-482.27,-1143.25),
                            vector2(-487.66,-1146.43),
                            vector2(-491.29,-1140.01),
                            vector2(-486.11,-1136.68)
                        }
                    },
                    { 'polygon', -- QG_02
                        {
                            vector2(663.27,2044.15),
                            vector2(663.31,2035.58),
                            vector2(663.31,2035.58),
                            vector2(646.29,2044.63)
                        }
                    },
                    { 'polygon', -- QG_04
                        {
                            vector2(-2274.20,-219.07),
                            vector2(-2279.75,-228.79),
                            vector2(-2267.18,-234.11),
                            vector2(-2259.46,-224.55)
                        }
                    },
                    { 'polygon', -- QG_20
                        {
                            vector2(-1459.47, 205.68),
                            vector2(-1476.52, 215.91),
                            vector2(-1462.50, 231.82),
                            vector2(-1444.32, 218.18)
                        }
                    },
                    { 'polygon', -- QG_104
                        {
                            vector2(2539.26,3584.63),
                            vector2(2520.52,3570.74),
                            vector2(2526.76,3562.55),
                            vector2(2545.59,3576.88)
                        }
                    },
                    { 'polygon', -- QG_07
                        {
                            vector2(784.82,1852.35),
                            vector2(786.53,1848.96),
                            vector2(826.35,1869.22),
                            vector2(824.63,1872.57)
                        }
                    },
                    { 'polygon', -- QG_120
                        {
                            vector2(2871.06,-730.29),
                            vector2(2878.3,-718.36),
                            vector2(2864.58,-727.46),
                            vector2(2872.42,-715.39)
                        }
                    },
                    { 'polygon', -- QG_33
                        {
                            vector2(1359.67,-763.15),
                            vector2(1350.59,-788.12),
                            vector2(1332.23,-781.32),
                            vector2(1341.34,-756.40)
                        }
                    },
                    { 'polygon', -- QG_46
                        {
                            vector2(-179.34,-1257.79),
                            vector2(-187.80,-1257.75),
                            vector2(-187.72,-1281.40),
                            vector2(-179.38,-1281.11)
                        }
                    },
                    { 'polygon', -- QG_72
                        {
                            vector2(-316.67,1620.98),
                            vector2(-299.22,1623.41),
                            vector2(-300.94,1642.49),
                            vector2(-318.32,1641.72)
                        }
                    },
                    { 'polygon', -- QG_44
                        {
                            vector2(933.72,6.65),
                            vector2(927.86,-2.65),
                            vector2(907.04,11.07),
                            vector2(912.87,20.40)
                        }
                    },
                    { 'polygon', -- QG_29
                        {
                            vector2(-287.47,1938.05),
                            vector2(-304.43,1936.12),
                            vector2(-305.03,1941.29),
                            vector2(-288.17,1944.36)
                        }
                    },
                    { 'polygon', -- QG_85
                        {
                            vector2(-863.40,-1505.79),
                            vector2(-859.32,-1517.92),
                            vector2(-852.08,-1512.30),
                            vector2(-855.75,-1502.84)
                        }
                    },
                    { 'polygon', -- QG_56
                        {
                            vector2(-288.10,-1631.42),
                            vector2(-298.71,-1625.21),
                            vector2(-286.73,-1604.17),
                            vector2(-275.61,-1610.65)
                        }
                    },
                    { 'polygon', -- QG_46
                        {
                            vector2(-179.34,-1257.79),
                            vector2(-187.80,-1257.75),
                            vector2(-187.72,-1281.40),
                            vector2(-179.38,-1281.11)
                        }
                    },
                    { 'polygon', -- QG_113
                        {
                            vector2(1422.74,-2406.17),
                            vector2(1425.41,-2395.53),
                            vector2(1433.21,-2395.88),
                            vector2(1433.26,-2406.36)
                        }
                    }
                }
            },
            { 'Alexandria',
                ---@type fsMinigameVolumesDef
                {
                    { 'polygon', -- PescaQG_17
                        {
                            vector2(930.99,375.29),
                            vector2(937.5,368.8),
                            vector2(924.48,355.09),
                            vector2(916.48,361.17)
                        }
                    },
                    { 'polygon', -- pier
                        {
                            vector2(-1495.08, -1126.14),
                            vector2(-1509.47, -1125.00),
                            vector2(-1517.80, -1126.14),
                            vector2(-1524.62, -1133.71),
                            vector2(-1526.89, -1141.29),
                            vector2(-1525.76, -1152.65),
                            vector2(-1529.17, -1163.64),
                            vector2(-1524.62, -1175.38),
                            vector2(-1521.59, -1185.61),
                            vector2(-1501.14, -1178.03),
                            vector2(-1485.23, -1170.83),
                            vector2(-1476.52, -1157.20),
                            vector2(-1475.38, -1143.18),
                            vector2(-1483.33, -1134.09)
                        }
                    },
                    { 'polygon', -- Mansao56
                        {
                            vector2(-1962.64,-244.70),
                            vector2(-1956.06,-249.17),
                            vector2(-1963.51,-259.62),
                            vector2(-1969.72,-255.41)
                        }
                    },

                    -- { 'polygon', -- PescaLuxor
                    --     {
                    --         vector2(-312.12, 144.70),
                    --         vector2(-284.09, 145.45),
                    --         vector2(-285.98, 168.94),
                    --         vector2(-313.64, 169.32)
                    --     }
                    -- }
                }
            },
            { 'Universo',
                ---@type fsMinigameVolumesDef
                {
                    { 'polygon', -- PescaQG_58
                        {
                            vector2(-2253.41, 271.38),
                            vector2(-2246.04, 274.7),
                            vector2(-2268.47, 325.27),
                            vector2(-2276.08, 321.66)
                        }
                    },
                    { 'polygon', -- QG_13
                        {
                            vector2(119.64,-402.61),
                            vector2(116.51,-410.5),
                            vector2(91.84,-401.74),
                            vector2(95.27,-393.03)
                        }
                    },
                    { 'polygon', -- QG_60
                        {
                            vector2(1332.48,-1752.52),
                            vector2(1341.91,-1749.53),
                            vector2(1335.59,-1733.24),
                            vector2(1326.47,-1736.47)
                        }
                    },
                    { 'polygon', -- QG_98
                        {
                            vector2(-3121.13,1542.45),
                            vector2(-3115.92,1543.32),
                            vector2(-3116.96,1553.65),
                            vector2(-3122.74,1552.88)
                        }
                    },
                    { 'polygon', -- QG_08
                        {
                            vector2(-343.97,-96.31),
                            vector2(-347.11,-104.59),
                            vector2(-361.2,-99.56),
                            vector2(-358.44,-91.6)
                        }
                    },
                    { 'polygon', -- QG_33
                        {
                            vector2(1300.4,-756.88),
                            vector2(1306.19,-744.42),
                            vector2(1293.83,-737.23),
                            vector2(1286.68,-751.51)
                        }
                    },
                    { 'polygon', -- QG_20
                        {
                            vector2(-1580.76,80.85),
                            vector2(-1586.59,86.43),
                            vector2(-1572.31,102.11),
                            vector2(-1565.18,97.05)
                        }
                    },
                    { 'polygon', -- Mansao97
                        {
                            vector2(2252.59,4867.9),
                            vector2(2245.26,4874.75),
                            vector2(2226.97,4853.74),
                            vector2(2233.94,4847.21)
                        }
                    },
                    { 'polygon', -- Mansao07
                        {
                            vector2(-2629.48,1706.27),
                            vector2(-2631.01,1710.48),
                            vector2(-2640.61,1701.33),
                            vector2(-2642.67,1706.18)
                        }
                    },
                    { 'polygon', -- QG_104
                        {
                            vector2(2457.75,3354.35),
                            vector2(2442.1,3331.68),
                            vector2(2450.04,3324.27),
                            vector2(2466.6,3347.61)
                        }
                    },
                    { 'polygon', -- PescaQG_11
                        {
                            vector2(-1618.31,445.75),
                            vector2(-1629.06,445.18),
                            vector2(-1630.45,467.06),
                            vector2(-1619.68,467.77)
                        }
                    }
                }
            },
            { 'Kingdom', {} },
            { 'Maresia', 
                ---@type fsMinigameVolumesDef
                {
                    { 'polygon', -- QG_13
                        {
                            vector2(97.26,-419.47),
                            vector2(99.72,-411.76),
                            vector2(106.08,-414.25),
                            vector2(103.13,-421.68)
                        }
                    },
                    { 'polygon', -- QG_20
                        {
                            vector2(-1593.17,78.89),
                            vector2(-1588.43,84.83),
                            vector2(-1582.10,79.06),
                            vector2(-1588.71,73.15)
                        }
                    },
                    { 'polygon', -- qg_53
                        {
                            vector2(-1534.96,873.79),
                            vector2(-1531.09,867.57),
                            vector2(-1536.45,862.67),
                            vector2(-1543.05,870.37) 
                        }
                    }
                } 
            }
        })
    )
end

DEFINE_MINIGAME 'fishing' {

    -- Nome que será exibido para o jogador
    -- ( o sistema de exibir texto não gosta de acentos )
    displayName = 'Pescaria',

    -- Animação que será executada
    scriptedInteractionName = 'fishing_rod',

    duration = 60,

    -- # Recompensas
    rewards =
    {
        {
            item =
            {
                -- Todos os items tem as mesmas chances!
                { id = 'octopus'    , amount = 1, chanceWeight = 1.0 },
                { id = 'shrimp'     , amount = 1, chanceWeight = 1.0 },
                { id = 'carp'       , amount = 1, chanceWeight = 1.0 },
                { id = 'horsefish'  , amount = 1, chanceWeight = 1.0 },
                { id = 'tilapia'    , amount = 1, chanceWeight = 1.0 },
                { id = 'codfish'    , amount = 1, chanceWeight = 1.0 },
                { id = 'catfish'    , amount = 1, chanceWeight = 1.0 },
            },
        },
        {
            item =
            {
                -- Todos os items tem as mesmas chances!
                { id = 'octopus'    , amount = 1, chanceWeight = 1.0 },
                { id = 'shrimp'     , amount = 1, chanceWeight = 1.0 },
                { id = 'carp'       , amount = 1, chanceWeight = 1.0 },
                { id = 'horsefish'  , amount = 1, chanceWeight = 1.0 },
                { id = 'tilapia'    , amount = 1, chanceWeight = 1.0 },
                { id = 'codfish'    , amount = 1, chanceWeight = 1.0 },
                { id = 'catfish'    , amount = 1, chanceWeight = 1.0 },
                { id = 'goldenfish' , amount = 1, chanceWeight = 1.0 },
                { id = 'pirarucu'   , amount = 1, chanceWeight = 1.0 },
                { id = 'pacu'       , amount = 1, chanceWeight = 1.0 },
                { id = 'tambaqui'   , amount = 1, chanceWeight = 1.0 },
            },

            when = function ( ctx )

                -- Quando houver 4 ou mais membros na party
                -- esse loottable vai ser usada

                if ctx.hostPartyNumMembers < 4 then

                    return false
                end

                return true
            end
        }
    },

    -- Mover todos os participants do minigame para um bucket privado
    flags = eMinigameDefFlags.MDF__ON_CREATE__SWITCH_TO_PRIVATE_ROUTING_BUCKET,

    volumes = MINIGAME_FISHING_VOLUMES()
}