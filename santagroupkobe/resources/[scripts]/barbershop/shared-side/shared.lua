Fathers = {0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,42,43,44}
Mothers = {21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,45}
print(#Fathers)
print(#Mothers)
cityName = GetConvar("cityName", "")
Locations = {
	vector4(-813.37,-183.85,37.57,0.0),
	vector4(138.13,-1706.46,29.3,0.0),
	vector4(-1280.92,-1117.07,7.0,0.0),
	vector4(1930.54,3732.06,32.85,0.0),
	vector4(1214.2,-473.18,66.21,0.0),
	vector4(-33.61,-154.52,57.08,0.0),
    vector4(-1624.19,-1096.6,13.11,48.19), -- pier
	vector4(-1057.05,-236.18,44.01,99.22), -- jornal
	
	-- mansão exclusiva
	vector4(-276.65,6226.76,31.7,0.0),
	vector4(-3206.79,782.5,14.09,0.0),
	vector4(0.91,526.04,170.62,0.0),
	vector4(-809.32,262.2,82.8,0.0),
	vector4(-792.73,331.92,243.24,0.0),
	-- vector4(1396.0,1156.73,114.33,0.0), -- mansao05
	-- vector4(-69.79,1000.63,239.47,0.0), -- mansao06
	vector4(-2612.66,1714.67,146.32,0.0),
	vector4(-2800.08,1442.93,100.91,0.0),
	vector4(-98.05,820.69,240.21,0.0),
	-- vector4(-1034.38,312.94,71.66,0.0), -- mansao10
	vector4(-2597.8,1883.94,163.75,0.0),
	vector4(-2201.27,2660.34,4.52,0.0),
	vector4(-2677.91,1303.75,152.0,0.0),
	vector4(2534.76,6153.37,168.11,0.0),
	vector4(174.52,1714.46,227.39,0.0),
	vector4(3256.3,-128.96,20.56,0.0),
	vector4(-5873.15,1165.59,8.0,0.0),
	vector4(-1736.5,360.72,89.42,0.0),
	vector4(-1988.07,-502.27,20.73,0.0),
	vector4(-514.9,509.78,112.44,0.0),
	vector4(-887.1,48.49,53.21,0.0),
	vector4(-1472.69,-33.0,57.9,0.0),
	vector4(-1135.79,368.83,74.96,0.0),
	-- vector4(-1546.21,137.1,60.44,0.0), -- mansão25
	vector4(-1401.58,6743.35,8.96,0.0), -- iate 02
	vector4(-2101.19,-1014.6,5.88,0.0),
    vector4(2016.41,3351.8,51.59,175.75), -- Mansao13
	vector4(234.11,770.63,204.98,0.0), -- mansao 26
	vector4(-232.81,586.42,185.7,0.0), -- mansao 27
	vector4(-542.03,5003.97,159.92,0.0), -- mansao 28
	vector4(-2567.22,3732.64,18.1,0.0), -- mansao 29
	vector4(-3303.27,-1231.58,7.8,0.0), -- mansao 30
	vector4(-266.34,-736.41,125.23,0.0), -- mansao 31
	vector4(-697.01,629.62,155.19,0.0), -- mansao 32
	vector4(-633.59,944.56,243.92,0.0), -- mansao 34
	vector4(-852.15,-42.75,39.6,0.0), -- mansao 35
    vector4(-2003.16,301.27,95.72,0.0), -- mansao 36
    vector4(-753.59,815.7,216.99,0.0), -- mansao 37
    vector4(-1028.86,-1147.93,7.03,0.0), -- mansao 38
    vector4(-935.88,-945.07,7.0,0.03), -- mansao 39
    vector4(-989.26,-889.2,6.87,0.0), -- mansao 40
    vector4(-1108.27,-1070.32,6.89,0.0), -- mansao 41
    vector4(-997.55,-1102.45,7.03,0.0), -- mansao 42
    vector4(-1029.0,-997.04,7.03,0.0), -- mansao 43
    vector4(-1239.92,784.55,197.21,0.0), -- mansao 44
    vector4(-182.99,990.7,232.12,96.38), -- mansao 45
    vector4(-162.55,902.42,233.47,133.23), -- mansao 46
    vector4(-2697.96,-75.73,16.8,192.76), -- mansao 47
    vector4(792.2,3414.12,62.68,87.88), -- mansao 48
    vector4(1404.24,4706.3,140.24,116.23), -- mansao 50
    vector4(1252.3,-850.93,79.13,170.08), -- mansao 51
    vector4(3431.17,4942.08,39.87,238.12), -- mansao 52
    vector4(1175.62,874.77,147.54,187.09), -- mansao 53
    vector4(1618.24,-2624.58,53.3,328.82), -- mansao 55
    vector4(-1983.79,-221.09,89.64,334.49), -- mansao 56
    vector4(-2989.34,-386.57,19.68,255.12), -- mansao 57
    vector4(-3104.78,1534.38,37.32,99.22), -- mansao 58
    vector4(558.9,761.37,206.19,240.95), -- mansao 59
    vector4(-3348.83,570.59,17.17,209.77), -- mansao 60
    vector4(647.16,925.48,252.6,167.25), -- mansao 61
    vector4(-3008.67,2177.93,41.52,144.57), -- mansao 62
    vector4(-2295.44,4335.03,33.08,325.99), -- mansao 63
    vector4(-540.54,814.99,197.51,252.29), -- mansao 64
    vector4(-2818.24,-36.07,36.6,70.87), -- mansao65
    vector4(-2792.83,3023.32,10.16,150.24), -- mansao66
    vector4(3495.71,5131.8,9.71,286.3), -- mansao67
    vector4(-820.74,-683.34,123.42,2.84), -- mansao68
    vector4(-1285.93,722.5,195.34,121.89), -- mansao69
    vector4(-3076.21,195.35,19.61,14.18), -- mansao70
    vector4(1572.53,3747.38,39.83,36.86), -- mansao71
    vector4(-3001.16,3182.47,9.69,48.19), -- mansao72
    vector4(-2880.87,3593.5,8.76,2.84), -- mansao73
    vector4(-3948.15,-823.54,8.0,93.55), -- mansao74
    vector4(-2029.66,-667.7,6.79,130.4), -- mansao75
    vector4(-3519.25,1297.67,8.0,68.04), -- mansao76
    vector4(2819.9,-696.03,12.23,99.22), -- mansao78
    vector4(-944.86,396.32,77.81,201.26), -- mansao79
    vector4(621.54,2231.23,63.44,90.71), -- mansao80
    vector4(-1878.34,647.97,130.0,138.9), -- mansao81
    vector4(-2252.09,462.12,178.25,351.5), -- mansao82
    vector4(-2756.62,-212.59,17.34,62.37), -- mansao83
    vector4(-327.87,6370.88,31.63,48.19), -- mansao84
    vector4(558.02,6635.53,31.42,266.46), -- mansao86
    vector4(1110.18,3072.49,41.97,294.81), -- mansao87
    vector4(-2957.03,-1797.13,8.0,153.08), -- mansao88
    vector4(786.61,5747.82,702.59,277.8), -- mansao90
    vector4(-676.97,6394.74,13.02,320.32), -- mansao91
    vector4(653.91,2091.54,115.29,181.42), -- mansao92
    vector4(-3067.42,3448.61,10.03,76.54), -- mansao93
    vector4(-3425.89,102.06,12.47,218.27), -- Paradise    
    vector4(3093.8,5439.24,27.99,303.31), -- Bunker
    vector4(306.33,128.06,104.11,343.0), -- Cinema
    vector4(-3552.61,953.9,2.24,87.88), -- LuxuryPier
    vector4(742.49,-571.75,33.63,260.79), -- medusa
    vector4(5026.5,-5738.5,17.86,48.19), -- CayoPerico
    vector4(-1541.88,-1481.52,6.45,209.77), -- Atlantis
    vector4(-2571.77,-2201.8,5.05,158.75), -- Resort
    vector4(2128.11,4627.13,34.51,172.92), -- bloco 01
    vector4(2121.83,4600.41,34.51,153.08), -- bloco 02
    vector4(2105.65,4578.14,34.51,133.23), -- bloco 03
    vector4(2082.56,4562.79,34.51,110.56), -- bloco 04
    vector4(2057.24,4555.15,34.51,102.05), -- bloco 05
	vector4(1413.78,6583.97,18.53,0.0), -- pier norte
	vector4(-1895.26,3030.9,32.96,0.0)
}


CityConfig = {
    ["Santa"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(151.17,-147.92,49.58,147.66) -- mansao98
        Locations[#Locations+1] = vector4(-129.28,6637.79,31.70,217.20) -- mansao77
        Locations[#Locations+1] = vector4(-1044.27,-2792.55,21.33,150.24) -- aeroporto
        Locations[#Locations+1] = vector4(-315.27,-1313.35,31.29,0.0) -- Mecanica
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- Bombeiros
        Locations[#Locations+1] = vector4(1150.16,-1588.44,35.28,184.26) -- hp
        Locations[#Locations+1] = vector4(-937.81,-2035.23,9.4,229.61) -- dp
        Locations[#Locations+1] = vector4(2516.81,-339.66,101.89,133.23) -- dp
        Locations[#Locations+1] = vector4(2526.49,-443.32,106.91,221.11) -- dp
        Locations[#Locations+1] = vector4(2615.87,5331.01,47.55,99.22) -- prf
        Locations[#Locations+1] = vector4(-2136.47,-569.06,18.25,158.75) -- mansao49
        Locations[#Locations+1] = vector4(-3636.32,628.12,4.62,223.94) -- mansao54
        Locations[#Locations+1] = vector4(1374.57,-2111.97,47.21,0.0) -- redline
        Locations[#Locations+1] = vector4(118.88,-1302.01,29.27,0.0)
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        Locations[#Locations+1] = vector4(2799.28,2661.95,86.49,0.0)
        Locations[#Locations+1] = vector4(2133.45,-87.48,254.35,0.0)
        Locations[#Locations+1] = vector4(-1847.22,4506.26,23.52,172.92) -- QG_01
        Locations[#Locations+1] = vector4(963.31,25.13,71.46,0.0)
        Locations[#Locations+1] = vector4(1011.7,-2485.91,28.88,0.0)
        Locations[#Locations+1] = vector4(349.65,-2734.14,1.7,0.0)
        Locations[#Locations+1] = vector4(-1498.28,860.26,181.62,0.0)
        Locations[#Locations+1] = vector4(1503.34,1523.56,108.16,0.0)
        Locations[#Locations+1] = vector4(-1079.74,-255.03,44.01,0.0)
        Locations[#Locations+1] = vector4(546.04,-3118.31,6.07,0.0)
        Locations[#Locations+1] = vector4(968.54,-2390.5,22.33,0.0)
        Locations[#Locations+1] = vector4(-203.64,-1340.67,34.91,0.0)
        Locations[#Locations+1] = vector4(101.19,1218.89,207.17,0.0)
        Locations[#Locations+1] = vector4(1314.52,-743.49,66.27,238.12) -- brancos
        Locations[#Locations+1] = vector4(-1568.79,-405.16,48.26,0.0)
        Locations[#Locations+1] = vector4(1042.11,-1973.68,31.02,0.0)
        Locations[#Locations+1] = vector4(3227.57,5119.35,20.15,0.0)
        Locations[#Locations+1] = vector4(-3019.72,65.71,12.27,0.0)
        Locations[#Locations+1] = vector4(-1143.56,-1566.05,4.43,0.0)
        Locations[#Locations+1] = vector4(1795.4,425.02,173.0,0.0) -- sinaloa
        Locations[#Locations+1] = vector4(-1619.94,423.74,108.7,0.0)
        Locations[#Locations+1] = vector4(-768.23,-2585.28,17.66,0.0)
        Locations[#Locations+1] = vector4(827.81,-940.49,22.09,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- israel
        Locations[#Locations+1] = vector4(2264.17,3976.33,33.99,0.0)
        Locations[#Locations+1] = vector4(475.68,2485.13,54.64,0.0)
        Locations[#Locations+1] = vector4(-304.39,201.39,88.14,0.0)
        Locations[#Locations+1] = vector4(-1816.24,441.16,127.92,0.0) -- mansao33
        Locations[#Locations+1] = vector4(1239.01,-260.47,77.9,0.0) 
        Locations[#Locations+1] = vector4(962.0,14.92,75.74,0.0) 
        Locations[#Locations+1] = vector4(1271.82,-1763.15,53.46,0.0) 
        Locations[#Locations+1] = vector4(570.15,453.53,172.34,0.0) -- roxos
        Locations[#Locations+1] = vector4(-2263.72,351.25,174.6,0.0) -- bloods
        Locations[#Locations+1] = vector4(1049.04,888.72,220.34,0.0) -- marrons
        Locations[#Locations+1] = vector4(170.92,647.02,205.7,0.0) -- crips
        Locations[#Locations+1] = vector4(-460.66,1545.9,397.35,246.62) -- tribu
        Locations[#Locations+1] = vector4(-276.32,1966.15,164.57,0.0) -- triade
        Locations[#Locations+1] = vector4(1072.9,-1982.32,30.99,221.11)
        Locations[#Locations+1] = vector4(2164.9,5110.33,62.95,0.0) -- russia
        Locations[#Locations+1] = vector4(2195.42,5083.22,62.97,246.62) -- russia
        Locations[#Locations+1] = vector4(1253.64,-1758.23,49.35,25.52) -- mexico
        Locations[#Locations+1] = vector4(-434.3,1632.69,360.05,96.38)
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
        Locations[#Locations+1] = vector4(1883.85,-1032.93,79.21,340.16) -- AlcateiaHsT
        Locations[#Locations+1] = vector4(-324.4,-130.54,38.97,161.58) -- redline
        Locations[#Locations+1] = vector4(-154.78,-1604.45,35.03,345.83)
        Locations[#Locations+1] = vector4(-1051.78,307.3,71.66,283.47) -- inglaterra
        Locations[#Locations+1] = vector4(-304.18,-1663.31,35.62,331.66) -- groove
        Locations[#Locations+1] = vector4(925.84,1764.8,164.45,102.05) -- azuis
        Locations[#Locations+1] = vector4(905.49,372.62,112.57,107.72) -- japao
        Locations[#Locations+1] = vector4(749.07,-304.15,59.8,297.64) -- Franca
        Locations[#Locations+1] = vector4(958.66,-966.13,42.95,8.51)
        Locations[#Locations+1] = vector4(-2288.2,-284.37,47.57,144.57) -- medelin
        Locations[#Locations+1] = vector4(-590.9,-914.94,23.88,150.24) -- crips
        Locations[#Locations+1] = vector4(180.2,660.18,207.56,85.04) -- crips
        Locations[#Locations+1] = vector4(-799.74,170.38,76.73,0.0) -- mansao22
        Locations[#Locations+1] = vector4(-1624.33,-1095.78,13.09,45.36) -- pier
        Locations[#Locations+1] = vector4(-3300.65,547.85,17.44,87.88) -- QG_90
        Locations[#Locations+1] = vector4(-1239.65,798.95,192.91,102.05) -- QG_91
        Locations[#Locations+1] = vector4(3083.87,5455.63,31.8,206.93)
        Locations[#Locations+1] = vector4(347.78,235.52,97.98,68.04)
        Locations[#Locations+1] = vector4(3496.7,-3294.52,10.62,25.52) -- IlhaBatman
        Locations[#Locations+1] = vector4(918.84,1771.9,163.98,218.27) -- QG_07
        Locations[#Locations+1] = vector4(-1255.56,-1705.01,7.85,41.29) -- 

    end,
    ["CidadeNobre"] = function()
        Locations[#Locations+1] = vector4(-413.07,4382.68,62.83,0.0) -- mansao94
        Locations[#Locations+1] = vector4(-123.45,6601.68,33.83,124.73) -- mansao51
        Locations[#Locations+1] = vector4(-1471.78,-1763.05,10.06,353.85) -- mansao70
        Locations[#Locations+1] = vector4(-2772.57,-938.68,16.06,148.96) -- mansao71
        Locations[#Locations+1] = vector4(-1417.59,-604.61,30.72,3.12) -- MajorBahamas
        Locations[#Locations+1] = vector4(-3082.98,3370.39,17.32,276.96) -- mansao66
        Locations[#Locations+1] = vector4(-3541.86,4619.74,6.73,121.61) -- mansao96
        Locations[#Locations+1] = vector4(1041.70,3667.59,39.05,198.87) -- mansao16
        Locations[#Locations+1] = vector4(-1506.80,848.87,181.60,206.09) 
        Locations[#Locations+1] = vector4(1149.04,-1591.67,35.28,144.57) -- hp
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- Bombeiros
        Locations[#Locations+1] = vector4(2517.99,-340.69,101.89,141.744) -- Militar
        Locations[#Locations+1] = vector4(-438.96,6007.92,36.99,17.01) -- civil
        Locations[#Locations+1] = vector4(-783.65,-1216.61,10.38,136.07) -- Tatica
        Locations[#Locations+1] = vector4(-1895.26,3030.9,32.96,334.49) -- Exercito
        Locations[#Locations+1] = vector4(2615.87,5331.01,47.55,99.22) -- prf        
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        Locations[#Locations+1] = vector4(125.15,-1293.04,21.11,144.57) -- QG_143
        Locations[#Locations+1] = vector4(2000.66,3357.78,51.73,176.85) -- QG_150
        Locations[#Locations+1] = vector4(1301.38,-1757.18,54.66,279.62)  
        Locations[#Locations+1] = vector4(-286.62,217.79,78.82,0.0)
        Locations[#Locations+1] = vector4(3032.21,-4190.17,9.86,164.41)
        Locations[#Locations+1] = vector4(3227.56,5119.35,20.15,0.0)
        Locations[#Locations+1] = vector4(962.73,25.73,71.46,0.0)
        Locations[#Locations+1] = vector4(414.66,-1506.0,33.8,0.0)
        Locations[#Locations+1] = vector4(966.18,-2389.58,22.33,0.0)
        -- Locations[#Locations+1] = vector4(-1874.42,2068.55,145.57,0.0)
        Locations[#Locations+1] = vector4(350.01,-2735.36,1.72,0.0)
        Locations[#Locations+1] = vector4(-149.73,-1605.95,35.01,0.0)
        Locations[#Locations+1] = vector4(1024.63,-2541.62,28.29,0.0)
        Locations[#Locations+1] = vector4(-204.17,-1340.75,34.91,0.0)
        Locations[#Locations+1] = vector4(1081.13,-1980.3,31.48,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(805.22,1838.87,140.58,306.15) -- QG_07
        Locations[#Locations+1] = vector4(-288.71,1993.23,166.14,153.08) -- israel
        Locations[#Locations+1] = vector4(-1906.11,2078.0,140.41,215.44) -- russia
        Locations[#Locations+1] = vector4(1396.13,-713.57,70.58,0.0) -- brancos
        Locations[#Locations+1] = vector4(-1051.52,309.16,66.99,0.0) -- QG_19
        Locations[#Locations+1] = vector4(1034.84,945.71,222.03,0.0) -- playboy        
        -- Locations[#Locations+1] = vector4(-2792.09,2254.29,24.01,311.82) --bloods secundario
        Locations[#Locations+1] = vector4(-2275.27,330.11,174.6,204.1) -- ballas
        Locations[#Locations+1] = vector4(-1541.09,333.79,87.25,240.95) -- luxor
        -- Locations[#Locations+1] = vector4(1252.95,-1720.72,56.45,65.2) -- LosAztecas
        Locations[#Locations+1] = vector4(1028.31,-2550.22,32.28,351.5) -- Gang8
        Locations[#Locations+1] = vector4(748.74,-291.3,59.68,311.82) -- Campinho
        Locations[#Locations+1] = vector4(-2275.46,330.2,174.6,19.85) -- Redline
        Locations[#Locations+1] = vector4(-2275.46,330.2,174.6,19.85) -- Redline
        Locations[#Locations+1] = vector4(1473.66,6545.77,18.65,85.04) -- pier norte
        Locations[#Locations+1] = vector4(-593.57,-932.96,17.59,354.34) -- Anonymous
        Locations[#Locations+1] = vector4(-2807.41,2266.52,24.11,325.99) -- qg 71
        Locations[#Locations+1] = vector4(2592.6,3683.02,106.57,31.19) -- Morro-do-Sacola
        Locations[#Locations+1] = vector4(1443.91,1132.38,114.33,184.26)
        Locations[#Locations+1] = vector4(-154.37,8265.74,12.82,107.72) -- iate
        Locations[#Locations+1] = vector4(-1785.17,-1370.3,11.88,147.41) -- iate
        Locations[#Locations+1] = vector4(-1889.03,-1167.2,11.73,45.36) -- iate
        Locations[#Locations+1] = vector4(-2187.99,-605.55,8.8,229.61)
        Locations[#Locations+1] = vector4(3498.52,4991.44,8.96,34.02)
        Locations[#Locations+1] = vector4(124.36,-1295.19,21.11,204.1) -- putaria
        Locations[#Locations+1] = vector4(-4512.39,-98.33,9.86,161.58)
        Locations[#Locations+1] = vector4(-433.25,1637.31,360.05,107.72)
        Locations[#Locations+1] = vector4(894.37,361.36,112.46,73.71) -- QG_17
        Locations[#Locations+1] = vector4(151.24,-147.95,49.57,340.16) -- QG_106
        Locations[#Locations+1] = vector4(783.13,5739.04,702.57,348.67) -- Mansao95
        Locations[#Locations+1] = vector4(-773.92,32.51,40.64,345.83) -- Igreja
        Locations[#Locations+1] = vector4(956.65,-969.10,43.40,137.45)
        
    end,
    ["Caravelas"] = function()
        Locations[#Locations+1] = vector4(462.22,-999.20,30.69,174.18) -- dp militar praça
        Locations[#Locations+1] = vector4(-413.07,4382.68,62.83,0.0) -- mansao94
        Locations[#Locations+1] = vector4(1041.70,3667.59,39.05,198.87) -- mansao16
        Locations[#Locations+1] = vector4(1149.04,-1591.67,35.28,144.57) -- hp
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- Bombeiros
        Locations[#Locations+1] = vector4(2517.99,-340.69,101.89,141.744) -- Militar
        Locations[#Locations+1] = vector4(-438.96,6007.92,36.99,17.01) -- civil
        Locations[#Locations+1] = vector4(-783.65,-1216.61,10.38,136.07) -- Tatica
        Locations[#Locations+1] = vector4(-1895.26,3030.9,32.96,334.49) -- Exercito
        Locations[#Locations+1] = vector4(2615.87,5331.01,47.55,99.22) -- prf        
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        Locations[#Locations+1] = vector4(125.15,-1293.04,21.11,144.57) -- QG_143
        Locations[#Locations+1] = vector4(-286.62,217.79,78.82,0.0)
        Locations[#Locations+1] = vector4(3032.21,-4190.17,9.86,164.41)
        Locations[#Locations+1] = vector4(3227.56,5119.35,20.15,0.0)
        Locations[#Locations+1] = vector4(962.73,25.73,71.46,0.0)
        Locations[#Locations+1] = vector4(414.66,-1506.0,33.8,0.0)
        Locations[#Locations+1] = vector4(966.18,-2389.58,22.33,0.0)
        -- Locations[#Locations+1] = vector4(-1874.42,2068.55,145.57,0.0)
        Locations[#Locations+1] = vector4(350.01,-2735.36,1.72,0.0)
        Locations[#Locations+1] = vector4(-149.73,-1605.95,35.01,0.0)
        Locations[#Locations+1] = vector4(1024.63,-2541.62,28.29,0.0)
        Locations[#Locations+1] = vector4(-204.17,-1340.75,34.91,0.0)
        Locations[#Locations+1] = vector4(1081.13,-1980.3,31.48,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(805.22,1838.87,140.58,306.15) -- QG_07
        Locations[#Locations+1] = vector4(-288.71,1993.23,166.14,153.08) -- israel
        Locations[#Locations+1] = vector4(-1906.11,2078.0,140.41,215.44) -- russia
        Locations[#Locations+1] = vector4(1396.13,-713.57,70.58,0.0) -- brancos
        Locations[#Locations+1] = vector4(-1051.52,309.16,66.99,0.0) -- QG_19
        Locations[#Locations+1] = vector4(1034.84,945.71,222.03,0.0) -- playboy        
        -- Locations[#Locations+1] = vector4(-2792.09,2254.29,24.01,311.82) --bloods secundario
        Locations[#Locations+1] = vector4(-2275.27,330.11,174.6,204.1) -- ballas
        Locations[#Locations+1] = vector4(-1541.09,333.79,87.25,240.95) -- luxor
        -- Locations[#Locations+1] = vector4(1252.95,-1720.72,56.45,65.2) -- LosAztecas
        Locations[#Locations+1] = vector4(1028.31,-2550.22,32.28,351.5) -- Gang8
        Locations[#Locations+1] = vector4(748.74,-291.3,59.68,311.82) -- Campinho
        Locations[#Locations+1] = vector4(-2275.46,330.2,174.6,19.85) -- Redline
        Locations[#Locations+1] = vector4(-2275.46,330.2,174.6,19.85) -- Redline
        Locations[#Locations+1] = vector4(1473.66,6545.77,18.65,85.04) -- pier norte
        Locations[#Locations+1] = vector4(-593.57,-932.96,17.59,354.34) -- Anonymous
        Locations[#Locations+1] = vector4(-2807.41,2266.52,24.11,325.99) -- qg 71
        Locations[#Locations+1] = vector4(2592.6,3683.02,106.57,31.19) -- Morro-do-Sacola
        Locations[#Locations+1] = vector4(1443.91,1132.38,114.33,184.26)
        Locations[#Locations+1] = vector4(-154.37,8265.74,12.82,107.72) -- iate
        Locations[#Locations+1] = vector4(-1785.17,-1370.3,11.88,147.41) -- iate
        Locations[#Locations+1] = vector4(-1889.03,-1167.2,11.73,45.36) -- iate
        Locations[#Locations+1] = vector4(-2187.99,-605.55,8.8,229.61)
        Locations[#Locations+1] = vector4(3498.52,4991.44,8.96,34.02)
        Locations[#Locations+1] = vector4(124.36,-1295.19,21.11,204.1) -- putaria
        Locations[#Locations+1] = vector4(-4512.39,-98.33,9.86,161.58)
        Locations[#Locations+1] = vector4(-433.25,1637.31,360.05,107.72)
        Locations[#Locations+1] = vector4(894.37,361.36,112.46,73.71) -- QG_17
        Locations[#Locations+1] = vector4(151.24,-147.95,49.57,340.16) -- QG_106
        Locations[#Locations+1] = vector4(783.13,5739.04,702.57,348.67) -- Mansao95
        Locations[#Locations+1] = vector4(-773.92,32.51,40.64,345.83) -- Igreja
        
    end,
    ["Kingdom"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(-1736.97,361.23,89.42,307.29) -- QG_154
        Locations[#Locations+1] = vector4(-527.70,508.16,108.12,298.69) -- QG_158
        Locations[#Locations+1] = vector4(1185.60,870.89,144.00,269.82) -- QG_159
        Locations[#Locations+1] = vector4(1149.04,-1591.67,35.28,144.57) -- hp
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- Bombeiros
        Locations[#Locations+1] = vector4(2517.99,-340.69,101.89,141.744) -- Militar
        Locations[#Locations+1] = vector4(-438.96,6007.92,36.99,17.01) -- civil
        Locations[#Locations+1] = vector4(-783.65,-1216.61,10.38,136.07) -- Tatica
        Locations[#Locations+1] = vector4(-1895.26,3030.9,32.96,334.49) -- Exercito
        Locations[#Locations+1] = vector4(2615.87,5331.01,47.55,99.22) -- prf
        Locations[#Locations+1] = vector4(810.04,1783.18,150.52,198.43)
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        Locations[#Locations+1] = vector4(-2806.58,2266.78,24.11,136.07) -- QG_124
        Locations[#Locations+1] = vector4(805.22,1838.87,140.58,306.15) -- QG_126
        Locations[#Locations+1] = vector4(-286.62,217.79,78.82,0.0)
        Locations[#Locations+1] = vector4(3032.21,-4190.17,9.86,164.41)
        Locations[#Locations+1] = vector4(3227.56,5119.35,20.15,0.0)
        Locations[#Locations+1] = vector4(962.73,25.73,71.46,0.0)
        Locations[#Locations+1] = vector4(414.66,-1506.0,33.8,0.0)
        Locations[#Locations+1] = vector4(966.18,-2389.58,22.33,0.0)
        -- Locations[#Locations+1] = vector4(-1874.42,2068.55,145.57,0.0)
        Locations[#Locations+1] = vector4(350.01,-2735.36,1.72,0.0)
        Locations[#Locations+1] = vector4(-149.73,-1605.95,35.01,0.0)
        Locations[#Locations+1] = vector4(1024.63,-2541.62,28.29,0.0)
        Locations[#Locations+1] = vector4(-204.17,-1340.75,34.91,0.0)
        Locations[#Locations+1] = vector4(1081.13,-1980.3,31.48,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(102.51,3619.48,40.49,0.0) 
        Locations[#Locations+1] = vector4(-288.71,1993.23,166.14,153.08) -- israel
        Locations[#Locations+1] = vector4(-1906.11,2078.0,140.41,215.44) -- russia
        Locations[#Locations+1] = vector4(1396.13,-713.57,70.58,0.0) -- brancos
        Locations[#Locations+1] = vector4(-1051.52,309.16,66.99,0.0) -- gringa
        Locations[#Locations+1] = vector4(1034.84,945.71,222.03,0.0) -- playboy        
        -- Locations[#Locations+1] = vector4(-2792.09,2254.29,24.01,311.82) --bloods secundario
        Locations[#Locations+1] = vector4(-2275.27,330.11,174.6,204.1) -- ballas
        Locations[#Locations+1] = vector4(-1541.09,333.79,87.25,240.95) -- luxor
        Locations[#Locations+1] = vector4(905.49,372.62,112.57,107.72) -- japao
        -- Locations[#Locations+1] = vector4(1252.95,-1720.72,56.45,65.2) -- LosAztecas
        Locations[#Locations+1] = vector4(-1051.84,309.0,66.99,215.44) -- Inglaterra
        Locations[#Locations+1] = vector4(1028.31,-2550.22,32.28,351.5) -- Gang8
        Locations[#Locations+1] = vector4(748.74,-291.3,59.68,311.82) -- Campinho
        Locations[#Locations+1] = vector4(-2275.46,330.2,174.6,19.85) -- Redline
        Locations[#Locations+1] = vector4(-2275.46,330.2,174.6,19.85) -- Redline
        Locations[#Locations+1] = vector4(1473.66,6545.77,18.65,85.04) -- pier norte
        Locations[#Locations+1] = vector4(-593.57,-932.96,17.59,354.34) -- Anonymous
        Locations[#Locations+1] = vector4(-2807.41,2266.52,24.11,325.99) -- qg 71
        Locations[#Locations+1] = vector4(2592.6,3683.02,106.57,31.19) -- Morro-do-Sacola
        Locations[#Locations+1] = vector4(1443.91,1132.38,114.33,184.26)
        Locations[#Locations+1] = vector4(-154.37,8265.74,12.82,107.72) -- iate
        Locations[#Locations+1] = vector4(-1785.17,-1370.3,11.88,147.41) -- iate
        Locations[#Locations+1] = vector4(-1889.03,-1167.2,11.73,45.36) -- iate
        Locations[#Locations+1] = vector4(-2187.99,-605.55,8.8,229.61)
        Locations[#Locations+1] = vector4(3498.52,4991.44,8.96,34.02)
        Locations[#Locations+1] = vector4(124.36,-1295.19,21.11,204.1) -- putaria
        Locations[#Locations+1] = vector4(-4512.39,-98.33,9.86,161.58)
        Locations[#Locations+1] = vector4(-433.25,1637.31,360.05,107.72)

    end,
    ["Universo"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(2328.16,4867.83,47.51,43.22) -- mansao97
        Locations[#Locations+1] = vector4(-1472.69,-32.89,57.89,34.85) -- mansao23
        Locations[#Locations+1] = vector4(4886.98,-5672.93,80.81,114.87) -- mansao96
        Locations[#Locations+1] = vector4(-955.6,-2051.55,12.92,25.52) -- dp
        Locations[#Locations+1] = vector4(837.99,-1286.90,19.85,180.30) -- Tatica
        Locations[#Locations+1] = vector4(2615.87,5331.01,47.55,99.22) -- prf
        Locations[#Locations+1] = vector4(1149.04,-1591.67,35.28,144.57) -- hp
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- Bombeiros
        Locations[#Locations+1] = vector4(2517.99,-340.69,101.89,141.744) -- Militar
        Locations[#Locations+1] = vector4(-438.96,6007.92,36.99,17.01) -- civil
        Locations[#Locations+1] = vector4(-783.65,-1216.61,10.38,136.07) -- Federal
        Locations[#Locations+1] = vector4(-1895.26,3030.9,32.96,334.49) -- Exercito
        Locations[#Locations+1] = vector4(-286.62,217.79,78.82,0.0)
        Locations[#Locations+1] = vector4(3227.56,5119.35,20.15,0.0)
        Locations[#Locations+1] = vector4(962.73,25.73,71.46,0.0)
        Locations[#Locations+1] = vector4(414.66,-1506.0,33.8,0.0)
        Locations[#Locations+1] = vector4(966.18,-2389.58,22.33,0.0)
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        -- Locations[#Locations+1] = vector4(-1874.42,2068.55,145.57,0.0)
        Locations[#Locations+1] = vector4(350.01,-2735.36,1.72,0.0)
        Locations[#Locations+1] = vector4(-1816.39,441.1,127.92,0.0)
        Locations[#Locations+1] = vector4(-149.73,-1605.95,35.01,0.0)
        Locations[#Locations+1] = vector4(1024.63,-2541.62,28.29,0.0)
        Locations[#Locations+1] = vector4(-204.17,-1340.75,34.91,0.0)
        Locations[#Locations+1] = vector4(1081.13,-1980.3,31.48,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(102.51,3619.48,40.49,0.0) 
        Locations[#Locations+1] = vector4(-288.71,1993.23,166.14,153.08) -- israel
        Locations[#Locations+1] = vector4(-1906.11,2078.0,140.41,215.44) -- russia
        Locations[#Locations+1] = vector4(1396.13,-713.57,70.58,0.0) -- brancos
        Locations[#Locations+1] = vector4(-1051.52,309.16,66.99,0.0) -- gringa
        Locations[#Locations+1] = vector4(1034.84,945.71,222.03,0.0) -- playboy
        Locations[#Locations+1] = vector4(-1520.0,835.63,186.14,297.64)
        -- Locations[#Locations+1] = vector4(-2792.09,2254.29,24.01,311.82) --bloods secundario
        Locations[#Locations+1] = vector4(-2275.27,330.11,174.6,204.1) -- ballas
        Locations[#Locations+1] = vector4(-1541.09,333.79,87.25,240.95) -- luxor
        Locations[#Locations+1] = vector4(886.42,352.9,112.56,226.78) -- qg_17
        -- Locations[#Locations+1] = vector4(1252.95,-1720.72,56.45,65.2) -- LosAztecas
        Locations[#Locations+1] = vector4(-1051.84,309.0,66.99,215.44) -- Inglaterra
        Locations[#Locations+1] = vector4(1028.31,-2550.22,32.28,351.5) -- Gang8
        Locations[#Locations+1] = vector4(748.74,-291.3,59.68,311.82) -- Campinho
        Locations[#Locations+1] = vector4(-605.85,-915.78,23.88,269.3) -- Redline
        Locations[#Locations+1] = vector4(1473.66,6545.77,18.65,85.04) -- pier norte
        Locations[#Locations+1] = vector4(-380.94,1629.38,349.53,280.63) -- Gang4
        Locations[#Locations+1] = vector4(-2804.72,2262.15,24.11,232.45) -- Noxus
        Locations[#Locations+1] = vector4(1839.62,2569.82,46.02,354.34) -- policia presidio
        Locations[#Locations+1] = vector4(-799.74,170.38,76.73,0.0) -- mansao22
        Locations[#Locations+1] = vector4(2505.79,3592.01,102.65,136.07) -- qg_104
        Locations[#Locations+1] = vector4(151.24,-147.95,49.57,340.16) -- QG_106

    end,
    ["Grande"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(1125.55,-1541.56,35.03,0.0) -- hp
        Locations[#Locations+1] = vector4(2516.84,-339.54,101.89,0.0) -- dp
        Locations[#Locations+1] = vector4(551.87,-2768.72,6.08,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- israel
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
    end,
    ["Galaxy"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(1125.55,-1541.56,35.03,0.0) -- hp
        Locations[#Locations+1] = vector4(2516.84,-339.54,101.89,0.0) -- dp
        Locations[#Locations+1] = vector4(2750.64,2721.96,55.84,0.0)
        Locations[#Locations+1] = vector4(-1816.69,441.57,127.92,0.0)
        Locations[#Locations+1] = vector4(2134.91,-89.24,254.35,0.0)
        Locations[#Locations+1] = vector4(1018.46,-2551.09,28.29,0.0)
        Locations[#Locations+1] = vector4(-204.85,-1340.99,34.91,0.0)
        Locations[#Locations+1] = vector4(825.97,-953.76,22.09,0.0)
        Locations[#Locations+1] = vector4(1263.47,-1574.8,58.35,0.0) -- crips
        Locations[#Locations+1] = vector4(2348.72,5619.76,72.99,0.0) -- sinaloa
        Locations[#Locations+1] = vector4(3227.83,5119.8,20.15,0.0) -- china
        Locations[#Locations+1] = vector4(-3019.81,56.3,11.95,0.0) -- crips
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- israel
        Locations[#Locations+1] = vector4(1286.73,-1761.87,54.21,0.0)
        Locations[#Locations+1] = vector4(-1540.86,333.67,87.25,0.0) -- frança
        Locations[#Locations+1] = vector4(-1620.09,423.83,108.7,277.8) -- frança
        Locations[#Locations+1] = vector4(170.92,647.02,205.7,0.0) -- bahamas
        Locations[#Locations+1] = vector4(1392.2,-744.72,67.43,255.12) -- cartel
        Locations[#Locations+1] = vector4(1238.91,-260.45,77.9,291.97) -- barragem
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
        Locations[#Locations+1] = vector4(1049.02,888.97,220.34,45.36) -- hellsangels
        Locations[#Locations+1] = vector4(1346.91,-715.34,67.74,164.41) -- Brancos
        Locations[#Locations+1] = vector4(902.34,368.23,112.56,229.61) -- Mexicos
    end,
    ["Gaules"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(1125.55,-1541.56,35.03,0.0) -- hp
        Locations[#Locations+1] = vector4(2516.84,-339.54,101.89,0.0) -- dp
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- israel
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
    end,
    ["Fronteira"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(1125.55,-1541.56,35.03,0.0) -- hp
        Locations[#Locations+1] = vector4(2516.84,-339.54,101.89,0.0) -- dp
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- israel
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
    end,
    ["Alexandria"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(2505.79,3592.01,102.65,136.07) -- QG_104
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- bombeiros
        Locations[#Locations+1] = vector4(1150.34,-1589.47,35.28,178.59) -- hp
        Locations[#Locations+1] = vector4(2516.84,-339.54,101.89,0.0) -- dp
        Locations[#Locations+1] = vector4(2516.81,-339.66,101.89,133.23) -- dp
        Locations[#Locations+1] = vector4(-1497.27,855.9,181.62,0.0) -- mexico
        Locations[#Locations+1] = vector4(428.46,-1505.47,33.8,0.0) -- italia
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- israel
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
        Locations[#Locations+1] = vector4(-799.74,170.38,76.73,0.0) -- mansao22
        Locations[#Locations+1] = vector4(-938.07,-2035.04,9.4,232.45)
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        Locations[#Locations+1] = vector4(-82.58,824.06,235.71,65.2)
        Locations[#Locations+1] = vector4(-783.65,-1216.61,10.38,136.07) -- Tatica
        Locations[#Locations+1] = vector4(1474.33,6546.1,18.67,121.89) -- pier norte
        Locations[#Locations+1] = vector4(2614.52,5330.23,47.57,25.52 ) -- Prf
    end,
    ["Maresia"] = function()
        Locations[#Locations+1] = vector4(-425.97,4382.95,61.37,263.63) -- mansao94
        Locations[#Locations+1] = vector4(1149.04,-1591.67,35.28,144.57) -- hp
        Locations[#Locations+1] = vector4(-628.36,-134.14,43.22,269.3) -- Bombeiros
        Locations[#Locations+1] = vector4(2517.99,-340.69,101.89,141.74) -- Militar
        Locations[#Locations+1] = vector4(-699.89,-1429.98,5.02,33.14) -- Militar
        Locations[#Locations+1] = vector4(-772.24,-1316.60,9.60,358.96) -- Militar
        Locations[#Locations+1] = vector4(-438.96,6007.92,36.99,17.01) -- civil
        Locations[#Locations+1] = vector4(-704.70,-1301.34,5.40,134.32) -- civil
        Locations[#Locations+1] = vector4(-783.65,-1216.61,10.38,136.07) -- Militar
        Locations[#Locations+1] = vector4(-796.50,-1354.74,5.15,194.55) -- Tatica
        Locations[#Locations+1] = vector4(-1895.26,3030.9,32.96,334.49) -- Exercito
        Locations[#Locations+1] = vector4(2615.87,5331.01,47.55,99.22) -- Prf
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- Jamakeikos
        Locations[#Locations+1] = vector4(-286.62,217.79,78.82,0.0)
        Locations[#Locations+1] = vector4(-213.3,-1328.58,23.13,181.42) -- QG_46
        Locations[#Locations+1] = vector4(3227.56,5119.35,20.15,0.0)
        Locations[#Locations+1] = vector4(962.73,25.73,71.46,0.0)
        Locations[#Locations+1] = vector4(414.66,-1506.0,33.8,0.0)
        Locations[#Locations+1] = vector4(966.18,-2389.58,22.33,0.0)
        -- Locations[#Locations+1] = vector4(-1874.42,2068.55,145.57,0.0)
        Locations[#Locations+1] = vector4(350.01,-2735.36,1.72,0.0)
        Locations[#Locations+1] = vector4(-1816.39,441.1,127.92,0.0)
        Locations[#Locations+1] = vector4(-149.73,-1605.95,35.01,0.0)
        Locations[#Locations+1] = vector4(1024.63,-2541.62,28.29,0.0)
        Locations[#Locations+1] = vector4(-204.17,-1340.75,34.91,0.0)
        Locations[#Locations+1] = vector4(1081.13,-1980.3,31.48,0.0)
        Locations[#Locations+1] = vector4(1460.09,1310.04,117.44,0.0) -- cartel
        Locations[#Locations+1] = vector4(2751.62,2721.18,55.84,0.0) -- sindicato
        Locations[#Locations+1] = vector4(2516.14,4087.9,38.62,0.0) -- Jamakeikos
        Locations[#Locations+1] = vector4(424.77,-1501.52,33.8,0.0)
        Locations[#Locations+1] = vector4(-1672.81,432.98,108.6,0.0) -- playboy
        Locations[#Locations+1] = vector4(-2774.05,2509.77,3.96,2.84) -- Noxus
        Locations[#Locations+1] = vector4(-1527.29,839.78,181.59,96.38) -- russia
        Locations[#Locations+1] = vector4(124.11,-1294.23,21.11,121.89)
        Locations[#Locations+1] = vector4(905.49,372.62,112.57,107.72) -- japao
        Locations[#Locations+1] = vector4(-1051.78,307.3,71.66,283.47) -- inglaterra
        Locations[#Locations+1] = vector4(748.74,-291.3,59.68,311.82) -- Campinho
        Locations[#Locations+1] = vector4(940.44,50.88,80.29,147.41) -- Cassino
        Locations[#Locations+1] = vector4(-536.18,-183.24,38.22,195.6) -- juridico
        Locations[#Locations+1] = vector4(-799.74,170.38,76.73,0.0) -- mansao22
        Locations[#Locations+1] = vector4(-69.43,1002.38,239.48,132.32) -- QG_54
        Locations[#Locations+1] = vector4(151.24,-147.95,49.57,340.16) -- QG_106
    end,
}


CreateThread(function()
    if CityConfig[cityName] then
        CityConfig[cityName]()
    end
end)

PreSets = {
    [`mp_m_freemode_01`] = {
        {
            id = 1,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/1.png",
            preset = '[0,18,0.55,26,10,0,-1,-1,-1,122,0,0,0,0,0,0,0,0,13,0.99,0,19,0.99,0,28,0.68,0,-0.92,0.38,0.69,0.65,-0.22,0,0.3,0,-0.19,0.25,-0.63,-0.53,0.32,0.37,-0.94,0.16,0.99,0.07,-0.37,0,0,0,0]',
        },
        {
            id = 2,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/2.png",
            preset = '[0,6,0.5,12,6,14,-1,-1,-1,43,0,0,0,0,0,0,0,0,30,0.99,0,0,0,0,10,0.99,0,-0.99,0.84,0.86,0.46,-0.11,0,-0.41,0,0,-0.17,-0.72,-0.52,0.21,-0.46,0.04,0.6,0.99,0,0,0,0,0,0]',
        },
        {
            id = 3,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/3.png",
            preset = '[0,8,0.5,31,3,0,-1,-1,-1,36,0,0,0,0,0,0,0,0,11,0.99,0,16,0.88,0,25,0.99,0,-0.88,0.59,0.99,0.99,-0.05,0,0.03,0,-0.42,0,0,0,0,0,-0.97,0.6,0.71,0,0,0,0,0,0]',
        },
        {
            id = 4,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/4.png",
            preset = '[0,8,0.5,8,10,13,-1,-1,-1,105,51,25,0,0,0,0,0,0,30,0.99,7,23,0.88,25,24,0.99,52,-0.51,0.3,0.74,0.93,-0.19,0,0.3,0,0,0,-0.89,-0.2,0.57,0.37,-0.76,0,0.99,0,0,0,0,0,0]',
        },
        {
            id = 5,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/5.png",
            preset = '[0,0,0.3,8,9,0,-1,-1,-1,148,0,0,0,0,0,0,0,0,30,0.99,0,3,0.88,0,11,0.99,0,-0.03,0.65,0.9,0.72,-0.29,0,-0.12,0,0,0,-0.63,-0.14,0.21,0.37,-0.99,0.77,0.99,0,0,0,0,0,0]',
        },
        {
            id = 6,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/6.png",
            preset = '[8,16,0.55,27,12,23,-1,-1,-1,83,49,30,0,0,0,0,0,0,14,0.99,19,20,0.99,22,13,0.99,24,-0.82,0.51,0.82,0.53,-0.34,0,-0.09,0.07,0,0.04,0.02,0.02,0.02,0.57,-0.83,0.6,0.99,0.21,0,0,0,0,0]',
        },
        {
            id = 7,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/7.png",
            preset = '[11,0,0.5,0,5,0,-1,-1,-1,73,0,0,0,0,0,0,0,0,30,0.99,0,13,0.99,0,9,0.99,0,-0.92,0.43,0.99,0.85,-0.1,0,-0.08,0,0.16,0,-0.72,0,0,0,-0.09,0.36,0.99,0.03,0,0,0,0,0]',
        },
        {
            id = 8,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/8.png",
            preset = '[13,21,0.55,5,2,0,-1,-1,-1,104,60,0,0,0,0,0,0,0,22,0.99,0,9,0.99,0,-1,0,0,0.54,0.84,0.72,0.14,-0.24,0,-1,-0.3,0,-1,-0.77,-0.34,0.21,0.37,-1,-1,0.71,0.43,0.08,0,0,0,0]',
        },
        {
            id = 9,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/9.png",
            preset = '[11,4,0.7,1,12,0,-1,-1,-1,79,45,29,0,0,0,0,0,0,2,0.99,0,20,0.99,59,-1,0,0,-0.67,0.84,0.72,0.27,0,0,-1,-0.44,-1,-1,-0.72,-0.52,0.21,0.37,-0.45,0.99,0.03,0.43,-1,0,0,0,0]',
        },
        {
            id = 10,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/10.png",
            preset = '[21,19,0.7,4,12,0,-1,-1,-1,102,61,0,0,0,0,0,0,0,30,0.99,0,20,0.99,0,-1,0,0,-0.83,0.84,0.72,0.57,0,0,-1,-0.3,-1,-0.58,-0.72,-0.52,0.21,0.37,0,0.6,-0.2,-0.51,-1,0,0,0,0]',
        },
        {
            id = 11,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/11.png",
            preset = '[6,21,0,12,0,0,-1,-1,-1,102,61,0,0,0,0,0,0,0,33,0.99,0,0,0,0,8,0,0,-1,0,-0.23,0.58,0,0,-1,-1,-1,-1,0,0,-0.4,-1,0.99,-1,0.99,-1,-1,0,0,0,0]',
        },
        {
            id = 12,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/12.png",
            preset = '[7,0,1,11,0,0,-1,-1,-1,43,29,0,0,0,0,0,0,0,14,0.99,28,0,0.88,0,-1,0,0,-1,0.84,0,0,-0.52,0,-0.59,-0.14,0,-0.04,0.08,-0.87,0,0.23,-1,0,-0.01,-0.08,-0.02,0,1,0,0]',
        },
        {
            id = 13,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/13.png",
            preset = '[19,2,0,12,2,0,-1,-1,-1,157,55,0,0,0,0,0,0.17,35,30,0.99,0,3,0.88,0,0,0,0,0.26,0,0.99,0.16,0.04,0,0.37,0.99,0,-1,0,0,-1,-1,-1,0.99,0,0.99,0.72,0,0,0,0]',
        },
        {
            id = 14,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/14.png",
            preset = '[13,21,0.5,2,1,0,-1,-1,-1,86,50,29,0,0,0,0,0.09,35,33,0.99,20,7,0.88,29,0,0,0,-1,0,0.43,-0.24,0,0,0,0.7,-0.2,0.57,0.49,0.25,0.37,0.99,-0.41,0.99,0,-1,-0.1,0,0,0,0]',
        },
        {
            id = 15,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/masculino/15.png",
            preset = '[7,20,0.4,12,5,0,-1,-1,-1,25,55,0,0,0,0,0,0.06,35,33,0.99,0,9,0.99,59,0,0,0,0.99,0.69,0,-1,0.99,0,0.99,-1,0.2,-0.39,-0.28,0.99,0.93,-1,-1,0.99,0,0,0.62,0,0,0,0]',
        },
    },
    [`mp_f_freemode_01`] = {
        {
            id = 11,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/1.png",
            preset = '[16,0,1,2,12,0,-1,-1,-1,171,15,14,3,0.25,33,5,0.28,34,19,0.99,15,0,0,0,1,0.6,34,-0.73,0.44,0.35,0,-0.28,0,-1,0.24,-0.87,0.34,0.02,-0.43,0.23,-1,-0.34,-1,0.85,0.99,0.03,1,0,0,0]',
        },
        {
            id = 2,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/2.png",
            preset = '[23,21,0.9,7,11,0,11,-1,-1,62,15,29,15,0.99,0,4,0,0,10,0.4,0,0,0,0,0,0,0,-0.89,0,0.84,0.57,-0.37,0,-0.28,-0.29,-0.54,-1,-0.84,0.99,-0.18,0.24,0.74,-1,0.13,-1,-1,1,0,0,18]',
        },
        {
            id = 3,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/3.png",
            preset = '[0,0,1,2,12,0,-1,-1,-1,89,28,28,0,0,0,4,0,0,2,0.99,28,0,0,0,1,0,10,0.12,0.07,0.76,0.47,-0.12,0.99,-1,-0.14,-0.13,-0.4,0.04,-0.24,-0.32,0.18,0.24,-1,-0.38,0.23,0.28,1,0,0,0]',
        },
        {
            id = 4,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/4.png",
            preset = '[23,21,0.65,8,0,0,-1,3,-1,12,6,21,0,0.99,0,1,0.99,24,7,0.99,0,0,0,0,16,0.99,0,-0.89,0,0.84,0.57,-0.37,0,-0.28,-0.29,-0.54,0.12,-0.84,-0.19,-0.18,0.24,0.64,-1,-0.22,-1,-0.33,1,0,0,0]',
        },
        {
            id = 5,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/5.png",
            preset = '[17,6,1,5,12,0,-1,-1,-1,165,0,0,3,0.26,24,4,0.42,53,17,0.99,26,0,0,0,1,0.93,34,-1,0.32,-0.26,0,-0.32,0,-1,0,0,0.21,0.28,-0.59,-0.31,-1,-1,-1,-0.38,0.99,-1,1,0,0,0]',
        },
        {
            id = 6,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/6.png",
            preset = '[7,0,1,9,10,0,-1,-1,-1,17,61,21,0,0,0,0,0,0,14,0.99,0,0,0,0,0,0,0,-1,0.52,0.57,0.99,-0.52,0,-0.59,-0.21,-0.76,0,-0.23,-0.53,0,0,-0.96,-0.98,0,-0.86,-0.79,1,0,0,0]',
        },
        {
            id = 7,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/7.png",
            preset = '[0,6,0.5,9,0,6,6,7,-1,12,15,29,41,0.99,0,4,0.99,25,0,0.99,15,0,0,0,1,0.13,52,-0.32,0,-1,0,0.2,0,-0.1,-0.14,0,-0.04,0.04,0.02,0.48,0,-1,0,0,-0.08,-0.02,1]',
        },
        {
            id = 8,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/8.png",
            preset = '[23,19,0.65,7,0,0,-1,-1,9,45,29,29,15,0.99,0,4,0,0,10,0.58,0,0,0,0,0,0,0,-0.89,0,0.84,0.57,-0.37,0,-0.28,-0.63,-0.54,0.48,-0.44,0.3,-1,-0.3,-1,-1,0.13,-1,-0.41,1,0,0,18]',
        },
        {
            id = 9,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/9.png",
            preset = '[0,6,0.45,7,3,0,-1,-1,-1,66,60,0,0,0,0,0,0,0,28,0.99,0,0,0,29,0,0,0,-0.81,0.37,-0.04,0.5,-0.34,-0.28,0.11,0.85,0.21,0.16,0.99,0.57,0.51,-1,-1,-1,0.99,0.81,0.28,1,0,0,0]',
        },
        {
            id = 10,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/10.png",
            preset = '[0,0,1,8,2,0,-1,-1,-1,25,0,4,6,0.45,2,4,0.99,0,2,0.99,26,0,0,0,1,0.13,10,-0.32,0,-1,0,0.2,0,-0.1,-0.14,0,-0.04,0.04,0.02,0.48,0,-1,0,-0.38,-0.08,-0.02,1]',
        },
        {
            id = 11,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/11.png",
            preset = '[3,6,1,0,12,0,-1,-1,-1,74,0,4,0,0,2,0,0,0,2,0.99,26,0,0,0,0,0,0,-1,-1,-0.94,-0.31,0.24,0.25,-0.1,-0.79,-0.72,-1,-0.32,-0.61,-0.25,0,-1,0,-0.38,-0.65,-1,1,0,0,0]',
        },
        {
            id = 12,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/12.png",
            preset = '[17,0,0.9,3,1,0,-1,-1,-1,18,0,38,1,0.92,0,0,0.96,20,33,0.99,0,0,0,0,0,0,63,-0.89,0,0.71,0.45,-0.09,0,0,0,0,-0.73,0.04,0.02,0.41,0,-1,-1,0,0,-0.72,1,4,0,0]',
        },
        {
            id = 13,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/13.png",
            preset = '[21,19,0.6,2,12,0,-1,-1,-1,65,15,29,15,0.99,0,4,0,0,10,0.29,0,0,0,0,0,0,0,-0.89,0,0.84,0.57,-0.37,0,-0.28,-1,-0.61,-1,-0.88,0.14,-0.64,-0.3,-0.34,-1,0.13,-1,-1,1,0,0,18]',
        },        
        {
            id = 14,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/14.png",
            preset = '[17,6,1,12,1,0,-1,-1,-1,175,3,3,0,0.48,24,4,0.35,53,25,0.99,26,19,0,0,1,0.8,34,-1,0.32,-0.26,0.2,-0.3,0,-1,0.3,-1,-1,0.37,-0.57,-0.31,-1,-0.17,-1,-0.38,0.37,-1,1,0,0,0]',
        },
        {
            id = 15,
            image = "https://santaimagens.roleplayrp.com/img/imagens_variadas/creator/feminino/15.png",
            preset = '[23,21,0.65,2,0,0,-1,-1,-1,48,0,0,15,0.99,0,4,0,0,10,0.99,0,0,0,0,0,0,0,-0.89,0,0.84,0.57,-0.37,0,-0.28,-0.29,-0.54,0.12,-0.84,-0.19,-0.18,0.24,-0.29,-1,0.13,-1,-0.33,1,0,0,18]',
        },
    }
}
