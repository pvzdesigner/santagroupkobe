-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
vSERVER = Tunnel.getInterface("tencode")
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADBUTTON
-----------------------------------------------------------------------------------------------------------------------------------------
local policeRadar = false
local policeFreeze = false
local Cooldown = GetGameTimer()
-----------------------------------------------------------------------------------------------------------------------------------------
-- CLOSESYSTEM
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("closeSystem",function(Data,Callback)
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
	SendNUIMessage({ tencode = false })

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- SENDCODE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("sendCode",function(Data,Callback)
	SetNuiFocus(false,false)
	SetCursorLocation(0.5,0.5)
    if GetGameTimer() > Cooldown then
        Cooldown = GetGameTimer() + 15000

		local codeIndex = nil

		for idx, code in ipairs( CODES ) do

			if code.code == Data["code"] then
				codeIndex = idx
				break
			end
		end

		assert( codeIndex, ('Código inválido: "%s"'):format( Data["code"] ) )

		TriggerServerEvent( 'tencode:request_add_code', codeIndex )
    end
	SendNUIMessage({ tencode = false })

	Callback("Ok")
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- THREADRADAR
-----------------------------------------------------------------------------------------------------------------------------------------
CreateThread(function()
	while true do
		local TimeDistance = 999
		local Ped = PlayerPedId()
		if IsPedInAnyPoliceVehicle(Ped) and LocalPlayer["state"]["Policia"] then
			if policeRadar then
				if not policeFreeze then
					TimeDistance = 100

					local vehicle = GetVehiclePedIsUsing(Ped)
					local vehicleDimension = GetOffsetFromEntityInWorldCoords(vehicle,0.0,1.0,1.0)

					local vehicleFront = GetOffsetFromEntityInWorldCoords(vehicle,0.0,105.0,0.0)
					local vehicleFrontShape = StartShapeTestCapsule(vehicleDimension,vehicleFront,3.0,10,vehicle,7)
					local _,_,_,_,vehFront = GetShapeTestResult(vehicleFrontShape)

					if IsEntityAVehicle(vehFront) then
						local vehHash = vRP.VehicleModel(vehFront)
						local vehSpeed = GetEntitySpeed(vehFront) * 3.6
						local Plate = GetVehicleNumberPlateText(vehFront)

						SendNUIMessage({ radar = "top", plate = Plate, Model = VehicleName(vehHash), speed = vehSpeed })
					end

					local vehicleBack = GetOffsetFromEntityInWorldCoords(vehicle,0.0,-105.0,0.0)
					local vehicleBackShape = StartShapeTestCapsule(vehicleDimension,vehicleBack,3.0,10,vehicle,7)
					local _,_,_,_,vehBack = GetShapeTestResult(vehicleBackShape)

					if IsEntityAVehicle(vehBack) then
						local vehHash = vRP.VehicleModel(vehBack)
						local vehSpeed = GetEntitySpeed(vehBack) * 3.6
						local Plate = GetVehicleNumberPlateText(vehBack)

						SendNUIMessage({ radar = "bot", plate = Plate, Model = VehicleName(vehHash), speed = vehSpeed })
					end
				end
			end
		end

		if not IsPedInAnyVehicle(Ped) and policeRadar then
			policeRadar = false
			SendNUIMessage({ radar = false })
		end

		Wait(TimeDistance)
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOGGLERADAR
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("toggleRadar",function()
	if not IsPauseMenuActive() then
		local Ped = PlayerPedId()
		if IsPedInAnyPoliceVehicle(Ped) and LocalPlayer["state"]["Policia"] then
			if policeRadar then
				policeRadar = false
				SendNUIMessage({ radar = false })
			else
				policeRadar = true
				SendNUIMessage({ radar = true })
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TOGGLEFREEZE
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterCommand("toggleFreeze",function()
	local Ped = PlayerPedId()
	if IsPedInAnyPoliceVehicle(Ped) and LocalPlayer["state"]["Policia"] and not IsPauseMenuActive() then
		policeFreeze = not policeFreeze
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- TENCODE
-----------------------------------------------------------------------------------------------------------------------------------------
local CooldownTenCode = 0
RegisterNetEvent("notify:Recruit")
AddEventHandler("notify:Recruit",function(Title,Message,Name,Timer,Coords)
    CooldownTenCode = GetGameTimer() + Timer

	-- TODO: Implementar modal para aceitar recrutamento, provavelmente da mesma forma que é feito
	-- os eventos nos comandos /festa e /festa2!
end)

local disableTencode = true
RegisterCommand("enterTencodes",function()
    if disableTencode then
        return
    end
    if GetGameTimer() > CooldownTenCode then
        if LocalPlayer["state"]["Policia"] and LocalPlayer["state"]["Route"] < 900000 and not IsPauseMenuActive() then
            SetNuiFocus(true,true)
            SetCursorLocation(0.5,0.1)
            SendNUIMessage({ tencode = true })
        end
    end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- KEYMAPPING
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterKeyMapping("enterTencodes", _t("enterTencodes"), "keyboard", "F7")
RegisterKeyMapping("toggleRadar", _t("toggleRadar"), "keyboard", "N")
RegisterKeyMapping("toggleFreeze", _t("toggleFreeze"), "keyboard", "M")

RegisterNUICallback("getCityName",function(Data,Callback)
    cityName = GetConvar("cityName", "")
    Callback(string.lower(cityName))
end)

RegisterNetEvent( 'tencode:add_code', function( codeIndex, createdByFullName, posX, posY )

	-- Precisa ser em float :P
	posX = posX + 0.0
	posY = posY + 0.0

	local code = CODES[ codeIndex ]

	assert( code )

	vRP.PlaySound( "Event_Start_Text", "GTAO_FM_Events_Soundset" )

	TriggerEvent( "NotifyPush", { code = code.code, title = Text, x = posX, y = posY, z = 0.0, name = createdByFullName, blipColor = code.color, blipCode = code.blip })

	TriggerEvent( "chat:ClientMessage", code.code, ("O oficial %s está solicitando %s. Abra o mapa e procure pela estrela."):format( createdByFullName, code.code ), "Codigo", false, { background = "rgba(255,165,0,.60)" } )

	TriggerEvent( "sounds:Private", "calladmin", 0.1 )
end)