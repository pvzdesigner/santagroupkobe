-----------------------------------------------------------------------------------------------------------------------------------------
-- VRP
-----------------------------------------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRPC = Tunnel.getInterface("vRP")
vRP = Proxy.getInterface("vRP")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
Creative = {}
Tunnel.bindInterface("admin",Creative)
vCLIENT = Tunnel.getInterface("admin")
vKEYBOARD = Tunnel.getInterface("keyboard")
cityName = GetConvar("cityName", "Base")
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
local ActionId = {}
local Count = 0
RegisterCommand("acaopm", function(source, Message)
	local Passport = vRP.Passport(source)
	if Passport then
		if vRP.HasGroup(Passport, "Policia", 3) then
            local Keyboard = vKEYBOARD.keyDouble(source,"Descrição:","Quantidade:")
            local Ped = GetPlayerPed(source)
            local Coords = GetEntityCoords(Ped)
            local Name = vRP.FullName(Passport)
            Coords = ivec3(Coords.x, Coords.y, Coords.z)
            if Keyboard and Keyboard[1] and Keyboard[2] then
                Count = Count + 1
                ActionId[tostring(Count)] = { Count = 1, Max = parseInt(Keyboard[2]), Coords = Coords, Bucket = GetPlayerRoutingBucket(source) }
                local Service = vRP.NumPermission("Policia")
				for Passports,Sources in pairs(Service) do
					async(function()
                        TriggerClientEvent("Notify:ActionPol",Sources,"Ação",Keyboard[1],Name,60000,Coords,"Ações","Policial", tostring(Count))
					end)
				end
            end
		end
	end
end)

AddEventHandler("notify:CreateAction",function(source,Coords,Number,ActionName)
    local source = source
    Count = Count + 1
    Coords = ivec3(Coords.x, Coords.y, Coords.z)
    ActionId[tostring(Count)] = { Count = 0, Max = parseInt(Number)+1, Coords = Coords, Bucket = GetPlayerRoutingBucket(source) }
    local Name = vRP.FullName(Passport)
    local Service = vRP.NumPermission("Policia")
    for Passports,Sources in pairs(Service) do
        async(function()
            TriggerClientEvent("Notify:ActionPol",Sources,"Ação","0"..Number.." "..ActionName,Name,60000,Coords,"Ações","Policial", tostring(Count))
        end)
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- CONNECTION
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("Notify:PolGoto")
AddEventHandler("Notify:PolGoto",function(Id)
    local source = source
    Id = tostring(Id)
    local Action = ActionId[Id]
    if Action then
        if Action.Count >= Action.Max then
            ActionId[Id] = nil
            TriggerClientEvent("Notify",source,"negado","Ação não encontrada/Cheia.",8000,"Acoes")
            -- TriggerClientEvent("Notify2",source,"#acaoNEncontrada")
            return
        end
        ActionId[Id].Count = Action.Count + 1
        TriggerClientEvent("admin:Teleport",source,Action.Coords)
        exports["vrp"]:ChangePlayerBucket(source,Action.Bucket)
        if ActionId[Id].Count >= ActionId[Id].Max then
            ActionId[Id] = nil
        end
    else
        TriggerClientEvent("Notify",source,"negado","Ação não encontrada/cheia.",8000,"Acoes")
        -- TriggerClientEvent("Notify2",source,"#acaoNEncontrada")
    end
end)


--[[ Shared ]]

local gLocalization = {
    ['#unknown.title'] = "Obrigado",
    ['#unknown.message'] = "Você acaba de receber {{amount}} 💎 de presente por ter atendido o chamado de {{character_name}}"
}

--[[ SERVER ]]

function vRP.addNotification(to, message, ...)
    vRP.send( to, 'notifications:add', message, ... )
end

-- make a function to parse what is inside a string and inside {{}} is a variable
function vRP.parse( str, args )
    local parsed = str
    for k, v in pairs( args ) do
        parsed = parsed:gsub( '{{' .. k .. '}}', v )
    end
    return parsed
end