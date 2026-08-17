-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("skinshop",Creative)
vSERVER = Tunnel.getInterface("skinshop")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local Init = "hat"
local Camera = nil
local Animation = false
local Command = false
cityName = GetConvar("cityName", "")
local Bucket = 1
local Newbie = false
local CachedCoords
-----------------------------------------------------------------------------------------------------------------------------------------
-- DATASET
-----------------------------------------------------------------------------------------------------------------------------------------
local Dataset = {
	["pants"] = { item = 0, texture = 0 },
	["arms"] = { item = 0, texture = 0 },
	["tshirt"] = { item = 1, texture = 0 },
	["torso"] = { item = 0, texture = 0 },
	["vest"] = { item = 0, texture = 0 },
	["shoes"] = { item = 0, texture = 0 },
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
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOP:APPLY
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:Apply")
AddEventHandler("skinshop:Apply",function(Table, forceEmptyUpdate --[[ Outros scripts dependem que esse evento salve as roupas novamente, mas no login a gente não tem essa necessidade! ]])
	for Index,v in pairs(Dataset) do
		if not Table[Index] then
			Table[Index] = v
		end
	end
    LocalPlayer["state"]["Skinshop"] = Table
	Dataset = Table

	vSERVER.Update(forceEmptyUpdate and { } or Dataset)

	exports["skinshop"]:Apply()
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOPS
-----------------------------------------------------------------------------------------------------------------------------------------
local Skinshops = {
	{ 74.88,-1400.08,29.37 },
	{ 80.42,-1400.13,29.37 },
	{ -713.98,-146.54,37.41,130.4 },
	{ -708.26,-160.93,37.41,31.19 },
	{ -158.55,-296.5,39.73,158.75 },
	{ -165.56,-310.29,39.73,255.12 },
	{ -828.15,-1076.28,11.32,300.48 },
	{ -825.73,-1081.25,11.32,303.31 },
	{ -1198.52,-770.74,17.32,215.44 },
	{ -1457.27,-241.59,49.81,317.49 },
	{ -1445.59,-231.6,49.81,45.36 },
	{ 9.86,6516.37,31.88,136.07 },
	{ 6.33,6520.67,31.88,136.07 },
	{ 1693.52,4829.39,42.06,192.76 },
	{ 1688.13,4828.75,42.06,192.76 },
	{ 128.66,-218.03,54.56,68.04 },
	{ 614.17,2756.72,42.09,277.8 },
	{ 1190.18,2710.78,38.22,274.97 },
	{ 1190.29,2705.29,38.22,274.97 },
	{ -3167.44,1049.23,20.86,70.87 },
	{ -1105.96,2707.06,19.11,317.49 },
	{ -1102.86,2702.64,19.11,317.49 },
	{ 426.2,-800.22,29.49,184.26 },
	{ 420.57,-800.05,29.49,184.26 },
	
	-- { -1181.86,-900.55,13.99 }, -- BurgerShot
	{ 1841.13,3679.86,34.19 }, -- Departamento Sheriff
	{ -437.49,6009.62,36.99 }, -- Departamento Sheriff
	{ 361.77,-1593.19,25.9 }, -- Departamento State
	{ -256.56,6327.32,32.42 }, -- Hospital Norte
	{ -1816.23,-359.72,49.45,48.19 }, -- Hospital fem
	{ -1812.26,-355.6,49.47,48.19 }, -- Hospital masc
	{ 826.96,-956.12,22.09,127.56 }, -- Mecânica Sul
	{ 1372.7,6554.29,18.53,308.98 }, -- pier norte
	{ 1399.89,6584.21,18.53,0.0 }, -- pier norte
	{ -1887.58,3026.39,32.96,328.82 }, -- exercito
	{ -271.84,-1641.79,32.27,246.62 },

	----------------------------------------------------------------------------------
	-- mansões exclusivas
	----------------------------------------------------------------------------------
	{ -3219.67,783.5,14.09,300.48 },
	{ 8.27,529.1,170.64,206.93 },
	{ -817.34,267.31,82.8,76.54 },
	{ -788.0,338.5,243.38,272.13 },
	{ 1403.02,1154.43,114.33,348.67 },
	{ -60.03,994.01,239.52,45.36 },
	{ -2619.24,1711.28,146.32,198.43 },
	{ -2798.98,1436.23,97.32,42.52 },
	{ -56.55,837.08,235.71,42.52 },
	{ -1047.4,299.78,71.66,280.63 },
	{ -2598.5,1889.46,163.75,25.52 },
	{ -2180.12,2663.74,4.53,85.04 },
	{ -2674.91,1307.4,152.0,263.63 },
	{ 2539.24,6148.24,168.11,255.12 },
	{ 180.52,1719.13,231.08,181.42 },
	{ 3266.75,-129.38,20.54,73.71 },
	{ -5863.51,1141.59,13.26,170.08 },
	{ -1721.76,381.91,89.73,116.23 },
	{ -1981.35,-500.42,20.73,311.82 },
	{ -519.5,499.9,112.44,223.94 },
	{ -899.27,42.77,53.3,136.07 },
	{ -812.16,175.07,76.73,107.72 },
	{ -1468.2,-45.65,58.67,130.4 },
	{ -1141.06,374.4,74.96,150.24 },	
	{ -2093.2,-1012.04,5.88,70.87 },
	{ -1520.45,138.86,60.44,130.4 },
	{ -1415.45,6754.41,11.91,76.54 }, -- iate 02
	{ -2349.69,3266.46,32.81,328.82 },
	{ 2010.59,3379.98,51.59,82.21 }, -- Mansao13
	{ 236.71,752.68,200.09,127.56 }, -- mansao 26
	{ -221.49,584.41,185.7,269.3 }, -- mansao 27
	{ -539.63,5008.08,163.83,147.41 }, -- mansao 28
	{ -2560.93,3762.39,17.04,266.46 }, -- mansao 29
	{ -3310.64,-1220.55,7.8,34.02 }, -- mansao 30
	{ -280.36,-722.16,125.46,255.12 }, -- mansao 31
	{ -696.5,631.43,159.18,79.38 }, -- mansao 32
	{ -637.46,941.53,243.95,357.17 }, -- mansao 34
	{ -846.35,-16.02,44.15,93.55 }, -- mansao 35
	{ -2012.59,307.09,95.72,209.77 }, -- mansao 36
	{ -754.54,820.54,216.99,201.26 }, -- mansao 37
	{ -1034.42,-1152.36,7.03,25.52 }, -- mansao 38
	{ -940.39,-939.38,7.03,303.31 }, -- mansao 39
	{ -996.6,-881.27,6.87,39.69 }, -- mansao 40
	{ -1113.83,-1074.83,6.87,28.35 }, -- mansao 41
	{ -991.87,-1098.38,7.03,147.41 }, -- mansao 42
	{ -1022.79,-992.8,7.01,127.56 }, -- mansao 43
	{ -1235.18,795.79,197.19,104.89 }, -- mansao 44
	{ -185.12,981.95,232.14,0.0 }, -- mansao 45
	{ -174.87,918.22,239.94,226.78 }, -- mansao 46
	{ -2700.13,-74.87,21.74,136.07 }, -- mansao 47
	{ 757.94,3423.13,62.68,85.04 }, -- mansao 48
	{ 1416.53,4718.05,140.24,70.87 }, -- mansao 50
	{ 1240.16,-853.16,79.11,263.63 }, -- mansao 51
	{ 3440.97,4940.38,39.85,48.19 }, -- mansao 52
	{ 1180.03,873.25,147.54,96.38 }, -- mansao 53
	{ 1609.15,-2631.75,56.88,306.15 }, -- mansao 55
	{ -1987.91,-227.47,89.62,243.78 }, -- mansao 56
	{ -2983.99,-391.14,15.74,161.58 }, -- mansao 57
	{ -3093.44,1551.38,37.27,99.22 }, -- mansao 58
	{ 583.05,745.21,206.17,56.7 }, -- mansao 59
	
	{ 653.86,924.18,253.07,167.25 }, -- mansao 61
	{ -2987.72,2185.71,45.09,141.74 }, -- mansao 62
	{ -2311.43,4333.24,37.07,323.15 }, -- mansao 63
	{ -558.18,812.48,197.51,161.58 }, -- mansao 64
	{ -2824.53,-33.45,37.05,155.91 }, -- mansao65
	{ -2801.11,3023.95,10.16,150.241 }, -- mansao66
	{ 3501.53,5125.8,9.71,289.14 }, -- mansao67
	{ -825.99,-688.27,123.42,272.13 }, -- mansao68
	{ -1305.56,716.17,195.34,121.89 }, -- mansao69
	{ -3077.07,190.16,19.61,17.01 }, -- mansao70
	{ -3010.0,3183.28,9.69,325.99 }, -- mansao72
	{ -2873.74,3598.45,8.76,221.11 }, -- mansao73
	{ -3937.92,-846.18,13.26,17.01 }, -- mansao74
	{ -2037.01,-664.48,6.77,130.4 }, -- mansao75
	{ -3518.91,1272.93,13.26,246.62 }, -- mansao76
	{ 2838.82,-698.54,12.22,107.72 }, -- mansao78
	{ -939.4,400.4,77.8,138.9 }, -- mansao79
	{ 618.45,2247.22,66.99,76.54 }, -- mansao80
	{ -1869.94,644.25,130.01,320.32 }, -- mansao81
	{ -2249.44,469.85,178.24,184.26 }, -- mansao82
	{ -2772.11,-210.0,17.32,226.78 }, -- mansao83
	{ -332.99,6377.36,28.64,320.32 }, -- mansao84
	{ 574.78,6619.56,31.42,96.38 }, -- mansao86
	{ 1119.34,3074.13,41.97,195.6 }, -- mansao87
	{ -2932.5,-1800.17,13.26,240.95 }, -- mansao88
	{791.97,5736.84,702.57,76.54}, -- mansao90
	{ -669.34,6391.46,13.01,320.32 }, -- mansao91
	{ 647.74,2066.43,115.76,184.26 }, -- mansao92
	{ -3068.65,3456.45,10.03,255.12 }, -- mansao93
	{ -3421.46,112.78,12.47,133.23 }, -- Paradise
	
	{ 3082.71,5465.73,23.59,206.93 }, -- Bunker
	{ 284.21,107.16,100.44,252.29 }, -- Cinema
	{ -3550.16,946.94,2.26,272.13 }, -- LuxuryPier
	{ 746.39,-555.2,33.63,102.05 }, -- medusa
	{ 5081.32,-5755.04,15.82,141.74 }, -- CayoPerico
	{ -1514.82,-1468.04,6.39,206.93 }, -- Atlantis
	{ -2566.45,-2204.01,5.05,161.58 }, -- Resort
	-- { 203.08,-1645.05,29.81,48.19 },  -- bombeiros
	{ 2132.22,4623.95,34.51,79.38 },  -- bloco 01
	{ 2124.68,4596.18,34.51,65.2 },  -- bloco 02
	{ 2106.89,4573.07,34.51,39.69 },  -- bloco 03
	{ 2081.73,4557.74,34.51,31.19 },  -- bloco 04
	{ 2055.95,4550.21,34.51,17.01 },  -- bloco 05
}

if cityName == "Santa" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 129.47,-99.07,49.58,207.22 } -- mansao98
	Skinshops[#Skinshops+1] = { -127.16,6635.97,31.67,38.87 } -- mansao77
	Skinshops[#Skinshops+1] = { -1042.19,-2786.41,21.33,337.33 } -- aeroporto
	Skinshops[#Skinshops+1] = { -308.82,-1313.31,31.29,5.67 } -- mecanica
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- Bombeiros
	Skinshops[#Skinshops+1] = { 457.64,-990.77,30.68,11.34 } -- dp praça
	Skinshops[#Skinshops+1] = { 1149.96,-1582.44,35.28,175.75 } -- hp
	Skinshops[#Skinshops+1] = { -951.75,-2042.66,9.4,226.78} -- dp principal
	Skinshops[#Skinshops+1] = { 2517.92,-346.08,101.89,36.86 } -- dp
	Skinshops[#Skinshops+1] = { 2508.49,-442.21,106.91,76.54 } -- dp
	Skinshops[#Skinshops+1] = { 2612.27,5333.94,47.57,59.53 } -- prf
	Skinshops[#Skinshops+1] = { -2141.76,-574.83,18.25,198.43 } -- mansao 49
	Skinshops[#Skinshops+1] = { -3690.06,620.68,4.6,28.35 } -- mansao54
	Skinshops[#Skinshops+1] = { 1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = { -2305.71,-251.61,48.14,127.56 } -- Gang4
	Skinshops[#Skinshops+1] = { 1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = { 1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	Skinshops[#Skinshops+1] = { -458.91,-1264.9,25.48,51.03 } -- Afetados
	Skinshops[#Skinshops+1] = { 875.42,1860.9,142.5,226.78 } -- Metgala
	Skinshops[#Skinshops+1] = { -299.65,-1667.63,35.62,337.33 } -- Groove
	Skinshops[#Skinshops+1] = { 2356.32,5512.44,51.93,317.49 } -- Amarelo
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = { 103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { -291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = { -324.23,-140.2,39.01,62.37 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Franca
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 1402.74,1154.66,114.33,266.46 } -- fazendinha
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 100.44,1228.13,207.17,130.4 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { -641.82,-1240.5,11.54,42.52 } -- hellsangels
	Skinshops[#Skinshops+1] = { 413.04,6468.02,29.82,274.97 } -- Pinkmans
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { 1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = { -2294.76,357.76,174.6,297.64 } -- bloods
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- Tropadu7
	Skinshops[#Skinshops+1] = { -603.37,-915.38,23.88,263.63 } -- crips
	Skinshops[#Skinshops+1] = { -459.91,1545.42,393.22,334.49 } -- Tribo	
	Skinshops[#Skinshops+1] = { 355.76,-2729.82,1.72,257.96 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { 2169.34,5111.07,62.97,79.38 } -- russia
	Skinshops[#Skinshops+1] = { 2195.41,5091.26,62.97,82.21 } -- russia
	Skinshops[#Skinshops+1] = { 2142.45,5139.16,59.87,184.26 } -- russia
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { -321.6,1967.37,153.79,280.63 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { -613.39,-1625.22,33.01,87.88 } -- overdrive
	Skinshops[#Skinshops+1] = { -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = { 956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 3227.02,5121.41,20.15,297.64 } -- china
	Skinshops[#Skinshops+1] = { 576.28,-3107.89,6.07,187.09 } -- israel
	Skinshops[#Skinshops+1] = { -1671.96,432.73,108.6,277.8 } -- playboy
	Skinshops[#Skinshops+1] = { -678.46,868.62,225.23,266.46 }
	Skinshops[#Skinshops+1] = { 451.03,-977.31,30.68,357.17 }
	Skinshops[#Skinshops+1] = { -2004.09,4490.88,57.29,133.23 } -- QG_01
	Skinshops[#Skinshops+1] = { 1795.9,442.8,172.34,73.71 } -- sinaloa
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 876.22,1860.49,142.5,223.94 } -- Azuis
	Skinshops[#Skinshops+1] = { 514.2,370.01,151.73,104.89 } -- roxos
	Skinshops[#Skinshops+1] = { 2226.68,3453.87,61.33,170.08 } -- cinzas
	Skinshops[#Skinshops+1] = { 932.68,1060.22,271.87,223.94 } -- marrons
	Skinshops[#Skinshops+1] = { 1043.45,885.2,220.36,51.03 } -- marrons
	Skinshops[#Skinshops+1] = { 1403.4,-2397.56,65.7,334.49 } -- rosas
	Skinshops[#Skinshops+1] = { 1451.9,-2440.5,66.81,277.8 } -- rosas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1251.7,-265.25,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { -1555.78,340.34,87.25,243.78 } -- playboy
	Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { -1818.65,448.0,127.91,198.43 } -- mansao33
	Skinshops[#Skinshops+1] = { -216.48,-282.14,29.25,99.22 }
	Skinshops[#Skinshops+1] = { 537.74,454.51,172.49,257.96 } -- Roxos
	Skinshops[#Skinshops+1] = { -132.29,869.99,232.68,144.57 }
	Skinshops[#Skinshops+1] = { -427.29,1608.35,359.86,85.04 }
	Skinshops[#Skinshops+1] = { 48.44,800.47,200.68,136.07 }
	Skinshops[#Skinshops+1] = { -2779.14,2509.53,3.98,0.0 } -- Noxus
	Skinshops[#Skinshops+1] = { -1540.78,141.86,60.44,48.19 } -- LaMafia
	Skinshops[#Skinshops+1] = { 1099.2,3267.41,37.73,45.36 } -- cartel
	Skinshops[#Skinshops+1] = { 1885.56,-1028.46,79.21,240.95 } -- AlcateiaHsT
	Skinshops[#Skinshops+1] = { -149.7,-1606.14,35.03,337.33 }
	Skinshops[#Skinshops+1] = { -1046.14,309.93,66.99,206.93 } -- inglaterra
	Skinshops[#Skinshops+1] = { -414.31,1593.54,358.67,102.05 }
	Skinshops[#Skinshops+1] = { 886.14,353.00,112.56,225.05 } -- qg_17
	Skinshops[#Skinshops+1] = { 2742.47,3500.22,61.3,357.17} -- Kraken
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- Big
	Skinshops[#Skinshops+1] = { 883.73,-2100.55,30.46,175.75 } -- CarClube
	Skinshops[#Skinshops+1] = { 414.94,-23.43,91.93,56.7 } -- Callisto
	Skinshops[#Skinshops+1] = { 736.58,-806.95,16.28,357.17 } -- Arcade
	Skinshops[#Skinshops+1] = { -337.81,-166.57,44.58,272.13 } -- Virtude
	Skinshops[#Skinshops+1] = { -2022.42,4435.69,53.09,345.83 } -- Banzas	
	Skinshops[#Skinshops+1] = { -339.2,-1523.7,29.34,22.68 } -- Dixavas
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { -1629.08,-1100.46,13.09,48.19 } -- pier
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -3337.02,537.67,17.44,127.56 } -- mansao 60
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { -3311.2,566.5,17.44,144.57 } -- qg_90
	Skinshops[#Skinshops+1] = { -1258.53,780.59,197.21,289.14 } -- qg_91
	Skinshops[#Skinshops+1] = { 3082.44,5458.49,31.8,28.35 }
	Skinshops[#Skinshops+1] = { 1185.46,860.92,144.0,87.88 } -- QG_99
	Skinshops[#Skinshops+1] = { 549.72,746.09,206.17,53.86 } -- QG_102
	Skinshops[#Skinshops+1] = { -936.17,393.75,77.86,113.39 } -- QG_105
	Skinshops[#Skinshops+1] = { 2839.68,-704.57,12.22,99.22 } -- QG_120
	Skinshops[#Skinshops+1] = { -1285.17,-1722.11,6.15,127.73 } -- 

elseif cityName == "CidadeNobre" then
	Skinshops[#Skinshops+1] = { -404.72,4373.04,62.82,354.34 } -- mansao94
	Skinshops[#Skinshops+1] = { -126.17,6619.03,33.85,311.82 } -- mansao51
	Skinshops[#Skinshops+1] = { -1474.76,-1759.03,14.35,3.21 } -- mansao70
	Skinshops[#Skinshops+1] = { -2766.96,-941.86,16.05,64.63 } -- mansao71
	Skinshops[#Skinshops+1] = { -1141.65,374.78,74.97,226.04 } -- QG_155
	Skinshops[#Skinshops+1] = { -1417.25,-617.80,30.72,36.73 } -- MajorBahamas
	Skinshops[#Skinshops+1] = { -3090.98,3367.52,17.32,180.20 } -- mansao66
	Skinshops[#Skinshops+1] = { -3536.63,4623.20,6.72,287.43 } -- mansao96
	Skinshops[#Skinshops+1] = { 1036.84,3678.09,39.05,179.56 } -- mansao16
	Skinshops[#Skinshops+1] = { 93.40,6517.33,31.26,305.00 } -- QG_131
	Skinshops[#Skinshops+1] = { 2006.75,3354.94,51.60,83.44 } -- QG_150
	Skinshops[#Skinshops+1] = { 102.37,-1311.13,21.13,48.19 } -- QG_143
	Skinshops[#Skinshops+1] = { -2189.20,4283.77,49.18,196.14 } -- QG_132
	Skinshops[#Skinshops+1] = { 958.86,-966.6,42.95,348.67 } -- mecanica
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- Bombeiros
	Skinshops[#Skinshops+1] = { 1150.65,-1583.05,35.28,138.9 } -- hp
	Skinshops[#Skinshops+1] = { 457.64,-990.77,30.68,11.34 } -- dp praça
	Skinshops[#Skinshops+1] = { 2516.96,-345.11,101.89,42.52 } -- Militar
	Skinshops[#Skinshops+1] = { -437.84,6012.35,36.99,357.17 } -- civil
	Skinshops[#Skinshops+1] = { -780.21,-1211.9,10.38,141.74 } -- Tatica
	Skinshops[#Skinshops+1] = { -1887.58,3026.39,32.96,328.82 } -- Exercito
	Skinshops[#Skinshops+1] = { 1075.28,3273.75,41.11,198.43 } -- umbrella
	Skinshops[#Skinshops+1] = { 875.42,1860.9,142.5,226.78 } -- Metgala
	Skinshops[#Skinshops+1] = { -2197.05,-275.16,35.79,257.96 } -- Gang4
	Skinshops[#Skinshops+1] = { -458.91,-1264.9,25.48,51.03 } -- Afetados
	Skinshops[#Skinshops+1] = { 413.04,6468.02,29.82,274.97 } -- Pinkmans
	Skinshops[#Skinshops+1] = { 1513.4,1356.95,108.29,286.3 } -- Gang9
	Skinshops[#Skinshops+1] = { 957.6,-2390.99,22.33,175.75 } -- China
	Skinshops[#Skinshops+1] = { 790.13,5752.55,702.57,249.45 } -- Mansao95
	Skinshops[#Skinshops+1] = { -763.42,29.24,40.64,161.58 } -- Igreja
	Skinshops[#Skinshops+1] = { 3047.53,-4136.9,9.86,351.5 }
	Skinshops[#Skinshops+1] = { 2029.85,4299.39,38.25,99.22 } -- QG_110
	-- Skinshops[#Skinshops+1] = { 1030.2,-2550.23,32.28,85.04 } -- Vermelhos
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	-- Skinshops[#Skinshops+1] = { -139.96,-1609.06,35.03,68.04 } -- Groove
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxos
	Skinshops[#Skinshops+1] = { 514.2,370.01,151.73,104.89 } -- Roxos
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 117.31,-1962.14,21.33,201.26 } -- Ballas
	-- Skinshops[#Skinshops+1] = {  103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { 291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 945.01,47.64,80.29,53.86 } -- Bellagio
	Skinshops[#Skinshops+1] = { -1540.36,321.5,87.25,73.71 } -- Lavajato
	Skinshops[#Skinshops+1] = { 102.53,-1311.89,21.13,31.19 } -- Putaria
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -3320.91,548.73,13.77,303.31 } -- Arcade
	Skinshops[#Skinshops+1] = { 414.94,-23.43,91.93,56.7 } -- Callisto
	Skinshops[#Skinshops+1] = { -2271.77,322.98,174.6,22.68 } -- Redline
	Skinshops[#Skinshops+1] = { -2271.77,322.98,174.6,22.68 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 1378.51,-2096.32,52.6,39.69  } -- FerroVelho
	Skinshops[#Skinshops+1] = { 2643.51,3636.15,106.73,39.69 } -- Morro-do-Sacola
	Skinshops[#Skinshops+1] = { 883.73,-2100.55,30.46,175.75 } -- CarClube
	Skinshops[#Skinshops+1] = { -337.81,-166.57,44.58,272.13 } -- Virtude
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- Big
	Skinshops[#Skinshops+1] = { 2742.47,3500.22,61.3,357.17} -- Kraken
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { 1026.51,-2542.27,28.29,170.08 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { -60.09,994.66,239.52,328.82 } -- gringa
	Skinshops[#Skinshops+1] = { -1539.52,141.51,55.65,51.03 } -- bloods
	-- Skinshops[#Skinshops+1] = { -2804.84,2261.69,24.11,320.32 } -- bloods secundario
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = { -339.2,-1523.7,29.34,22.68 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1887.16,2070.1,145.57,334.49 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { 173.45,668.33,207.66,104.89 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -776.37,-2593.33,17.66,238.12 } -- Outlaws 
	Skinshops[#Skinshops+1] = { -617.15,-1617.33,33.01,172.92 } -- Topgear 
	Skinshops[#Skinshops+1] = { -290.78,1986.24,166.14,334.49 } -- israel
	-- Skinshops[#Skinshops+1] = { 1078.37,-1973.3,31.48,235.28 } -- gringa
	Skinshops[#Skinshops+1] = { -303.2,220.21,77.91,257.96 } -- luxor
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1267.24,-299.03,84.59,158.75 } -- barragem
	Skinshops[#Skinshops+1] = { 1251.62,-265.92,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 1506.8,-2368.57,78.03,274.97 } -- rosas
	Skinshops[#Skinshops+1] = { 1512.78,-2365.16,78.03,195.6 } -- rosas
	-- Skinshops[#Skinshops+1] = { 2225.07,3452.81,61.33,172.92 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2229.55,3452.95,61.33,170.08 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { 103.67,1221.91,207.17,102.05 } -- SOA
	Skinshops[#Skinshops+1] = { 1306.65,-735.32,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -215.34,-1334.28,34.9,266.46 } -- bennys
	Skinshops[#Skinshops+1] = { 1048.13,888.82,220.34,48.19 } -- playboy
	Skinshops[#Skinshops+1] = { 1341.91,-790.49,71.51,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { 1336.42,-788.7,71.51,348.67 } -- brancos
	Skinshops[#Skinshops+1] = { 1308.3,-733.85,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -1550.84,-393.9,41.97,51.03 } -- 
	Skinshops[#Skinshops+1] = { -3337.8,543.54,17.44,215.44 } -- mansao 60
	Skinshops[#Skinshops+1] = { 1963.43,6415.17,61.7,311.82 } -- marrons
	Skinshops[#Skinshops+1] = { -2272.06,323.23,174.6,22.68 }
	Skinshops[#Skinshops+1] = { -1687.17,-3185.18,14.0,243.78 }
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Campinho
	Skinshops[#Skinshops+1] = { 905.89,339.35,112.29,345.83 } -- Japao
	Skinshops[#Skinshops+1] = { -1044.65,305.04,71.66,266.46 } -- Inglaterra
	Skinshops[#Skinshops+1] = { -2022.42,4435.69,53.09,345.83 } -- Banzas
	Skinshops[#Skinshops+1] = { 355.76,-2729.82,1.72,257.96 } -- Dixavas
	Skinshops[#Skinshops+1] = { -769.38,8.1,40.64,345.83 } 
	Skinshops[#Skinshops+1] = { 1471.81,6539.39,18.64,85.04 } -- pier norte
	Skinshops[#Skinshops+1] = { -602.0,-914.22,23.88,184.26 } -- Anonymous
	Skinshops[#Skinshops+1] = { -602.7,-923.49,17.59,328.82 } -- Anonymous
	Skinshops[#Skinshops+1] = { -2813.9,2266.37,24.33,354.34 } -- qg 71
	Skinshops[#Skinshops+1] = { 676.42,909.22,247.57,170.08 } -- Inglaterra
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { 2612.27,5333.94,47.57,59.53 } -- prf
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -156.96,8259.62,12.82,11.34 } -- iate
	Skinshops[#Skinshops+1] = { -1784.4,-1376.75,11.88,39.69 } -- iate
	Skinshops[#Skinshops+1] = { -1883.34,-1164.43,11.73,320.32 } -- iate
	Skinshops[#Skinshops+1] = { -2210.16,-586.48,11.73,232.45 } 
	Skinshops[#Skinshops+1] = { 866.58,1871.27,140.39,87.88 } -- QG_07
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { -539.93,5002.83,159.92,272.13 } -- qg_86
	Skinshops[#Skinshops+1] = { -2675.14,1307.61,152.0,272.13 } -- qg_87
	Skinshops[#Skinshops+1] = { -2277.87,336.33,178.57,300.48 } -- qg_88
	Skinshops[#Skinshops+1] = { 3482.3,5015.04,11.91,212.6 }
	Skinshops[#Skinshops+1] = { -4504.72,-70.94,12.81,164.41 }
	Skinshops[#Skinshops+1] = { 994.15,3403.17,61.97,280.63 } -- QG_31
	Skinshops[#Skinshops+1] = { 89.54,-1966.65,20.74,320.32 } -- QG_43
	Skinshops[#Skinshops+1] = { 2456.34,4980.02,46.83,158.75 } -- QG_64
	Skinshops[#Skinshops+1] = { -935.2,403.8,79.23,195.6 } -- QG_103
	Skinshops[#Skinshops+1] = { 129.79,-99.03,49.57,161.58 } -- QG_106
	Skinshops[#Skinshops+1] = { 3496.16,-3283.35,10.62,25.52 } -- IlhaBatman
	Skinshops[#Skinshops+1] = { 715.75,-959.24,30.4,354.34 } -- QG_108
	Skinshops[#Skinshops+1] = { 867.22,1872.93,140.39,153.08 } -- QG_07
	Skinshops[#Skinshops+1] = { -59.51,842.14,235.71,308.98 } -- QG_118
	Skinshops[#Skinshops+1] = { 676.42,909.22,247.57,170.08} -- QG_121

elseif cityName == "Caravelas" then
	Skinshops[#Skinshops+1] = { 461.13,-996.01,30.68,174.18 } -- db praça
	Skinshops[#Skinshops+1] = { -404.72,4373.04,62.82,354.34 } -- mansao94
	Skinshops[#Skinshops+1] = { 1036.84,3678.09,39.05,179.56 } -- mansao16
	Skinshops[#Skinshops+1] = { 93.40,6517.33,31.26,305.00 } -- QG_131
	Skinshops[#Skinshops+1] = { 102.37,-1311.13,21.13,48.19 } -- QG_143
	Skinshops[#Skinshops+1] = { -2189.20,4283.77,49.18,196.14 } -- QG_132
	Skinshops[#Skinshops+1] = { 958.86,-966.6,42.95,348.67 } -- mecanica
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- Bombeiros
	Skinshops[#Skinshops+1] = { 1150.65,-1583.05,35.28,138.9 } -- hp
	Skinshops[#Skinshops+1] = { 457.64,-990.77,30.68,11.34 } -- dp praça
	Skinshops[#Skinshops+1] = { 2516.96,-345.11,101.89,42.52 } -- Militar
	Skinshops[#Skinshops+1] = { -437.84,6012.35,36.99,357.17 } -- civil
	Skinshops[#Skinshops+1] = { -780.21,-1211.9,10.38,141.74 } -- Tatica
	Skinshops[#Skinshops+1] = { -1887.58,3026.39,32.96,328.82 } -- Exercito
	Skinshops[#Skinshops+1] = { 1075.28,3273.75,41.11,198.43 } -- umbrella
	Skinshops[#Skinshops+1] = { 875.42,1860.9,142.5,226.78 } -- Metgala
	Skinshops[#Skinshops+1] = { -2197.05,-275.16,35.79,257.96 } -- Gang4
	Skinshops[#Skinshops+1] = { -458.91,-1264.9,25.48,51.03 } -- Afetados
	Skinshops[#Skinshops+1] = { 413.04,6468.02,29.82,274.97 } -- Pinkmans
	Skinshops[#Skinshops+1] = { 1513.4,1356.95,108.29,286.3 } -- Gang9
	Skinshops[#Skinshops+1] = { 957.6,-2390.99,22.33,175.75 } -- China
	Skinshops[#Skinshops+1] = { 790.13,5752.55,702.57,249.45 } -- Mansao95
	Skinshops[#Skinshops+1] = { -763.42,29.24,40.64,161.58 } -- Igreja
	Skinshops[#Skinshops+1] = { 3047.53,-4136.9,9.86,351.5 }
	Skinshops[#Skinshops+1] = { 2029.85,4299.39,38.25,99.22 } -- QG_110
	-- Skinshops[#Skinshops+1] = { 1030.2,-2550.23,32.28,85.04 } -- Vermelhos
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	-- Skinshops[#Skinshops+1] = { -139.96,-1609.06,35.03,68.04 } -- Groove
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxos
	Skinshops[#Skinshops+1] = { 514.2,370.01,151.73,104.89 } -- Roxos
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 117.31,-1962.14,21.33,201.26 } -- Ballas
	-- Skinshops[#Skinshops+1] = {  103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { 291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 945.01,47.64,80.29,53.86 } -- Bellagio
	Skinshops[#Skinshops+1] = { -1540.36,321.5,87.25,73.71 } -- Lavajato
	Skinshops[#Skinshops+1] = { 102.53,-1311.89,21.13,31.19 } -- Putaria
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -3320.91,548.73,13.77,303.31 } -- Arcade
	Skinshops[#Skinshops+1] = { 414.94,-23.43,91.93,56.7 } -- Callisto
	Skinshops[#Skinshops+1] = { -2271.77,322.98,174.6,22.68 } -- Redline
	Skinshops[#Skinshops+1] = { -2271.77,322.98,174.6,22.68 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 1378.51,-2096.32,52.6,39.69  } -- FerroVelho
	Skinshops[#Skinshops+1] = { 2643.51,3636.15,106.73,39.69 } -- Morro-do-Sacola
	Skinshops[#Skinshops+1] = { 883.73,-2100.55,30.46,175.75 } -- CarClube
	Skinshops[#Skinshops+1] = { -337.81,-166.57,44.58,272.13 } -- Virtude
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- Big
	Skinshops[#Skinshops+1] = { 2742.47,3500.22,61.3,357.17} -- Kraken
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { 1026.51,-2542.27,28.29,170.08 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { -60.09,994.66,239.52,328.82 } -- gringa
	Skinshops[#Skinshops+1] = { -1539.52,141.51,55.65,51.03 } -- bloods
	-- Skinshops[#Skinshops+1] = { -2804.84,2261.69,24.11,320.32 } -- bloods secundario
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = { -339.2,-1523.7,29.34,22.68 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1887.16,2070.1,145.57,334.49 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { 173.45,668.33,207.66,104.89 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -776.37,-2593.33,17.66,238.12 } -- Outlaws 
	Skinshops[#Skinshops+1] = { -617.15,-1617.33,33.01,172.92 } -- Topgear 
	Skinshops[#Skinshops+1] = { -290.78,1986.24,166.14,334.49 } -- israel
	-- Skinshops[#Skinshops+1] = { 1078.37,-1973.3,31.48,235.28 } -- gringa
	Skinshops[#Skinshops+1] = { -303.2,220.21,77.91,257.96 } -- luxor
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1267.24,-299.03,84.59,158.75 } -- barragem
	Skinshops[#Skinshops+1] = { 1251.62,-265.92,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 1506.8,-2368.57,78.03,274.97 } -- rosas
	Skinshops[#Skinshops+1] = { 1512.78,-2365.16,78.03,195.6 } -- rosas
	-- Skinshops[#Skinshops+1] = { 2225.07,3452.81,61.33,172.92 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2229.55,3452.95,61.33,170.08 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { 103.67,1221.91,207.17,102.05 } -- SOA
	Skinshops[#Skinshops+1] = { 1306.65,-735.32,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -215.34,-1334.28,34.9,266.46 } -- bennys
	Skinshops[#Skinshops+1] = { 1048.13,888.82,220.34,48.19 } -- playboy
	Skinshops[#Skinshops+1] = { 1341.91,-790.49,71.51,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { 1336.42,-788.7,71.51,348.67 } -- brancos
	Skinshops[#Skinshops+1] = { 1308.3,-733.85,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -1550.84,-393.9,41.97,51.03 } -- 
	Skinshops[#Skinshops+1] = { -3337.8,543.54,17.44,215.44 } -- mansao 60
	Skinshops[#Skinshops+1] = { 1963.43,6415.17,61.7,311.82 } -- marrons
	Skinshops[#Skinshops+1] = { -2272.06,323.23,174.6,22.68 }
	Skinshops[#Skinshops+1] = { -1687.17,-3185.18,14.0,243.78 }
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Campinho
	Skinshops[#Skinshops+1] = { 905.89,339.35,112.29,345.83 } -- Japao
	Skinshops[#Skinshops+1] = { -1044.65,305.04,71.66,266.46 } -- Inglaterra
	Skinshops[#Skinshops+1] = { -2022.42,4435.69,53.09,345.83 } -- Banzas
	Skinshops[#Skinshops+1] = { 355.76,-2729.82,1.72,257.96 } -- Dixavas
	Skinshops[#Skinshops+1] = { -769.38,8.1,40.64,345.83 } 
	Skinshops[#Skinshops+1] = { 1471.81,6539.39,18.64,85.04 } -- pier norte
	Skinshops[#Skinshops+1] = { -602.0,-914.22,23.88,184.26 } -- Anonymous
	Skinshops[#Skinshops+1] = { -602.7,-923.49,17.59,328.82 } -- Anonymous
	Skinshops[#Skinshops+1] = { -2813.9,2266.37,24.33,354.34 } -- qg 71
	Skinshops[#Skinshops+1] = { 676.42,909.22,247.57,170.08 } -- Inglaterra
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { 2612.27,5333.94,47.57,59.53 } -- prf
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -156.96,8259.62,12.82,11.34 } -- iate
	Skinshops[#Skinshops+1] = { -1784.4,-1376.75,11.88,39.69 } -- iate
	Skinshops[#Skinshops+1] = { -1883.34,-1164.43,11.73,320.32 } -- iate
	Skinshops[#Skinshops+1] = { -2210.16,-586.48,11.73,232.45 } 
	Skinshops[#Skinshops+1] = { 866.58,1871.27,140.39,87.88 } -- QG_07
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { -539.93,5002.83,159.92,272.13 } -- qg_86
	Skinshops[#Skinshops+1] = { -2675.14,1307.61,152.0,272.13 } -- qg_87
	Skinshops[#Skinshops+1] = { -2277.87,336.33,178.57,300.48 } -- qg_88
	Skinshops[#Skinshops+1] = { 3482.3,5015.04,11.91,212.6 }
	Skinshops[#Skinshops+1] = { -4504.72,-70.94,12.81,164.41 }
	Skinshops[#Skinshops+1] = { 994.15,3403.17,61.97,280.63 } -- QG_31
	Skinshops[#Skinshops+1] = { 89.54,-1966.65,20.74,320.32 } -- QG_43
	Skinshops[#Skinshops+1] = { 2456.34,4980.02,46.83,158.75 } -- QG_64
	Skinshops[#Skinshops+1] = { -935.2,403.8,79.23,195.6 } -- QG_103
	Skinshops[#Skinshops+1] = { 129.79,-99.03,49.57,161.58 } -- QG_106
	Skinshops[#Skinshops+1] = { 3496.16,-3283.35,10.62,25.52 } -- IlhaBatman
	Skinshops[#Skinshops+1] = { 715.75,-959.24,30.4,354.34 } -- QG_108
	Skinshops[#Skinshops+1] = { 867.22,1872.93,140.39,153.08 } -- QG_07
	Skinshops[#Skinshops+1] = { -59.51,842.14,235.71,308.98 } -- QG_118
	Skinshops[#Skinshops+1] = { 676.42,909.22,247.57,170.08} -- QG_121

elseif cityName == "Kingdom" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { -1729.43,374.72,89.72,230.96 } -- QG_154
	Skinshops[#Skinshops+1] = { -2086.45,-303.38,13.24,167.25 } -- QG_156
	Skinshops[#Skinshops+1] = { -523.98,514.28,108.08,315.38 } -- QG_158
	Skinshops[#Skinshops+1] = { 1185.11,873.56,144.00,161.87 } -- QG_159
	Skinshops[#Skinshops+1] = { -1368.02,-613.34,30.32,34.56 } -- QG_148
	Skinshops[#Skinshops+1] = { 958.86,-966.6,42.95,348.67 } -- mecanica
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- Bombeiros
	Skinshops[#Skinshops+1] = { 1150.65,-1583.05,35.28,138.9 } -- hp
	Skinshops[#Skinshops+1] = { 458.14,-999.19,30.68,331.66 } -- Militar
	Skinshops[#Skinshops+1] = { -437.84,6012.35,36.99,357.17 } -- civil
	Skinshops[#Skinshops+1] = { -780.21,-1211.9,10.38,141.74 } -- Tatica
	Skinshops[#Skinshops+1] = { -1887.58,3026.39,32.96,328.82 } -- Exercito
	Skinshops[#Skinshops+1] = { 1075.28,3273.75,41.11,198.43 } -- umbrella
	Skinshops[#Skinshops+1] = { 875.42,1860.9,142.5,226.78 } -- Metgala
	Skinshops[#Skinshops+1] = { -2197.05,-275.16,35.79,257.96 } -- Gang4
	Skinshops[#Skinshops+1] = { -458.91,-1264.9,25.48,51.03 } -- Afetados
	Skinshops[#Skinshops+1] = { 413.04,6468.02,29.82,274.97 } -- Pinkmans
	Skinshops[#Skinshops+1] = { 1513.4,1356.95,108.29,286.3 } -- Gang9
	Skinshops[#Skinshops+1] = { 957.6,-2390.99,22.33,175.75 } -- China
	Skinshops[#Skinshops+1] = { 3047.53,-4136.9,9.86,351.5 }
	-- Skinshops[#Skinshops+1] = { 1030.2,-2550.23,32.28,85.04 } -- Vermelhos
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	-- Skinshops[#Skinshops+1] = { -139.96,-1609.06,35.03,68.04 } -- Groove
	-- Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxos
	Skinshops[#Skinshops+1] = { 514.2,370.01,151.73,104.89 } -- Roxos
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 117.31,-1962.14,21.33,201.26 } -- Ballas
	Skinshops[#Skinshops+1] = { 755.82,-203.84,70.63,289.14 } -- QG_34
	Skinshops[#Skinshops+1] = { 755.7,-203.72,70.63,280.63 } -- QG_113
	Skinshops[#Skinshops+1] = { 1221.1,-1858.54,45.71,289.14 } -- QG_116
	Skinshops[#Skinshops+1] = { 1330.04,-707.86,67.28,116.23 } -- QG_117
	Skinshops[#Skinshops+1] = { -2189.20,4283.77,49.18,196.14 } -- QG_144
	-- Skinshops[#Skinshops+1] = {  103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { 291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 945.01,47.64,80.29,53.86 } -- Bellagio
	Skinshops[#Skinshops+1] = { -1540.36,321.5,87.25,73.71 } -- Lavajato
	Skinshops[#Skinshops+1] = { 102.53,-1311.89,21.13,31.19 } -- Putaria
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -3320.91,548.73,13.77,303.31 } -- Arcade
	Skinshops[#Skinshops+1] = { 414.94,-23.43,91.93,56.7 } -- Callisto
	Skinshops[#Skinshops+1] = { -2271.77,322.98,174.6,22.68 } -- Redline
	Skinshops[#Skinshops+1] = { -2271.77,322.98,174.6,22.68 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 1378.51,-2096.32,52.6,39.69  } -- FerroVelho
	Skinshops[#Skinshops+1] = { 2643.51,3636.15,106.73,39.69 } -- Morro-do-Sacola
	Skinshops[#Skinshops+1] = { 883.73,-2100.55,30.46,175.75 } -- CarClube
	Skinshops[#Skinshops+1] = { -337.81,-166.57,44.58,272.13 } -- Virtude
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- Big
	Skinshops[#Skinshops+1] = { 2742.47,3500.22,61.3,357.17} -- Kraken
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { 1026.51,-2542.27,28.29,170.08 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { -60.09,994.66,239.52,328.82 } -- gringa
	Skinshops[#Skinshops+1] = { -1539.52,141.51,55.65,51.03 } -- bloods
	-- Skinshops[#Skinshops+1] = { -2804.84,2261.69,24.11,320.32 } -- bloods secundario
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = { -339.2,-1523.7,29.34,22.68 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1887.16,2070.1,145.57,334.49 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { 173.45,668.33,207.66,104.89 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -776.37,-2593.33,17.66,238.12 } -- Outlaws 
	Skinshops[#Skinshops+1] = { -617.15,-1617.33,33.01,172.92 } -- Topgear 
	Skinshops[#Skinshops+1] = { -290.78,1986.24,166.14,334.49 } -- israel
	-- Skinshops[#Skinshops+1] = { 1078.37,-1973.3,31.48,235.28 } -- gringa
	Skinshops[#Skinshops+1] = { -303.2,220.21,77.91,257.96 } -- luxor
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1267.24,-299.03,84.59,158.75 } -- barragem
	Skinshops[#Skinshops+1] = { 1251.62,-265.92,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 1506.8,-2368.57,78.03,274.97 } -- rosas
	Skinshops[#Skinshops+1] = { 1512.78,-2365.16,78.03,195.6 } -- rosas
	-- Skinshops[#Skinshops+1] = { 2225.07,3452.81,61.33,172.92 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2229.55,3452.95,61.33,170.08 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { 103.67,1221.91,207.17,102.05 } -- SOA
	Skinshops[#Skinshops+1] = { 1306.65,-735.32,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -215.34,-1334.28,34.9,266.46 } -- bennys
	Skinshops[#Skinshops+1] = { 1048.13,888.82,220.34,48.19 } -- playboy
	Skinshops[#Skinshops+1] = { 1341.91,-790.49,71.51,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { 1336.42,-788.7,71.51,348.67 } -- brancos
	Skinshops[#Skinshops+1] = { 1308.3,-733.85,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -1550.84,-393.9,41.97,51.03 } -- 
	Skinshops[#Skinshops+1] = { -3337.8,543.54,17.44,215.44 } -- mansao 60
	Skinshops[#Skinshops+1] = { 1963.43,6415.17,61.7,311.82 } -- marrons
	Skinshops[#Skinshops+1] = { -2272.06,323.23,174.6,22.68 }
	Skinshops[#Skinshops+1] = { -1687.17,-3185.18,14.0,243.78 }
	Skinshops[#Skinshops+1] = { 1402.74,1154.66,114.33,266.46 } -- fazendinha
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Campinho
	Skinshops[#Skinshops+1] = { 905.89,339.35,112.29,345.83 } -- Japao
	Skinshops[#Skinshops+1] = { -1044.65,305.04,71.66,266.46 } -- Inglaterra
	Skinshops[#Skinshops+1] = { -2022.42,4435.69,53.09,345.83 } -- Banzas
	Skinshops[#Skinshops+1] = { 355.76,-2729.82,1.72,257.96 } -- Dixavas
	Skinshops[#Skinshops+1] = { -769.38,8.1,40.64,345.83 } 
	Skinshops[#Skinshops+1] = { 1471.81,6539.39,18.64,85.04 } -- pier norte
	Skinshops[#Skinshops+1] = { -602.0,-914.22,23.88,184.26 } -- Anonymous
	Skinshops[#Skinshops+1] = { -602.7,-923.49,17.59,328.82 } -- Anonymous
	Skinshops[#Skinshops+1] = { -2813.9,2266.37,24.33,354.34 } -- qg 71
	Skinshops[#Skinshops+1] = { 676.42,909.22,247.57,170.08 } -- Inglaterra
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { 2612.27,5333.94,47.57,59.53 } -- prf
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -156.96,8259.62,12.82,11.34 } -- iate
	Skinshops[#Skinshops+1] = { -1784.4,-1376.75,11.88,39.69 } -- iate
	Skinshops[#Skinshops+1] = { -1883.34,-1164.43,11.73,320.32 } -- iate
	Skinshops[#Skinshops+1] = { -2210.16,-586.48,11.73,232.45 } 
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { -539.93,5002.83,159.92,272.13 } -- qg_86
	Skinshops[#Skinshops+1] = { -2675.14,1307.61,152.0,272.13 } -- qg_87
	Skinshops[#Skinshops+1] = { -2277.87,336.33,178.57,300.48 } -- qg_88
	Skinshops[#Skinshops+1] = { 3482.3,5015.04,11.91,212.6 }
	Skinshops[#Skinshops+1] = { -4504.72,-70.94,12.81,164.41 }
	Skinshops[#Skinshops+1] = { 994.15,3403.17,61.97,280.63 } -- QG_31
	Skinshops[#Skinshops+1] = { 89.54,-1966.65,20.74,320.32 } -- QG_43
	Skinshops[#Skinshops+1] = { 2456.34,4980.02,46.83,158.75 } -- QG_64
	Skinshops[#Skinshops+1] = { -2813.7,2266.54,24.31,343.0 } -- QG_124
	Skinshops[#Skinshops+1] = { 866.7,1872.27,144.52,138.9 } -- QG_126
	Skinshops[#Skinshops+1] = { 1378.59,-2096.53,52.6,306.15 } -- QG_68
	Skinshops[#Skinshops+1] = { -669.18,6391.58,13.02,133.53 } -- QG_128
	Skinshops[#Skinshops+1] = { -2598.64,1889.43,163.75,323.7 } -- QG_129
	Skinshops[#Skinshops+1] = { 2022.46,3373.80,46.60,80.00 } -- QG_130

elseif cityName == "Universo" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 2317.67,4864.61,47.49,307.93 } -- mansao97
	Skinshops[#Skinshops+1] = { -1468.16,-45.54,58.67,134.27 } -- mansao23
	Skinshops[#Skinshops+1] = { 4883.73,-5665.22,80.79,108.60 } -- mansao96
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- QG_134
	Skinshops[#Skinshops+1] = { 958.86,-966.6,42.95,348.67 } -- mecanica
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- Bombeiros
	Skinshops[#Skinshops+1] = { -951.11,-2046.77,12.92,130.4 } -- dp
	Skinshops[#Skinshops+1] = { 832.49,-1291.80,19.85,178.48 } -- Tatica
	Skinshops[#Skinshops+1] = { 457.64,-990.77,30.68,11.34 } -- dp praça
	Skinshops[#Skinshops+1] = { 2612.27,5333.94,47.57,59.53 } -- prf
	Skinshops[#Skinshops+1] = { 1150.65,-1583.05,35.28,138.9 } -- hp
	Skinshops[#Skinshops+1] = { 2516.96,-345.11,101.89,42.52 } -- Militar
	Skinshops[#Skinshops+1] = { -437.84,6012.35,36.99,357.17 } -- civil
	Skinshops[#Skinshops+1] = { -780.21,-1211.9,10.38,141.74 } -- Federal
	Skinshops[#Skinshops+1] = { -1887.58,3026.39,32.96,328.82 } -- Exercito
	Skinshops[#Skinshops+1] = { 1075.28,3273.75,41.11,198.43 } -- umbrella
	Skinshops[#Skinshops+1] = { 875.42,1860.9,142.5,226.78 } -- Metgala
	Skinshops[#Skinshops+1] = { -2305.71,-251.61,48.14,127.56 } -- Gang4
	Skinshops[#Skinshops+1] = { -458.91,-1264.9,25.48,51.03 } -- Afetados
	Skinshops[#Skinshops+1] = { 413.04,6468.02,29.82,274.97 } -- Pinkmans
	Skinshops[#Skinshops+1] = { 1513.4,1356.95,108.29,286.3 } -- Gang9
	Skinshops[#Skinshops+1] = { 957.6,-2390.99,22.33,175.75 } -- China
	-- Skinshops[#Skinshops+1] = { 1030.2,-2550.23,32.28,85.04 } -- Vermelhos
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	-- Skinshops[#Skinshops+1] = { -139.96,-1609.06,35.03,68.04 } -- Groove
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxos
	Skinshops[#Skinshops+1] = { 514.2,370.01,151.73,104.89 } -- Roxos
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 117.31,-1962.14,21.33,201.26 } -- Ballas
	-- Skinshops[#Skinshops+1] = {  103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { 291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 945.01,47.64,80.29,53.86 } -- Bellagio
	Skinshops[#Skinshops+1] = { -1540.36,321.5,87.25,73.71 } -- Lavajato
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { 736.58,-806.95,16.28,357.17 } -- Arcade
	Skinshops[#Skinshops+1] = { 414.94,-23.43,91.93,56.7 } -- Callisto
	Skinshops[#Skinshops+1] = { -599.26,-914.01,23.88,87.88 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 883.73,-2100.55,30.46,175.75 } -- CarClube
	Skinshops[#Skinshops+1] = { -337.81,-166.57,44.58,272.13 } -- Virtude
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- Big
	Skinshops[#Skinshops+1] = { 2742.47,3500.22,61.3,357.17} -- Kraken
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { 1026.51,-2542.27,28.29,170.08 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { -60.09,994.66,239.52,328.82 } -- gringa
	Skinshops[#Skinshops+1] = { -1539.52,141.51,55.65,51.03 } -- bloods
	-- Skinshops[#Skinshops+1] = { -2804.84,2261.69,24.11,320.32 } -- bloods secundario
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = { -339.2,-1523.7,29.34,22.68 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1887.16,2070.1,145.57,334.49 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { 173.45,668.33,207.66,104.89 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -776.37,-2593.33,17.66,238.12 } -- Outlaws 
	Skinshops[#Skinshops+1] = { -617.15,-1617.33,33.01,172.92 } -- Topgear 
	Skinshops[#Skinshops+1] = { -290.78,1986.24,166.14,334.49 } -- israel
	-- Skinshops[#Skinshops+1] = { 1078.37,-1973.3,31.48,235.28 } -- gringa
	Skinshops[#Skinshops+1] = { -303.2,220.21,77.91,257.96 } -- luxor
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1267.24,-299.03,84.59,158.75 } -- barragem
	Skinshops[#Skinshops+1] = { 1251.62,-265.92,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 1506.8,-2368.57,78.03,274.97 } -- rosas
	Skinshops[#Skinshops+1] = { 1512.78,-2365.16,78.03,195.6 } -- rosas
	-- Skinshops[#Skinshops+1] = { 2225.07,3452.81,61.33,172.92 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2229.55,3452.95,61.33,170.08 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { 103.67,1221.91,207.17,102.05 } -- SOA
	Skinshops[#Skinshops+1] = { 1306.65,-735.32,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -215.34,-1334.28,34.9,266.46 } -- bennys
	Skinshops[#Skinshops+1] = { 1048.13,888.82,220.34,48.19 } -- playboy
	Skinshops[#Skinshops+1] = { 1341.91,-790.49,71.51,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { 1336.42,-788.7,71.51,348.67 } -- brancos
	Skinshops[#Skinshops+1] = { 1308.3,-733.85,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -1550.84,-393.9,41.97,51.03 } -- 
	Skinshops[#Skinshops+1] = { -3337.8,543.54,17.44,215.44 } -- mansao 60
	Skinshops[#Skinshops+1] = { 1963.43,6415.17,61.7,311.82 } -- marrons
	Skinshops[#Skinshops+1] = { -2272.06,323.23,174.6,22.68 }
	Skinshops[#Skinshops+1] = { -1687.17,-3185.18,14.0,243.78 }
	Skinshops[#Skinshops+1] = { 1402.74,1154.66,114.33,266.46 } -- fazendinha
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Campinho
	Skinshops[#Skinshops+1] = { 886.42,352.9,112.56,226.78 } -- qg_17
	Skinshops[#Skinshops+1] = { -1044.65,305.04,71.66,266.46 } -- Inglaterra
	Skinshops[#Skinshops+1] = { -2022.42,4435.69,53.09,345.83 } -- Banzas
	Skinshops[#Skinshops+1] = { 355.76,-2729.82,1.72,257.96 } -- Dixavas
	Skinshops[#Skinshops+1] = { -769.38,8.1,40.64,345.83 } 
	Skinshops[#Skinshops+1] = { 1471.81,6539.39,18.64,85.04 } -- pier norte
	Skinshops[#Skinshops+1] = { -457.41,1545.76,393.22,147.41 } -- medelin
	Skinshops[#Skinshops+1] = { -2806.25,2267.16,24.08,314.65 } -- Noxus
	Skinshops[#Skinshops+1] = { 1836.37,2573.52,46.02,357.17 } -- Policia
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { 2505.72,3590.05,98.5,127.56 } -- qg_104
	Skinshops[#Skinshops+1] = { 129.79,-99.03,49.57,161.58 } -- QG_106
	Skinshops[#Skinshops+1] = { -801.43,-1349.90,5.15,257.88 } -- Federal
	Skinshops[#Skinshops+1] = { -699.85,-1430.78,5.02,297.64 } -- Federal
	Skinshops[#Skinshops+1] = { -704.29,-1296.07,5.40,225.93 } -- Federal
	Skinshops[#Skinshops+1] = { -770.97,-1318.31,9.60,225.74 } -- Federal
	Skinshops[#Skinshops+1] = { -1629.53,-1101.29,13.09,329.15 } 

elseif cityName == "Grande" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 1138.87,-1538.69,35.03,272.13 } -- hp
	Skinshops[#Skinshops+1] = { 2509.94,-441.94,106.91,320.32 } -- dp principal
	Skinshops[#Skinshops+1] = { 2517.45,-345.63,101.89,39.69 } -- dp principal
	Skinshops[#Skinshops+1] = { 1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = { 1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = { 1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	Skinshops[#Skinshops+1] = { -1081.81,-247.81,44.01,238.12 }
	Skinshops[#Skinshops+1] = { 3606.11,3729.53,29.69,343.0 } -- Groove
	Skinshops[#Skinshops+1] = { -1049.56,-229.46,44.01,215.44 } -- Amarelo
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = { 103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { -194.55,1914.6,197.11,170.08 } -- Bahamas
	Skinshops[#Skinshops+1] = { 963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = { -141.41,-1608.56,35.03,51.03 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- israel
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { -641.82,-1240.5,11.54,42.52 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { 1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = { -1563.89,-373.7,48.04,303.31 } -- bloods
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = { 355.53,-2729.49,1.7,56.7 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1881.59,2068.82,145.57,155.91 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { -566.04,227.81,74.88,76.54 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = { 956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1254.84,-272.87,77.56,178.59 } -- barragem
	Skinshops[#Skinshops+1] = { 489.17,2580.53,49.99,195.6 } -- azuis
	Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { 1044.19,884.56,220.36,53.86 } -- mercenarios
	Skinshops[#Skinshops+1] = { -1528.18,304.15,83.42,8.51 } -- playboy
	Skinshops[#Skinshops+1] = { -2779.14,2509.53,3.98,0.0 } -- Noxus
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe	
	
elseif cityName == "Galaxy" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 1138.87,-1538.69,35.03,272.13 } -- hp
	Skinshops[#Skinshops+1] = { 2509.94,-441.94,106.91,320.32 } -- dp principal
	Skinshops[#Skinshops+1] = { 2517.45,-345.63,101.89,39.69 } -- dp principal
	Skinshops[#Skinshops+1] = { 1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = { 1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = { 1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2742.43,2716.88,55.84,48.19 } -- Sindicato
	Skinshops[#Skinshops+1] = { -1081.81,-247.81,44.01,238.12 }
	Skinshops[#Skinshops+1] = { 3606.11,3729.53,29.69,343.0 } -- Groove
	Skinshops[#Skinshops+1] = { -1049.56,-229.46,44.01,215.44 } -- Amarelo
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = { 103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { -291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = { -141.41,-1608.56,35.03,51.03 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- israel
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { -2131.91,-176.94,42.44,218.27 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { 1033.38,916.42,222.06,59.53 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = { -1563.89,-373.7,48.04,303.31 } -- bloods
	Skinshops[#Skinshops+1] = { -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = { 355.53,-2729.49,1.7,56.7 } -- warlocks
	Skinshops[#Skinshops+1] = { 928.25,363.91,112.35,229.61  } -- mexicana
	Skinshops[#Skinshops+1] = {-1881.59,2068.82,145.57,155.91 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { -324.01,1992.22,151.26,291.97 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { -613.39,-1625.22,33.01,87.88 } -- overdrive
	Skinshops[#Skinshops+1] = { -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = { 956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 2743.75,2717.9,55.84,218.27 }
	Skinshops[#Skinshops+1] = { -1797.74,425.97,128.28,314.65 } -- luxor
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { -1520.57,138.72,60.44,133.23 } -- playboy
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1324.2,-704.54,67.9,201.26 } -- brancos
	Skinshops[#Skinshops+1] = { 1251.7,-265.25,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 489.17,2580.53,49.99,195.6 } -- azuis
	Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { -1541.68,324.89,87.25,238.12 } -- frança
	Skinshops[#Skinshops+1] = { 176.63,669.24,207.66,96.38 } -- bahamas
	Skinshops[#Skinshops+1] = { 1869.37,6375.66,45.6,252.29 } -- marrons
	Skinshops[#Skinshops+1] = { 1403.4,-2397.56,65.7,334.49 } -- rosas
	Skinshops[#Skinshops+1] = { 1507.72,-2369.02,78.03,280.63 } -- rosas
	Skinshops[#Skinshops+1] = { 514.87,370.09,151.73,116.23 } -- roxos
	Skinshops[#Skinshops+1] = { -2779.14,2509.53,3.98,0.0 } -- Noxus
	Skinshops[#Skinshops+1] = { -2776.76,2324.3,6.79,53.86 } -- Noxus
	Skinshops[#Skinshops+1] = { 3094.7,-4710.87,15.27,172.92 } 
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe

elseif cityName == "Gaules" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 1138.87,-1538.69,35.03,272.13 } -- hp
	Skinshops[#Skinshops+1] = { 2509.94,-441.94,106.91,320.32 } -- dp principal
	Skinshops[#Skinshops+1] = { 2517.45,-345.63,101.89,39.69 } -- dp principal
	Skinshops[#Skinshops+1] = {   1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = {  1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = {  1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = {  1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = {  2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = {  2742.43,2716.88,55.84,48.19 } -- Sindicato
	Skinshops[#Skinshops+1] = {  -1081.81,-247.81,44.01,238.12 }
	Skinshops[#Skinshops+1] = {  3606.11,3729.53,29.69,343.0 } -- Groove
	Skinshops[#Skinshops+1] = {  -1049.56,-229.46,44.01,215.44 } -- Amarelo
	Skinshops[#Skinshops+1] = {  2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = {  358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = {  89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = {  103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = {  -291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = {  963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = {  -141.41,-1608.56,35.03,51.03 } -- Redline
	Skinshops[#Skinshops+1] = {  -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = {  1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = {  2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- israel
	Skinshops[#Skinshops+1] = {  -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = {  556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = {  99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = {  1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = {  -641.82,-1240.5,11.54,42.52 } -- hellsangels
	Skinshops[#Skinshops+1] = {  3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = {  1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = {  -1563.89,-373.7,48.04,303.31 } -- bloods
	Skinshops[#Skinshops+1] = {  -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = {  355.53,-2729.49,1.7,56.7 } -- warlocks
	Skinshops[#Skinshops+1] = {  -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = {  -1881.59,2068.82,145.57,155.91 } -- russa
	Skinshops[#Skinshops+1] = {  -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = {  -566.04,227.81,74.88,76.54 } -- triade
	Skinshops[#Skinshops+1] = {  420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = {  2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = {  -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = {  956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1251.7,-265.25,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 489.17,2580.53,49.99,195.6 } -- azuis
	Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { -2779.14,2509.53,3.98,0.0 } -- Noxus
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe

elseif cityName == "Fronteira" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 1138.87,-1538.69,35.03,272.13 } -- hp
	Skinshops[#Skinshops+1] = { 2509.94,-441.94,106.91,320.32 } -- dp principal
	Skinshops[#Skinshops+1] = { 2517.45,-345.63,101.89,39.69 } -- dp principal
	Skinshops[#Skinshops+1] = {   1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = {  1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = {  1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = {  1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = {  2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = {  2742.43,2716.88,55.84,48.19 } -- Sindicato
	Skinshops[#Skinshops+1] = {  -1081.81,-247.81,44.01,238.12 }
	Skinshops[#Skinshops+1] = {  3606.11,3729.53,29.69,343.0 } -- Groove
	Skinshops[#Skinshops+1] = {  -1049.56,-229.46,44.01,215.44 } -- Amarelo
	Skinshops[#Skinshops+1] = {  2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = {  358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = {  89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = {  103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = {  -291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = {  963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = {  -141.41,-1608.56,35.03,51.03 } -- Redline
	Skinshops[#Skinshops+1] = {  -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = {  1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = {  2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- israel
	Skinshops[#Skinshops+1] = {  -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = {  556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = {  99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = {  1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = {  -641.82,-1240.5,11.54,42.52 } -- hellsangels
	Skinshops[#Skinshops+1] = {  3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = {  1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = {  -1563.89,-373.7,48.04,303.31 } -- bloods
	Skinshops[#Skinshops+1] = {  -3025.46,59.49,11.95,331.66 } -- crips
	Skinshops[#Skinshops+1] = {  355.53,-2729.49,1.7,56.7 } -- warlocks
	Skinshops[#Skinshops+1] = {  -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = {  -1881.59,2068.82,145.57,155.91 } -- russa
	Skinshops[#Skinshops+1] = {  -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = {  -566.04,227.81,74.88,76.54 } -- triade
	Skinshops[#Skinshops+1] = {  420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = {  2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = {  -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = {  956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1251.7,-265.25,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 489.17,2580.53,49.99,195.6 } -- azuis
	Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { -2779.14,2509.53,3.98,0.0 } -- Noxus
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe

elseif cityName == "Alexandria" then
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 2505.72,3590.05,98.5,127.56 } -- QG_104
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- bombeiros
	Skinshops[#Skinshops+1] = { 1472.11,6539.36,18.64,272.13 } -- pier norte
	Skinshops[#Skinshops+1] = { 1150.08,-1583.2,35.28,178.59 } -- hp
	Skinshops[#Skinshops+1] = { 2509.94,-441.94,106.91,320.32 } -- dp principal
	Skinshops[#Skinshops+1] = { 2517.45,-345.63,101.89,39.69 } -- dp principal
	Skinshops[#Skinshops+1] = {   1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = { 457.64,-990.77,30.68,11.34 } -- dp praça
	Skinshops[#Skinshops+1] = {  1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = {  1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = {  1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = {  2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = {  2742.43,2716.88,55.84,48.19 } -- Sindicato
	Skinshops[#Skinshops+1] = {  3606.11,3729.53,29.69,343.0 } -- Groove
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = { 103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { -291.24,216.89,78.82,277.8 } -- Bahamas
	Skinshops[#Skinshops+1] = { 963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = { -141.41,-1608.56,35.03,51.03 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- israel
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { -641.82,-1240.5,11.54,42.52 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { 1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = { -1563.89,-373.7,48.04,303.31 } -- bloods
	Skinshops[#Skinshops+1] = { -1566.02,327.9,86.84,289.14 } -- crips
	Skinshops[#Skinshops+1] = { 355.53,-2729.49,1.7,56.7 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1881.59,2068.82,145.57,155.91 } -- russa
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { 1044.08,884.63,220.36,42.52 } -- triade
	Skinshops[#Skinshops+1] = { -1522.87,136.83,60.44,34.02 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = { 956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1251.7,-265.25,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { -3050.88,109.82,12.35,328.82 }
	Skinshops[#Skinshops+1] = { 489.17,2580.53,49.99,195.6 } -- azuis
	Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { -2779.14,2509.53,3.98,0.0 } -- Noxus
	Skinshops[#Skinshops+1] = { -951.12,-2043.19,9.4,249.45 }
	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { -3337.8,543.54,17.44,215.44 } -- mansao 60
	Skinshops[#Skinshops+1] = { -780.21,-1211.9,10.38,141.74} -- Tatica
	Skinshops[#Skinshops+1] = { 2613.76,5333.45,47.57,198.43 } -- Prf
	
elseif cityName == "Maresia" then
	Skinshops[#Skinshops+1] = { -795.55,-1349.70,5.15,120.98 } -- Tatica
	Skinshops[#Skinshops+1] = { -699.43,-1434.45,5.02,203.45 } -- Militar
	Skinshops[#Skinshops+1] = { -776.59,-1321.66,9.60,289.27 } -- Militar
	Skinshops[#Skinshops+1] = { 2517.92,-346.08,101.89,36.86 } -- Militar
	Skinshops[#Skinshops+1] = { 2508.49,-442.21,106.91,76.54 } -- Militar
	Skinshops[#Skinshops+1] = { 2612.27,5333.94,47.57,59.53 } -- Prf
	Skinshops[#Skinshops+1] = { -699.67,-1299.11,5.40,51.70 } -- Civil
	Skinshops[#Skinshops+1] = { -1205.07,-891.86,13.88,303.31 } -- Empresa1
	Skinshops[#Skinshops+1] = { 129.79,-99.03,49.57,161.58 } -- QG_106
	Skinshops[#Skinshops+1] = { -417.98,4372.91,61.35,184.26 } -- mansao94
	Skinshops[#Skinshops+1] = { 101.29,-1311.0,21.13,22.68 } --vanilla
	Skinshops[#Skinshops+1] = { -632.41,-134.04,43.22,93.55 } -- Bombeiros
	Skinshops[#Skinshops+1] = { 1150.45,-1583.11,35.28,323.15 } -- hp
	Skinshops[#Skinshops+1] = { -336.9,-165.99,44.58,2.84 } -- mecanica
	Skinshops[#Skinshops+1] = { 457.64,-990.77,30.68,11.34 } -- dp praça
	Skinshops[#Skinshops+1] = { -951.75,-2042.66,9.4,226.78} -- dp principal
	Skinshops[#Skinshops+1] = { 176.33,669.34,207.66,85.04 } -- Galaxy
	Skinshops[#Skinshops+1] = { 1076.15,3266.02,38.6,226.78 } -- Verde
	Skinshops[#Skinshops+1] = { 1882.0,6400.07,48.53,175.75 }-- marrons
	Skinshops[#Skinshops+1] = { -2305.71,-251.61,48.14,127.56 } -- Gang4
	Skinshops[#Skinshops+1] = { 1502.54,1517.99,108.16,348.67 } -- Marrom
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Campinho
	Skinshops[#Skinshops+1] = { 1165.34,-142.11,59.55,226.78 } -- Vermelho
	Skinshops[#Skinshops+1] = { 1797.05,441.96,172.34,59.53 } -- Azul
	Skinshops[#Skinshops+1] = { -458.91,-1264.9,25.48,51.03 } -- Afetados
	Skinshops[#Skinshops+1] = { 875.42,1860.9,142.5,226.78 } -- Metgala
	Skinshops[#Skinshops+1] = { 2133.61,-15.7,227.22,45.36 } -- Rosa
	Skinshops[#Skinshops+1] = { 2798.91,2661.26,82.34,34.02 } -- Sindicato
	Skinshops[#Skinshops+1] = { 413.04,6468.02,29.82,274.97 } -- Pinkmans
	Skinshops[#Skinshops+1] = { -1628.8,-1100.43,13.09,232.45 }
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { -566.38,279.92,82.97,79.38 } -- Tequilas
	Skinshops[#Skinshops+1] = { 2742.47,3500.22,61.3,357.17} -- Kraken
	-- Skinshops[#Skinshops+1] = { -1046.14,309.93,66.99,206.93 } -- inglaterra
	Skinshops[#Skinshops+1] = { 3606.11,3729.53,29.69,343.0 } -- Groove
	Skinshops[#Skinshops+1] = { 2115.64,3886.09,33.23,215.44 } -- Roxo
	Skinshops[#Skinshops+1] = { 358.11,-2033.39,22.39,48.19 } -- Vagos
	Skinshops[#Skinshops+1] = { 89.54,-1989.74,20.41,314.65 } -- Ballas
	Skinshops[#Skinshops+1] = { 103.51,3613.09,40.49,175.75 } -- Laranja
	Skinshops[#Skinshops+1] = { 1033.47,916.33,222.06,11.34 } -- Bahamas
	Skinshops[#Skinshops+1] = { 963.86,18.02,75.74,144.57 } -- Bellagio
	Skinshops[#Skinshops+1] = { -141.41,-1608.56,35.03,51.03 } -- Redline
	Skinshops[#Skinshops+1] = { -203.27,-1330.04,34.9,127.56 } -- Undergrounds
	Skinshops[#Skinshops+1] = { 1382.88,-2093.85,47.21,31.19 } -- fazer
	Skinshops[#Skinshops+1] = { 2361.62,5647.1,92.71,141.74 } -- Topgear
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- Jamakeikos
	Skinshops[#Skinshops+1] = { -1149.56,-1554.59,7.63,153.08 } -- bandoleros
	Skinshops[#Skinshops+1] = { 556.33,-2773.46,6.08,59.53 } -- Gang5
	Skinshops[#Skinshops+1] = { 99.06,1229.61,207.17,345.83 } -- Mayans
	Skinshops[#Skinshops+1] = { 1028.6,-2550.72,32.28,351.5 } -- soa
	Skinshops[#Skinshops+1] = { -641.82,-1240.5,11.54,42.52 } -- hellsangels
	Skinshops[#Skinshops+1] = { 3234.18,5120.17,20.15,116.23 }
	Skinshops[#Skinshops+1] = { -303.6,220.58,77.91,11.34 } -- luxor
	Skinshops[#Skinshops+1] = { 2312.64,5568.36,51.91,343.0 } -- sinaloa
	Skinshops[#Skinshops+1] = { 1065.13,-1990.52,31.76,238.12 } -- gringa
	Skinshops[#Skinshops+1] = { -1813.92,446.95,127.91,306.15 } -- bloods
	Skinshops[#Skinshops+1] = { -1672.27,432.66,108.6,2.84 } -- crips
	Skinshops[#Skinshops+1] = { 355.53,-2729.49,1.7,56.7 } -- warlocks
	Skinshops[#Skinshops+1] = { -1814.54,447.96,127.91,351.5 } -- mexicana
	Skinshops[#Skinshops+1] = { -1514.29,832.99,181.59,22.68 } -- russia
	Skinshops[#Skinshops+1] = { -1491.07,845.77,181.59,87.88 } -- irlandesa
	Skinshops[#Skinshops+1] = { -277.37,1851.72,194.48,14.18 } -- triade
	Skinshops[#Skinshops+1] = { 420.53,-1483.85,33.8,116.23 } -- italiana
	Skinshops[#Skinshops+1] = { 2332.3,5524.54,51.68,249.45 } -- overdrive
	Skinshops[#Skinshops+1] = { -777.34,-2592.59,17.66,51.03 } -- Outlaws 
	Skinshops[#Skinshops+1] = { 956.47,-2390.61,22.33,22.68 } -- Topgear 
	Skinshops[#Skinshops+1] = { 1252.95,-1720.72,56.45,65.2 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1289.66,-1762.54,54.21,22.68 } -- LosAztecas
	Skinshops[#Skinshops+1] = { 1338.0,-792.43,71.51,343.0 } -- brancos
	Skinshops[#Skinshops+1] = { 1346.33,-705.11,67.74,73.71 } -- brancos
	Skinshops[#Skinshops+1] = { 1267.24,-299.03,84.59,158.75 } -- barragem
	Skinshops[#Skinshops+1] = { 1251.62,-265.92,77.91,107.72 } -- barragem
	Skinshops[#Skinshops+1] = { 1506.8,-2368.57,78.03,274.97 } -- rosas
	Skinshops[#Skinshops+1] = { 1512.78,-2365.16,78.03,195.6 } -- rosas
	-- Skinshops[#Skinshops+1] = { 2225.07,3452.81,61.33,172.92 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2229.55,3452.95,61.33,170.08 } -- cinzas
	-- Skinshops[#Skinshops+1] = { 2226.14,3453.91,61.33,187.09 } -- cinzas
	Skinshops[#Skinshops+1] = { 103.67,1221.91,207.17,102.05 } -- SOA
	Skinshops[#Skinshops+1] = { 1306.65,-735.32,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -215.34,-1334.28,34.9,266.46 } -- bennys
	Skinshops[#Skinshops+1] = { 1048.13,888.82,220.34,48.19 } -- playboy
	Skinshops[#Skinshops+1] = { 1341.91,-790.49,71.51,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { 1336.42,-788.7,71.51,348.67 } -- brancos
	Skinshops[#Skinshops+1] = { 1308.3,-733.85,65.09,340.16 } -- brancos
	Skinshops[#Skinshops+1] = { -1550.84,-393.9,41.97,51.03 } -- 
	Skinshops[#Skinshops+1] = { 2513.83,4107.05,38.59,243.78 } -- Jamakeikos
	Skinshops[#Skinshops+1] = { 1963.43,6415.17,61.7,311.82 } -- marrons
	Skinshops[#Skinshops+1] = { -2272.06,323.23,174.6,22.68 }
	Skinshops[#Skinshops+1] = { -1687.17,-3185.18,14.0,243.78 }
	Skinshops[#Skinshops+1] = { 1402.74,1154.66,114.33,266.46 } -- fazendinha
	Skinshops[#Skinshops+1] = { 747.78,-308.18,59.8,306.15 } -- Campinho
	Skinshops[#Skinshops+1] = { 905.89,339.35,112.29,345.83 } -- Japao
	Skinshops[#Skinshops+1] = { 1402.74,1154.66,114.33,266.46 } -- fazendinha
	Skinshops[#Skinshops+1] = { 134.68,-369.75,50.33,17.01 } -- Big
	Skinshops[#Skinshops+1] = { 883.73,-2100.55,30.46,175.75 } -- CarClube
	Skinshops[#Skinshops+1] = { 414.94,-23.43,91.93,56.7 } -- Callisto
	Skinshops[#Skinshops+1] = { 736.58,-806.95,16.28,357.17 } -- Arcade
	-- Skinshops[#Skinshops+1] = { -337.81,-166.57,44.58,272.13 } -- Virtude
	Skinshops[#Skinshops+1] = { -2022.42,4435.69,53.09,345.83 } -- Banzas
	Skinshops[#Skinshops+1] = { -339.2,-1523.7,29.34,22.68 } -- Dixavas

	Skinshops[#Skinshops+1] = { 5026.55,-5760.97,15.77,232.45 } -- Caribe
	Skinshops[#Skinshops+1] = { 3088.32,5091.99,23.25,73.71 } -- qg_80
	Skinshops[#Skinshops+1] = { -1179.62,302.46,73.67,102.05 } -- qg_82
	Skinshops[#Skinshops+1] = { -1226.24,-1737.73,4.53,138.9 } -- qg_83
	Skinshops[#Skinshops+1] = { -2423.52,1790.06,185.48,39.69 } -- qg_84
	Skinshops[#Skinshops+1] = { -878.0,-1434.81,7.53,201.26 } -- qg_85
	Skinshops[#Skinshops+1] = { -3337.8,543.54,17.44,215.44 } -- mansao 60
	-- arenas
	Skinshops[#Skinshops+1] = { -1947.24,5891.7,208.48,300.48 } -- Arena 6x6
	Skinshops[#Skinshops+1] = { -1868.47,5791.96,209.38,209.77 } -- Arena Fazenda
	Skinshops[#Skinshops+1] = { -1575.78,5913.55,213.54,300.48 } -- Arena Prédio
	Skinshops[#Skinshops+1] = { -1685.61,5881.79,211.36,209.77 } -- Arena 1x1
	-- vanilla
	Skinshops[#Skinshops+1] = { 133.55,-1296.23,-84.25,269.3 }
	Skinshops[#Skinshops+1] = { 135.62,-1319.09,-84.25,79.38 }
	Skinshops[#Skinshops+1] = { 119.78,-1313.3,-84.25,229.61 }
	Skinshops[#Skinshops+1] = { 106.22,-1319.56,-84.25,14.18 }
	Skinshops[#Skinshops+1] = { 119.75,-1305.41,-84.25,19.85 }
	Skinshops[#Skinshops+1] = { 105.63,-1297.38,-84.13,11.34 }
	Skinshops[#Skinshops+1] = { 127.17,-1296.73,-84.25,277.8 }
	
end

-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSTART
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- 	local Tables = {}

-- 	for Number = 1,#Skinshops do
-- 		Tables[#Tables + 1] = { Skinshops[Number][1],Skinshops[Number][2],Skinshops[Number][3],2.0,"E","Loja de Roupas","Pressione para abrir" }
-- 	end

-- 	TriggerEvent("hoverfy:Insert",Tables)
-- end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADSYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
-- CreateThread(function()
-- 	while true do
-- 		local TimeDistance = 999
-- 		if LocalPlayer["state"]["Route"] < 900000 then
-- 			local Ped = PlayerPedId()
-- 			if not IsPedInAnyVehicle(Ped) then
-- 				local Coords = GetEntityCoords(Ped)

-- 				for Number = 1,#Skinshops do
-- 					local Distance = #(Coords - vec3(Skinshops[Number][1],Skinshops[Number][2],Skinshops[Number][3]))
-- 					if Distance <= 2 then
-- 						TimeDistance = 1

-- 						if IsControlJustPressed(0,38) and not exports["hud"]:Wanted() and not exports["hud"]:Reposed() then
--                             if not LocalPlayer["state"]["Plaster"] then
--                                 OpenSkinshop()
--                             end
-- 						end
-- 					end
-- 				end
-- 			end
-- 		end

-- 		Wait(TimeDistance)
-- 	end
-- end)

AddEventHandler('onResourceStart', function(resource)
    Wait(1500)
    if resource == "sleepless_interact" then
        StartInteraction()
    end

    if resource == GetCurrentResourceName() then
        StartInteraction()
    end
end)

AddEventHandler('playerSpawned', function(resource)
    StartInteraction()
end)

function StartInteraction()
    for Number = 1,#Skinshops do
        interact.addCoords({
            id = "skinshop:"..tostring(Number),
            coords = vec3(Skinshops[Number][1],Skinshops[Number][2],Skinshops[Number][3]),
            options = {
                {
                    label = _t("openSkinshop"),
                    icon = "shopping-bag",
                    onSelect = function(data)
                        OpenSkinshop()
                    end,
                    canInteract = function(entity, distance, coords, id)
                        return not exports["hud"]:Wanted() and not exports["hud"]:Reposed() and not LocalPlayer["state"]["Plaster"] and not exports["hud"]:Wanted() and not LocalPlayer["state"]["FFA"] and not LocalPlayer["state"]["PVP"] and not GlobalState["Restarting"] and LocalPlayer["state"]["Route"] < 900000
                    end
                }
            },
            renderDistance = 7.5,
            activeDistance = 1.5,
            cooldown = 1500
        })
    end
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- SKINSHOP:OPEN
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:Open")
AddEventHandler("skinshop:Open",function(Boolean,Variable)
	TriggerEvent("dynamic:closeSystem")
    if Variable then
        local Ped = PlayerPedId()
        if IsPedFalling(Ped) then
            return
        end
        Newbie = true
        OpenSkinshop()
        FreezeEntityPosition(PlayerPedId(),true)
        vSERVER.Open()
        return
    end
	if not exports["hud"]:Wanted() and not exports["hud"]:Reposed() then
        local Ped = PlayerPedId()
        if Boolean then
            Command = true
        end
        if IsPedFalling(Ped) then
            return
        end
        OpenSkinshop()
        FreezeEntityPosition(PlayerPedId(),true)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- MAXVALUES
-----------------------------------------------------------------------------------------------------------------------------------------
function MaxValues()
	local MaxValues = {}
	local Ped = PlayerPedId()
    local isMale = GetEntityModel(Ped) == GetHashKey("mp_m_freemode_01")
	for Index, dump in pairs(SharedClothingData) do
        local v = {}
        v["min"] = dump["min"]
        v["max"] = dump["max"]
        v["id"] = dump["id"]
        v["mode"] = dump["mode"]
        v["vips"] = dump["vips"]
        v["diamonds"] = dump["diamonds"]
        v["prices"] = dump["prices"]
        v["reset"] = dump["reset"]

		if v["mode"] == "variation" then
			v["item"] = GetNumberOfPedDrawableVariations(Ped,v["id"])
			v["texture"] = GetNumberOfPedTextureVariations(Ped,v["id"],GetPedDrawableVariation(Ped,v["id"])) - 1
		elseif v["mode"] == "prop" then
			v["item"] = GetNumberOfPedPropDrawableVariations(Ped,v["id"])
			v["texture"] = GetNumberOfPedPropTextureVariations(Ped,v["id"],GetPedPropIndex(Ped,v["id"])) - 1
		end

        if isMale then
            v["diamonds"] = v["diamonds"]["mp_m_freemode_01"]
            v["vips"] = v["vips"]["mp_m_freemode_01"]
            v["prices"] = v["prices"]["mp_m_freemode_01"]
        else
            v["diamonds"] = v["diamonds"]["mp_f_freemode_01"]
            v["vips"] = v["vips"]["mp_f_freemode_01"]
            v["prices"] = v["prices"]["mp_f_freemode_01"]
        end

        if isMale then
            v["reset"] = v["reset"]["mp_m_freemode_01"]
        else
            v["reset"] = v["reset"]["mp_f_freemode_01"]
        end

		if v["texture"] < 0 then
			v["texture"] = 0
		end
        MaxValues[Index] = v
	end

	return MaxValues
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENSKINSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
function OpenSkinshop()
    FreezeEntityPosition(PlayerPedId(),true)
	LocalPlayer["state"]["Skinshop"] = Dataset
    Bucket = LocalPlayer["state"]["Route"]
    if not Command then
        vSERVER.Open()
    end
    SendNUIMessage({ action = "setVisible", data = "" })

	vRP.playAnim(true,{"mp_sleep","bind_pose_180"},true)
    CachedCoords = GetOffsetFromEntityInWorldCoords(PlayerPedId(),0.25,1.0,0.0)

	SetNuiFocus(true,true)
	CameraActive()
    TriggerEvent("hud:Active",false)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CAMERAACTIVE
-----------------------------------------------------------------------------------------------------------------------------------------
local function UpdateCameraBasedOnInit()
	local Ped = PlayerPedId()
    if not CachedCoords then
        CachedCoords = GetOffsetFromEntityInWorldCoords(Ped,0.25,1.0,0.0)
    end

	if Init == "hat" then
		SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.45)
    elseif Init == "mask" then
        SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.45)
	elseif Init == "shirt" then
		SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.25)
	elseif Init == "pants" then
		SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] - 0.45)
	elseif Init == "watch" then
		SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.05)
    elseif Init == "bracelet" then
        SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.05)
    elseif Init == "arms" then
        SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.15)
    elseif Init == "vest" then
        SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.15)
    elseif Init == "shoes" then
        SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] - 0.75)
    else
        SetCamCoord(Camera,CachedCoords["x"],CachedCoords["y"],CachedCoords["z"] + 0.25)
	end
end

function CameraActive(Number,NPC)
	if DoesCamExist(Camera) then
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(Camera,false)
		DestroyCam(Camera,false)
		Camera = nil
	end

	local Ped = PlayerPedId()

	if Number then
		SetEntityCoords(Ped,Skinshops[Number][1],Skinshops[Number][2],Skinshops[Number][3] - 1)
		SetEntityHeading(Ped,Skinshops[Number][4])
	end

    if NPC then
        SetEntityCoords(Ped,NPC["x"],NPC["y"],NPC["z"] - 1)
        SetEntityHeading(Ped,NPC["w"])
    end

	local Heading = GetEntityHeading(Ped)
	Camera = CreateCam("DEFAULT_SCRIPTED_CAMERA",true)
    UpdateCameraBasedOnInit()

	RenderScriptCams(true,true,100,true,true)
	SetCamRot(Camera,0.0,0.0,Heading + 180)
	SetEntityHeading(Ped,Heading)
	SetCamActive(Camera,true)
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- APPLY
-----------------------------------------------------------------------------------------------------------------------------------------
exports("Apply",function(Data,Ped)
	if not Ped then
		Ped = PlayerPedId()
	end

	if not Data then
		Data = Dataset
	end

	for Index,v in pairs(Dataset) do
		if not Data[Index] then
			Data[Index] = {
				["item"] = v["item"],
				["texture"] = v["texture"]
			}
		end
	end

	SetPedComponentVariation(Ped,4,Data["pants"]["item"],Data["pants"]["texture"],1)
	SetPedComponentVariation(Ped,3,Data["arms"]["item"],Data["arms"]["texture"],1)
	SetPedComponentVariation(Ped,5,Data["backpack"]["item"],Data["backpack"]["texture"],1)
	SetPedComponentVariation(Ped,8,Data["tshirt"]["item"],Data["tshirt"]["texture"],1)
	SetPedComponentVariation(Ped,9,Data["vest"]["item"],Data["vest"]["texture"],1)
	SetPedComponentVariation(Ped,11,Data["torso"]["item"],Data["torso"]["texture"],1)
	SetPedComponentVariation(Ped,6,Data["shoes"]["item"],Data["shoes"]["texture"],1)
	SetPedComponentVariation(Ped,1,Data["mask"]["item"],Data["mask"]["texture"],1)
	SetPedComponentVariation(Ped,10,Data["decals"]["item"],Data["decals"]["texture"],1)
	SetPedComponentVariation(Ped,7,Data["accessory"]["item"],Data["accessory"]["texture"],1)

	if Data["hat"]["item"] ~= -1 and Data["hat"]["item"] ~= 0 then
		SetPedPropIndex(Ped,0,Data["hat"]["item"],Data["hat"]["texture"],1)
	else
		ClearPedProp(Ped,0)
	end

	if Data["glass"]["item"] ~= -1 and Data["glass"]["item"] ~= 0 then
		SetPedPropIndex(Ped,1,Data["glass"]["item"],Data["glass"]["texture"],1)
	else
		ClearPedProp(Ped,1)
	end

	if Data["ear"]["item"] ~= -1 and Data["ear"]["item"] ~= 0 then
		SetPedPropIndex(Ped,2,Data["ear"]["item"],Data["ear"]["texture"],1)
	else
		ClearPedProp(Ped,2)
	end

	if Data["watch"]["item"] ~= -1 and Data["watch"]["item"] ~= 0 then
		SetPedPropIndex(Ped,6,Data["watch"]["item"],Data["watch"]["texture"],1)
	else
		ClearPedProp(Ped,6)
	end

	if Data["bracelet"]["item"] ~= -1 and Data["bracelet"]["item"] ~= 0 then
		SetPedPropIndex(Ped,7,Data["bracelet"]["item"],Data["bracelet"]["texture"],1)
	else
		ClearPedProp(Ped,7)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSESKINSHOP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getDataOfCategory", function(tag, Callback)
    local Ped = PlayerPedId()
    local isMale = GetEntityModel(Ped) == GetHashKey("mp_m_freemode_01")
    local currentsOfTag = Dataset[tag]
    local maxsOfTag = MaxValues()[tag]
    local isVip = vSERVER.CheckVip()
    print("getDataOfCategory", tostring(isVip))
    Callback({
        current = currentsOfTag,
        max = maxsOfTag,
        isVip = isVip,
        isMale = isMale
    })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateDataOfCategory",function(Data,Callback)
	local _Dataset = Dataset
    if Data["item"] and Data["texture"] and Data["category"] and _Dataset[Data["category"]] then
        _Dataset[Data["category"]]["item"] = Data["item"]
        _Dataset[Data["category"]]["texture"] = Data["texture"]
        exports["skinshop"]:Apply()
    end

	Callback(MaxValues())
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- UPDATE
-----------------------------------------------------------------------------------------------------------------------------------------
--RegisterNUICallback("buyDataOfCategory",function(Data,Callback)
--    local isMale = GetEntityModel(PlayerPedId()) == GetHashKey("mp_m_freemode_01")
--    local success = vSERVER.tryBuyCloth(Data["category"], Data["item"], isMale)
--    if success then
--        local newData = LocalPlayer["state"]["Skinshop"]
--        newData[Data["category"]]["item"] = Data["item"]
--        newData[Data["category"]]["texture"] = Data["texture"]
--        vSERVER.Update(newData)
--    end
--	Callback("Ok")
--end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("updateCamera",function(Data,Callback)
	Init = Data
    UpdateCameraBasedOnInit()

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETUP
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("getIsFirstLogin",function(Data,Callback)
	Callback(LocalPlayer["state"]["FirstLogin"])
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SAVE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("save",function(Data,Callback)
	if DoesCamExist(Camera) then
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(Camera,false)
		DestroyCam(Camera,false)
		Camera = nil
	end
    if not Command then
        vSERVER.Cancel()
    end
    Command = false
	vSERVER.Update(Dataset)
	TriggerEvent("vrp:removeObjects")
    if Newbie then
        vSERVER.Cancel()
        Newbie = false
    end
	SetNuiFocus(false,false)
    TriggerEvent("hud:Active", true)
    Callback("Ok")
    FreezeEntityPosition(PlayerPedId(),false)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- RESET
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("hideFrame",function(Data,Callback)
    if LocalPlayer["state"]["FirstLogin"] then
        return
    end
	if DoesCamExist(Camera) then
		RenderScriptCams(false,false,0,false,false)
		SetCamActive(Camera,false)
		DestroyCam(Camera,false)
		Camera = nil
	end

	exports["skinshop"]:Apply(LocalPlayer["state"]["Skinshop"])
    if not Command then
        vSERVER.Cancel()
    end
    Command = false
	Dataset = LocalPlayer["state"]["Skinshop"]
	LocalPlayer["state"]["Skinshop"] = {}
	SetNuiFocus(false,false)
    FreezeEntityPosition(PlayerPedId(),false)
    SendNUIMessage({ action = "setVisible", data = false })
    TriggerEvent("hud:Active",true)
	TriggerEvent("vrp:removeObjects")
    if Newbie then
        if LocalPlayer["state"]["DefaultSpawn"] then
            TriggerEvent("talknpc:NpcVovo2")
		else
            TriggerEvent("talknpc:NpcVovo")
		end
        Newbie = false
    end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- ROTATE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("Rotate",function(Data,Callback)
	local Ped = PlayerPedId()

	if Data == "Left" then
		SetEntityHeading(Ped,GetEntityHeading(Ped) - 5)
	elseif Data == "Right" then
		SetEntityHeading(Ped,GetEntityHeading(Ped) + 5)
	elseif Data == "Top" then
		local Coords = GetCamCoord(Camera)
		SetCamCoord(Camera,Coords["x"],Coords["y"],Coords["z"] + 0.05)
	elseif Data == "Bottom" then
		local Coords = GetCamCoord(Camera)
		SetCamCoord(Camera,Coords["x"],Coords["y"],Coords["z"] - 0.05)
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMASK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setMask")
AddEventHandler("skinshop:setMask",function()
	if not Animation and not LocalPlayer["state"]["Buttons"] then
		Animation = true
		vRP.playAnim(true,{"missfbi4","takeoff_mask"},true)

		Wait(1000)

		local Ped = PlayerPedId()
		if GetPedDrawableVariation(Ped,1) == Dataset["mask"]["item"] then
			SetPedComponentVariation(Ped,1,0,0,1)
		else
			SetPedComponentVariation(Ped,1,Dataset["mask"]["item"],Dataset["mask"]["texture"],1)
		end

		Animation = false
		TriggerEvent("vrp:removeObjects")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETHAT
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setHat")
AddEventHandler("skinshop:setHat",function()
	if not Animation and not LocalPlayer["state"]["Buttons"] then
		Animation = true
		vRP.playAnim(true,{"mp_masks@standard_car@ds@","put_on_mask"},true)

		Wait(1000)

		local Ped = PlayerPedId()
		if GetPedPropIndex(Ped,0) == Dataset["hat"]["item"] then
			ClearPedProp(Ped,0)
		else
			SetPedPropIndex(Ped,0,Dataset["hat"]["item"],Dataset["hat"]["texture"],1)
		end

		Animation = false
		TriggerEvent("vrp:removeObjects")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETGLASSES
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("skinshop:setGlasses")
AddEventHandler("skinshop:setGlasses",function()
	if not Animation and not LocalPlayer["state"]["Buttons"] then
		Animation = true
		vRP.playAnim(true,{"clothingspecs","take_off"},true)

		Wait(1000)

		local Ped = PlayerPedId()
		if GetPedPropIndex(Ped,1) == Dataset["glass"]["item"] then
			ClearPedProp(Ped,1)
		else
			SetPedPropIndex(Ped,1,Dataset["glass"]["item"],Dataset["glass"]["texture"],1)
		end

		Animation = false
		TriggerEvent("vrp:removeObjects")
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CHECKSHOES
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.checkShoes()
	local Number = 34
	local Ped = PlayerPedId()
	if GetEntityModel(Ped) == GetHashKey("mp_f_freemode_01") then
		Number = 35
	end

	if Dataset["shoes"]["item"] ~= Number then
		Dataset["shoes"]["item"] = Number
		Dataset["shoes"]["texture"] = 0
		SetPedComponentVariation(Ped,6,Dataset["shoes"]["item"],Dataset["shoes"]["texture"],1)

		return true
	end

	return false
end
-----------------------------------------------------------------------------------------------------------------------------------------
-- CUSTOMIZATION
-----------------------------------------------------------------------------------------------------------------------------------------
function Creative.Customization()
	return Dataset
end

RegisterNetEvent("skinshop:Open:NPC")
AddEventHandler("skinshop:Open:NPC",function(coords)
    TriggerEvent("talknpc:closeTalk")
    OpenSkinshop(false,coords)
end)

RegisterNetEvent('register:Open')
AddEventHandler('register:Open',function()
    SendNUIMessage({ action = "setVisible", data = false })
    SetNuiFocus(false,false)
    FreezeEntityPosition(PlayerPedId(),false)
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMASCARA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setmascara')
AddEventHandler('setmascara',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if modelo == nil then
			vRP.playAnim(true,{"missfbi4","takeoff_mask"},false)
			Wait(1100)
			vRP._stopAnim(true)
			SetPedComponentVariation(ped,1,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") or GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"misscommon@van_put_on_masks","put_on_mask_ps"},false)
			Wait(1500)
			vRP._stopAnim(true)
			SetPedComponentVariation(ped,1,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["mask"]["item"] = parseInt(modelo)
        DataSet["mask"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETBLUSA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setblusa')
AddEventHandler('setblusa',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101  then
		if not modelo then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,8,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,8,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,8,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["shirt"]["item"] = parseInt(modelo)
        DataSet["shirt"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCOLETE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setcolete')
AddEventHandler('setcolete',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101  then
		if not modelo then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,9,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,9,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,9,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["vest"]["item"] = parseInt(modelo)
        DataSet["vest"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETJAQUETA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setjaqueta')
AddEventHandler('setjaqueta',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101  then
		if not modelo then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,11,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,11,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,11,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["torso"]["item"] = parseInt(modelo)
        DataSet["torso"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETMAOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setmaos')
AddEventHandler('setmaos',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if not modelo then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,3,15,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,3,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"clothingshirt","try_shirt_positive_d"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,3,parseInt(modelo),parseInt(cor),2)
        end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["arms"]["item"] = parseInt(modelo)
        DataSet["arms"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCALCA
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setcalca')
AddEventHandler('setcalca',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101  then
		if not modelo then
			if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
				vRP.playAnim(true,{"clothingtrousers","try_trousers_neutral_c"},false)
				Wait(2500)
				ClearPedTasks(ped)
				SetPedComponentVariation(ped,4,18,0,2)
			elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
				vRP.playAnim(true,{"clothingtrousers","try_trousers_neutral_c"},false)
				Wait(2500)
				ClearPedTasks(ped)
				SetPedComponentVariation(ped,4,15,0,2)
			end
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"clothingtrousers","try_trousers_neutral_c"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,4,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"clothingtrousers","try_trousers_neutral_c"},false)
			Wait(2500)
			ClearPedTasks(ped)
			SetPedComponentVariation(ped,4,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["pants"]["item"] = parseInt(modelo)
        DataSet["pants"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETACESSORIOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setacessorios')
AddEventHandler('setacessorios',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if not modelo then
			SetPedComponentVariation(ped,7,0,0,2)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			SetPedComponentVariation(ped,7,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			SetPedComponentVariation(ped,7,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["accessory"]["item"] = parseInt(modelo)
        DataSet["accessory"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETSAPATOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setsapatos')
AddEventHandler('setsapatos',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 and not IsPedInAnyVehicle(ped) then
		if not modelo then
			if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
				vRP.playAnim(false,{"clothingshoes","try_shoes_positive_d"},false)
				Wait(2200)
				SetPedComponentVariation(ped,6,34,0,2)
				Wait(500)
				ClearPedTasks(ped)
			elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
				vRP.playAnim(false,{"clothingshoes","try_shoes_positive_d"},false)
				Wait(2200)
				SetPedComponentVariation(ped,6,35,0,2)
				Wait(500)
				ClearPedTasks(ped)
			end
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(false,{"clothingshoes","try_shoes_positive_d"},false)
			Wait(2200)
			SetPedComponentVariation(ped,6,parseInt(modelo),parseInt(cor),2)
			Wait(500)
			ClearPedTasks(ped)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(false,{"clothingshoes","try_shoes_positive_d"},false)
			Wait(2200)
			SetPedComponentVariation(ped,6,parseInt(modelo),parseInt(cor),2)
			Wait(500)
			ClearPedTasks(ped)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["shoes"]["item"] = parseInt(modelo)
        DataSet["shoes"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETCHAPEU
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setchapeu')
AddEventHandler('setchapeu',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if not modelo then
			vRP.playAnim(true,{"veh@common@fp_helmet@","take_off_helmet_stand"},false)
			Wait(700)
			ClearPedProp(ped,0)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") and parseInt(modelo) ~= 39 then
			vRP.playAnim(true,{"veh@common@fp_helmet@","put_on_helmet"},false)
			Wait(1700)
			SetPedPropIndex(ped,0,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") and parseInt(modelo) ~= 38 then
			vRP.playAnim(true,{"veh@common@fp_helmet@","put_on_helmet"},false)
			Wait(1700)
			SetPedPropIndex(ped,0,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["hat"]["item"] = parseInt(modelo)
        DataSet["hat"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end 
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SETOCULOS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent('setoculos')
AddEventHandler('setoculos',function(modelo,cor)
	local ped = PlayerPedId()
	if GetEntityHealth(ped) > 101 then
		if not modelo then
			vRP.playAnim(true,{"mini@ears_defenders","takeoff_earsdefenders_idle"},false)
			Wait(500)
			ClearPedTasks(ped)
			ClearPedProp(ped,1)
			return
		end
		if GetEntityModel(ped) == GetHashKey("mp_m_freemode_01") then
			vRP.playAnim(true,{"misscommon@van_put_on_masks","put_on_mask_ps"},false)
			Wait(800)
			ClearPedTasks(ped)
			SetPedPropIndex(ped,1,parseInt(modelo),parseInt(cor),2)
		elseif GetEntityModel(ped) == GetHashKey("mp_f_freemode_01") then
			vRP.playAnim(true,{"misscommon@van_put_on_masks","put_on_mask_ps"},false)
			Wait(800)
			ClearPedTasks(ped)
			SetPedPropIndex(ped,1,parseInt(modelo),parseInt(cor),2)
		end
        local DataSet = LocalPlayer["state"]["Skinshop"]
        DataSet["glass"]["item"] = parseInt(modelo)
        DataSet["glass"]["texture"] = parseInt(cor)
        LocalPlayer["state"]["Skinshop"] = DataSet
        vSERVER.Update(DataSet)
	end
end)


-- RegisterNetEvent("safezone:OpenVideo")
-- AddEventHandler("safezone:OpenVideo",function(url)
--     DoScreenFadeOut(0)
--     Wait(10000)
--     SendNUIMessage({
--         action = "setVisible",
--         data = "videoFull",
--     })
--     Wait(100)
--     SendNUIMessage({
--         action = "setVideoFull",
--         data = {
--             url = url,
--         }
--     })
--     DoScreenFadeIn(2500)
-- end)