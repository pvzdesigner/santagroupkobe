RegisterNuiCallback('customer:attend', function(data, cb)
    local userId = data.passport
    local status = data.status -- 'cancel' | 'attend'
    TriggerServerEvent("dashboard:attendCostumer", userId, status)
    Debug.print("customer:attend: "..json.encode(data, { indent = true }))
    cb(true)
end)

RegisterNuiCallback('customer:cancel', function(data, cb)
    local userId = data.passport
    TriggerServerEvent("dashboard:cancelCostumer", userId)
    Debug.print("customer:cancel: "..json.encode(data, { indent = true }))
    cb(true)
end)

RegisterNuiCallback('customer:updateDesc', function(data, cb)
    local userId = data.passport
    local description = data.description
    TriggerServerEvent("dashboard:updateDesc", userId, description)
    Debug.print("customer:updateDesc: "..json.encode(data, { indent = true }))
    cb(true)
end)

RegisterNetEvent("dashboard:updateCostumers", function()
    Debug.print("dashboard:updateCostumers")
    SendNUIMessage({
        action = "updateCostumers",
        data = true
    })
end)
