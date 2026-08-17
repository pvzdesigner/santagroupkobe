-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp", "lib/Tunnel")
local Proxy = module("vrp", "lib/Proxy")
vRPS = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("dynamic")
SafeMode = GetConvar("SafeMode", "")
cityName = GetConvar("cityName", "")
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIABLES
-----------------------------------------------------------------------------------------------------------------------------------------
local menuOpen = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- ADDBUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
exports("AddButton", function(title, description, trigger, par, id, server)
	SendNUIMessage({ addbutton = true, title = title, description = description, trigger = trigger, par = par, id = id, server = server })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SUBMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("SubMenu", function(title, description, id)
	SendNUIMessage({ addmenu = true, title = title, description = description, menuid = id })
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- OPENMENU
-----------------------------------------------------------------------------------------------------------------------------------------
exports("openMenu", function()
	SendNUIMessage({ show = true })
	SetNuiFocus(true, true)
	menuOpen = true
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLICKED
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("clicked", function(Data, Callback)
	if Data["trigger"] and Data["trigger"] ~= "" then
		if Data["server"] == "true" then
			TriggerServerEvent(Data["trigger"], Data["param"])
		else
			TriggerEvent(Data["trigger"], Data["param"])
		end
	end

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("close", function(Data, Callback)
	SetNuiFocus(false, false)
	menuOpen = false

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- DYNAMIC:CLOSESYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNetEvent("dynamic:closeSystem")
AddEventHandler("dynamic:closeSystem", function()
	if menuOpen then
		SendNUIMessage({ close = true })
		SetNuiFocus(false, false)
		menuOpen = false
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- GLOBALFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("globalFunctions", function() 
    if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 and not IsPauseMenuActive() then
        local Ped = PlayerPedId()
        local Coords = GetEntityCoords(Ped)

        -- Fetch the current language from the Convar
        local lang = GetConvar("language", "pt-br") or "pt-br"

        -- Add buttons and submenu with translation support
        exports["dynamic"]:AddButton(_t("mansion_alarm"), _t("toggle_alarm"), "mansion_alarm:ToggleAlarm", false, "others", true)

        if SafeMode == "true" then
            if LocalPlayer["state"]["Route"] == 7 then
                exports["dynamic"]:AddButton(_t("safe_world"), _t("exit_safe_world"), "SafeWorld:Enter", false, "others", true)
            else
                exports["dynamic"]:AddButton(_t("safe_world"), _t("enter_safe_world"), "SafeWorld:Enter", false, "others", true)
            end
            if GlobalState["WarModeBucket"] then
                if not Entity(Ped)["state"]["WarMode"] and not LocalPlayer["state"]["InSafeZone"] then
                    if not LocalPlayer["state"]["Newbie"] then
                        exports["dynamic"]:AddButton(_t("war_mode"), _t("enter_war_mode"), "WarMode:Enter", false, "others", true)
                    end
                end
            else
                if not Entity(Ped)["state"]["WarMode"] and not LocalPlayer["state"]["InSafeZone"] then
                    if not LocalPlayer["state"]["Newbie"] then
                        exports["dynamic"]:AddButton(_t("war_mode"), _t("enter_war_mode"), "WarMode:Enter", false, "others", true)
                    end
                end
            end
        end

        if GetEntityHealth(Ped) > 100 then
            -- Add more buttons using translation
            if not LocalPlayer["state"]["Plaster"] then
                exports["dynamic"]:AddButton("<yellow>" .. _t("wardrobe") .. "</yellow>", "<yellow>" .. _t("save_use_outfits") .. "</yellow>.", "dynamic:Clothes", "", "clothes", false)
                exports["dynamic"]:AddButton(_t("hat"), _t("hat"), "player:Outfit", "Hat", "clothes", true)
                exports["dynamic"]:AddButton(_t("mask"), _t("mask"), "player:Outfit", "Mask", "clothes", true)
                exports["dynamic"]:AddButton(_t("glasses"), _t("glasses"), "player:Outfit", "Glasses", "clothes", true)
                exports["dynamic"]:AddButton(_t("wear_outfit"), _t("wear_outfit"), "player:Outfit", "aplicar", "clothes", true)
                exports["dynamic"]:AddButton(_t("save_outfit"), _t("save_outfit"), "player:Outfit", "salvar", "clothes", true)
            end

            exports["dynamic"]:AddButton(_t("mark_properties"), _t("mark_properties"), "propertys:Blips", "", "others", false)
            exports["dynamic"]:AddButton(_t("injury_check"), _t("injury_check"), "paramedic:Injuries", "", "others", false)
            if not GlobalState["WarMode"] and SafeMode == "true" then
                exports["dynamic"]:AddButton(_t("safemode"), _t("toggle_safemode"), "safezone:updateNewbie", "", "others", false)
            end
            exports["dynamic"]:AddButton(_t("reload_character"), _t("reload_character"), "player:Debug", "", "others", true)

            local Vehicle = vRP.ClosestVehicle(7)
            if IsEntityAVehicle(Vehicle) then
                if not IsPedInAnyVehicle(Ped) then
                    exports["dynamic"]:AddButton(_t("tow_vehicle"), _t("tow_vehicle"), "towdriver:invokeTow", "", "vehicle", false)

                    if vRP.ClosestPed(3) then
                        exports["dynamic"]:AddButton(_t("put_in_vehicle"), _t("put_in_vehicle"), "player:cvFunctions", "cv", "closestpeds", true)
                        exports["dynamic"]:AddButton(_t("remove_from_vehicle"), _t("remove_from_vehicle"), "player:cvFunctions", "rv", "closestpeds", true)

                        exports["dynamic"]:SubMenu(_t("player"), _t("player"), "closestpeds")
                    end
                else
                    exports["dynamic"]:AddButton(_t("sit_driver"), _t("sit_driver"), "player:seatPlayer", "0", "vehicle", false)
                    exports["dynamic"]:AddButton(_t("sit_passenger"), _t("sit_passenger"), "player:seatPlayer", "1", "vehicle", false)
                    exports["dynamic"]:AddButton(_t("sit_other"), _t("sit_other"), "player:seatPlayer", "2", "vehicle", false)
                    exports["dynamic"]:AddButton(_t("raise_windows"), _t("raise_windows"), "player:winsFunctions", "1", "vehicle", true)
                    exports["dynamic"]:AddButton(_t("lower_windows"), _t("lower_windows"), "player:winsFunctions", "0", "vehicle", true)
                    exports["dynamic"]:AddButton(_t("automatic_pilot"), _t("automatic_pilot"), "player:AutomaticPilot", "0", "vehicle", false)
                end

                exports["dynamic"]:AddButton(_t("driver_door"), _t("driver_door"), "player.prepare_set_vehicle_door_shut_state_request", "0", "doors", false)
                exports["dynamic"]:AddButton(_t("passenger_door"), _t("passenger_door"), "player.prepare_set_vehicle_door_shut_state_request", "1", "doors", false)
                exports["dynamic"]:AddButton(_t("rear_left_door"), _t("rear_left_door"), "player.prepare_set_vehicle_door_shut_state_request", "2", "doors", false)
                exports["dynamic"]:AddButton(_t("rear_right_door"), _t("rear_right_door"), "player.prepare_set_vehicle_door_shut_state_request", "3", "doors", false)
                exports["dynamic"]:AddButton(_t("trunk"), _t("trunk"), "player.prepare_set_vehicle_door_shut_state_request", "5", "doors", false)
                exports["dynamic"]:AddButton(_t("hood"), _t("hood"), "player.prepare_set_vehicle_door_shut_state_request", "4", "doors", false)

                exports["dynamic"]:SubMenu(_t("vehicle"), _t("vehicle"), "vehicle")
                exports["dynamic"]:SubMenu(_t("doors"), _t("doors"), "doors")
            end

            exports["dynamic"]:SubMenu(_t("player"), _t("player"), "player")
            exports["dynamic"]:SubMenu(_t("clothes_menu"), _t("clothes_menu"), "clothes")
            exports["dynamic"]:SubMenu(_t("others"), _t("others"), "others")

            exports["dynamic"]:openMenu()
        end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- EMERGENCYFUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("emergencyFunctions", function()
    if LocalPlayer["state"]["PVP"] then
        TriggerEvent("matchmaking:Leave")
        return
    end
	if (LocalPlayer["state"]["Policia"] or LocalPlayer["state"]["Paramedic"] or LocalPlayer["state"]["Bombeiros"] or LocalPlayer["state"]["Mechanic"] or LocalPlayer["state"]["Juridico"]) and not IsPauseMenuActive() then
		if not LocalPlayer["state"]["Commands"] and not LocalPlayer["state"]["Handcuff"] and not menuOpen and LocalPlayer["state"]["Route"] < 900000 then

			local Ped = PlayerPedId()
			if GetEntityHealth(Ped) > 100 then
                if not IsPedInAnyVehicle(Ped) then
                    exports["dynamic"]:AddButton(_t("carry_person"), _t("carry_person"), "player:carryPlayer", "", "player", true)
                    exports["dynamic"]:AddButton(_t("put_in_vehicle"), _t("put_in_vehicle"), "player:cvFunctions", "cv", "player", true)
                    exports["dynamic"]:AddButton(_t("remove_from_vehicle"), _t("remove_from_vehicle"), "player:cvFunctions", "rv", "player", true)
                    exports["dynamic"]:SubMenu(_t("player"), _t("player"), "player")
                end

				if LocalPlayer["state"]["Policia"] then
                    if cityName == "Santa" then
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 4", "Fardamento tatico 4.", "player:Preset", "tatico 4", "preTatico", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("PM 4", "Fardamento pm 4.", "player:Preset", "pm 4", "prePM", true)
                        exports["dynamic"]:AddButton("PM 5", "Fardamento pm 5.", "player:Preset", "pm 5", "prePM", true)
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 4", "Fardamento civil 4.", "player:Preset", "civil 4", "preCivil", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)

                        exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos pm.", "prePM")
                        exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    elseif cityName == "Maresia" then
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("BAEP 1", "Fardamento BAEP 1.", "player:Preset", "baep 1", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 2", "Fardamento BAEP 2.", "player:Preset", "baep 2", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 3", "Fardamento BAEP 3.", "player:Preset", "baep 3", "preBaep", true)
                        exports["dynamic"]:AddButton("ROTA 1", "Fardamento ROTA 1.", "player:Preset", "rota 1", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 2", "Fardamento ROTA 2.", "player:Preset", "rota 2", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 3", "Fardamento ROTA 3.", "player:Preset", "rota 3", "preRota", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)
                        exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos pm.", "prePM")
                        exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        -- exports["dynamic"]:SubMenu("Fardamento BAEP", "Todos os fardamentos BAEP.", "preBaep")
                        -- exports["dynamic"]:SubMenu("Fardamento ROTA", "Todos os fardamentos ROTA.", "preRota")
                        exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    elseif cityName == "CidadeNobre" then
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("BAEP 1", "Fardamento BAEP 1.", "player:Preset", "baep 1", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 2", "Fardamento BAEP 2.", "player:Preset", "baep 2", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 3", "Fardamento BAEP 3.", "player:Preset", "baep 3", "preBaep", true)
                        exports["dynamic"]:AddButton("ROTA 1", "Fardamento ROTA 1.", "player:Preset", "rota 1", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 2", "Fardamento ROTA 2.", "player:Preset", "rota 2", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 3", "Fardamento ROTA 3.", "player:Preset", "rota 3", "preRota", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)
                        exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos pm.", "prePM")
                        exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        -- exports["dynamic"]:SubMenu("Fardamento BAEP", "Todos os fardamentos BAEP.", "preBaep")
                        -- exports["dynamic"]:SubMenu("Fardamento ROTA", "Todos os fardamentos ROTA.", "preRota")
                        exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    elseif cityName == "Caravelas" then
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("BAEP 1", "Fardamento BAEP 1.", "player:Preset", "baep 1", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 2", "Fardamento BAEP 2.", "player:Preset", "baep 2", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 3", "Fardamento BAEP 3.", "player:Preset", "baep 3", "preBaep", true)
                        exports["dynamic"]:AddButton("ROTA 1", "Fardamento ROTA 1.", "player:Preset", "rota 1", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 2", "Fardamento ROTA 2.", "player:Preset", "rota 2", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 3", "Fardamento ROTA 3.", "player:Preset", "rota 3", "preRota", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)
                        -- exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos policia.", "prePM")
                        -- exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        -- exports["dynamic"]:SubMenu("Fardamento BAEP", "Todos os fardamentos BAEP.", "preBaep")
                        -- exports["dynamic"]:SubMenu("Fardamento ROTA", "Todos os fardamentos ROTA.", "preRota")
                        -- exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    elseif cityName == "Kingdom" then
                        exports["dynamic"]:AddButton("Police 1", "Civil outfit 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Police 2", "Civil outfit 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Police 3", "Civil outfit 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("Police 1", "PM outfit 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("Police 2", "PM outfit 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("Police 3", "PM outfit 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Police 4", "PM outfit 4.", "player:Preset", "pm 4", "prePM", true)
                        -- exports["dynamic"]:AddButton("Tactical 1", "Tactical outfit 1.", "player:Preset", "tatico 1", "preTatico", true)
                        -- exports["dynamic"]:AddButton("Tactical 2", "Tactical outfit 2.", "player:Preset", "tatico 2", "preTatico", true)
                        -- exports["dynamic"]:AddButton("Tactical 3", "Tactical outfit 3.", "player:Preset", "tatico 3", "preTatico", true)
                        -- exports["dynamic"]:AddButton("BAEP 1", "BAEP outfit 1.", "player:Preset", "baep 1", "preBaep", true)
                        -- exports["dynamic"]:AddButton("BAEP 2", "BAEP outfit 2.", "player:Preset", "baep 2", "preBaep", true)
                        -- exports["dynamic"]:AddButton("BAEP 3", "BAEP outfit 3.", "player:Preset", "baep 3", "preBaep", true)
                        -- exports["dynamic"]:AddButton("ROTA 1", "ROTA outfit 1.", "player:Preset", "rota 1", "preRota", true)
                        -- exports["dynamic"]:AddButton("ROTA 2", "ROTA outfit 2.", "player:Preset", "rota 2", "preRota", true)
                        -- exports["dynamic"]:AddButton("ROTA 3", "ROTA outfit 3.", "player:Preset", "rota 3", "preRota", true)
                        -- exports["dynamic"]:AddButton("Army 1", "Army outfit 1.", "player:Preset", "exercito 1", "preExercito", true)
                        -- exports["dynamic"]:AddButton("Army 2", "Army outfit 2.", "player:Preset", "exercito 2", "preExercito", true)
                        -- exports["dynamic"]:AddButton("Army 3", "Army outfit 3.", "player:Preset", "exercito 3", "preExercito", true)
                        exports["dynamic"]:SubMenu("Police 1", "All civil outfits.", "preCivil")
                        exports["dynamic"]:SubMenu("Police 2", "All PM outfits.", "prePM")
                        exports["dynamic"]:SubMenu("Tactical Outfit", "All tactical outfits.", "preTatico")
                        -- exports["dynamic"]:SubMenu("BAEP Outfit", "All BAEP outfits.", "preBaep")
                        -- exports["dynamic"]:SubMenu("ROTA Outfit", "All ROTA outfits.", "preRota")
                        -- exports["dynamic"]:SubMenu("Army Outfit", "All army outfits.", "preExercito")
                    elseif cityName == "Alexandria" then
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("BAEP 1", "Fardamento BAEP 1.", "player:Preset", "baep 1", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 2", "Fardamento BAEP 2.", "player:Preset", "baep 2", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 3", "Fardamento BAEP 3.", "player:Preset", "baep 3", "preBaep", true)
                        exports["dynamic"]:AddButton("ROTA 1", "Fardamento ROTA 1.", "player:Preset", "rota 1", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 2", "Fardamento ROTA 2.", "player:Preset", "rota 2", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 3", "Fardamento ROTA 3.", "player:Preset", "rota 3", "preRota", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)
                        exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos pm.", "prePM")
                        exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        -- exports["dynamic"]:SubMenu("Fardamento BAEP", "Todos os fardamentos BAEP.", "preBaep")
                        -- exports["dynamic"]:SubMenu("Fardamento ROTA", "Todos os fardamentos ROTA.", "preRota")
                        exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    elseif cityName == "Universo" then
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("PRF 1", "Fardamento PRF.", "player:Preset", "prf 1", "prePRF", true)
                        exports["dynamic"]:AddButton("PRF 2", "Fardamento PRF.", "player:Preset", "prf 2", "prePRF", true)
                        exports["dynamic"]:AddButton("PRF 3", "Fardamento PRF.", "player:Preset", "prf 3", "prePRF", true)
                        exports["dynamic"]:AddButton("BAEP 1", "Fardamento BAEP 1.", "player:Preset", "baep 1", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 2", "Fardamento BAEP 2.", "player:Preset", "baep 2", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 3", "Fardamento BAEP 3.", "player:Preset", "baep 3", "preBaep", true)
                        exports["dynamic"]:AddButton("ROTA 1", "Fardamento ROTA 1.", "player:Preset", "rota 1", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 2", "Fardamento ROTA 2.", "player:Preset", "rota 2", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 3", "Fardamento ROTA 3.", "player:Preset", "rota 3", "preRota", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)
                        -- exports["dynamic"]:AddButton("Juridico 1", "Fardamento Juridico.", "player:Preset", "juridico 1", "preJuridico", true)
                        -- exports["dynamic"]:AddButton("Juridico 2", "Fardamento Juridico.", "player:Preset", "juridico 2", "preJuridico", true)
                        -- exports["dynamic"]:AddButton("Juridico 3", "Fardamento Juridico.", "player:Preset", "juridico 3", "preJuridico", true)
                        exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos pm.", "prePM")
                        exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        exports["dynamic"]:SubMenu("Fardamento PRF", "Todos os fardamentos prf.", "prePRF")
                        -- exports["dynamic"]:SubMenu("Fardamento Juridico", "Todos os fardamentos juridico.", "preJuridico")
                        -- exports["dynamic"]:SubMenu("Fardamento BAEP", "Todos os fardamentos BAEP.", "preBaep")
                        -- exports["dynamic"]:SubMenu("Fardamento ROTA", "Todos os fardamentos ROTA.", "preRota")
                        exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    else
                        exports["dynamic"]:AddButton("Civil 1", "Fardamento civil 1.", "player:Preset", "civil 1", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 2", "Fardamento civil 2.", "player:Preset", "civil 2", "preCivil", true)
                        exports["dynamic"]:AddButton("Civil 3", "Fardamento civil 3.", "player:Preset", "civil 3", "preCivil", true)
                        exports["dynamic"]:AddButton("PM 1", "Fardamento pm 1.", "player:Preset", "pm 1", "prePM", true)
                        exports["dynamic"]:AddButton("PM 2", "Fardamento pm 2.", "player:Preset", "pm 2", "prePM", true)
                        exports["dynamic"]:AddButton("PM 3", "Fardamento pm 3.", "player:Preset", "pm 3", "prePM", true)
                        exports["dynamic"]:AddButton("Tático 1", "Fardamento tatico 1.", "player:Preset", "tatico 1", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 2", "Fardamento tatico 2.", "player:Preset", "tatico 2", "preTatico", true)
                        exports["dynamic"]:AddButton("Tático 3", "Fardamento tatico 3.", "player:Preset", "tatico 3", "preTatico", true)
                        exports["dynamic"]:AddButton("BAEP 1", "Fardamento BAEP 1.", "player:Preset", "baep 1", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 2", "Fardamento BAEP 2.", "player:Preset", "baep 2", "preBaep", true)
                        exports["dynamic"]:AddButton("BAEP 3", "Fardamento BAEP 3.", "player:Preset", "baep 3", "preBaep", true)
                        exports["dynamic"]:AddButton("ROTA 1", "Fardamento ROTA 1.", "player:Preset", "rota 1", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 2", "Fardamento ROTA 2.", "player:Preset", "rota 2", "preRota", true)
                        exports["dynamic"]:AddButton("ROTA 3", "Fardamento ROTA 3.", "player:Preset", "rota 3", "preRota", true)
                        exports["dynamic"]:AddButton("Exército 1", "Fardamento exercito 1.", "player:Preset", "exercito 1", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 2", "Fardamento exercito 2.", "player:Preset", "exercito 2", "preExercito", true)
                        exports["dynamic"]:AddButton("Exército 3", "Fardamento exercito 3.", "player:Preset", "exercito 3", "preExercito", true)
                        exports["dynamic"]:SubMenu("Fardamento Civil", "Todos os fardamentos civil.", "preCivil")
                        exports["dynamic"]:SubMenu("Fardamento PM", "Todos os fardamentos pm.", "prePM")
                        exports["dynamic"]:SubMenu("Fardamento Tático", "Todos os fardamentos tatico.", "preTatico")
                        exports["dynamic"]:SubMenu("Fardamento BAEP", "Todos os fardamentos BAEP.", "preBaep")
                        exports["dynamic"]:SubMenu("Fardamento ROTA", "Todos os fardamentos ROTA.", "preRota")
                        exports["dynamic"]:SubMenu("Fardamento Exército", "Todos os fardamentos exército.", "preExercito")
                    end
					exports["dynamic"]:AddButton(_t("remove_hat"), _t("remove_hat_desc"), "skinshop:Remove", "Hat", "player", true)
					exports["dynamic"]:AddButton(_t("remove_mask"), _t("remove_mask_desc"), "skinshop:Remove", "Mask", "player", true)
					exports["dynamic"]:AddButton(_t("remove_glasses"), _t("remove_glasses_desc"), "skinshop:Remove", "Glasses", "player", true)
					exports["dynamic"]:AddButton(_t("computer"), _t("computer_desc"), "police:Mdt", "", false, false)
                elseif LocalPlayer["state"]["Bombeiros"] then
					exports["dynamic"]:AddButton(_t("firefighter_1"), _t("firefighter_1_desc"), "player:Preset", "bombeiros 1", "prebombeiros", true)
					exports["dynamic"]:AddButton(_t("firefighter_2"), _t("firefighter_2_desc"), "player:Preset", "bombeiros 2", "prebombeiros", true)
					exports["dynamic"]:AddButton(_t("firefighter_3"), _t("firefighter_3_desc"), "player:Preset", "bombeiros 3", "prebombeiros", true)

					exports["dynamic"]:SubMenu(_t("firefighter_uniforms"), _t("firefighter_uniforms_desc"), "prebombeiros")
                    
				elseif LocalPlayer["state"]["Paramedic"] then
					exports["dynamic"]:AddButton(_t("intern_uniform"), _t("intern_uniform_desc"), "player:Preset", "estagiários", "preMedic", true)
					exports["dynamic"]:AddButton(_t("paramedic_1"), _t("paramedic_1_desc"), "player:Preset", "paramédico 1", "preMedic", true)
					exports["dynamic"]:AddButton(_t("paramedic_2"), _t("paramedic_2_desc"), "player:Preset", "paramédico 2", "preMedic", true)
					exports["dynamic"]:AddButton(_t("nurse"), _t("nurse_desc"), "player:Preset", "enfermeiros", "preMedic", true)
					exports["dynamic"]:AddButton(_t("doctor"), _t("doctor_desc"), "player:Preset", "médico", "preMedic", true)

					exports["dynamic"]:SubMenu(_t("medic_uniforms"), _t("medic_uniforms_desc"), "preMedic")

                
                    
				elseif LocalPlayer["state"]["Mechanic"] then
					exports["dynamic"]:AddButton(_t("mechanic_member"), _t("mechanic_member_desc"), "player:Preset", "membro", "preMechanic", true)
					exports["dynamic"]:AddButton(_t("mechanic_advisor"), _t("mechanic_advisor_desc"), "player:Preset", "conselheiro", "preMechanic", true)
					exports["dynamic"]:AddButton(_t("mechanic_manager"), _t("mechanic_manager_desc"), "player:Preset", "gerente", "preMechanic", true)
					exports["dynamic"]:AddButton(_t("mechanic_subchief"), _t("mechanic_subchief_desc"), "player:Preset", "sub-chefe", "preMechanic", true)
					exports["dynamic"]:AddButton(_t("mechanic_chief"), _t("mechanic_chief_desc"), "player:Preset", "chefe", "preMechanic", true)

					exports["dynamic"]:SubMenu(_t("mechanic_uniforms"), _t("mechanic_uniforms_desc"), "preMechanic")

                    -- Vehicles
					exports["dynamic"]:AddButton(_t("tow"), _t("tow_desc"), "tow", nil, "+")
					exports["dynamic"]:SubMenu(_t("vehicles"), _t("vehicles_desc"), "vehMechanic")
				end

				exports["dynamic"]:openMenu()
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("globalFunctions", _t("globalFunctions"), "keyboard", "F9")
RegisterKeyMapping("emergencyFunctions", _t("emergencyFunctions"), "keyboard", "F10")

RegisterNUICallback("getCityName",function(Data,Callback)
    Callback(string.lower(cityName))
end)

RegisterNetEvent("dynamic:Clothes")
AddEventHandler("dynamic:Clothes",function()
    TriggerEvent("dynamic:closeSystem")
    Wait(100)
    exports["dynamic"]:SubMenu(_t("save"), _t("save_clothes"), "save-clothes")
    exports["dynamic"]:AddButton(_t("clothes") .. " 1", _t("save_clothes"), "clothes:Save", "1", "save-clothes", true)
    exports["dynamic"]:AddButton(_t("clothes") .. " 2", _t("save_clothes"), "clothes:Save", "2", "save-clothes", true)
    exports["dynamic"]:AddButton(_t("clothes") .. " 3", _t("save_clothes"), "clothes:Save", "3", "save-clothes", true)
    exports["dynamic"]:SubMenu(_t("select"), _t("select_clothes"), "use-clothes")
    exports["dynamic"]:AddButton(_t("clothes") .. " 1", _t("select_clothes"), "clothes:Use", "1", "use-clothes", true)
    exports["dynamic"]:AddButton(_t("clothes") .. " 2", _t("select_clothes"), "clothes:Use", "2", "use-clothes", true)
    exports["dynamic"]:AddButton(_t("clothes") .. " 3", _t("select_clothes"), "clothes:Use", "3", "use-clothes", true)
    exports["dynamic"]:openMenu()
end)