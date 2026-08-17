function TriggerCallback(name, cb, ...)
    Config.ServerCallbacks[name] = cb
    TriggerServerEvent('pets:server:triggerCallback', name, ...)
end

RegisterNetEvent('pets:client:triggerCallback', function(name, ...)
    if Config.ServerCallbacks[name] then
        Config.ServerCallbacks[name](...)
        Config.ServerCallbacks[name] = nil
    end
end)

function Notify(text)
    TriggerEvent('Notify', "importante", text)
end

RegisterNetEvent('pets:client:setPetFlags', function(netid)
    while not NetworkGetEntityFromNetworkId(netid) do
        Wait(1)
    end

    local ent = NetworkGetEntityFromNetworkId(netid)

    SetBlockingOfNonTemporaryEvents(ent, true)
    SetPedDefaultComponentVariation(ent)
end)