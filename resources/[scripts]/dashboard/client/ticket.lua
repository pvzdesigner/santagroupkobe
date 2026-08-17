
local ticketOpen = {}
local avgTime = "00:00"

RegisterNUICallback("handleAttend", function(data, cb)
    local ticketType = data.ticket_type
    local ticketId = data.ticket_id
    local userId = data.user_id
    Debug.print("handleAttend",ticketType,ticketId,userId)
    TriggerServerEvent("dashboard:acceptTicket", ticketType, ticketId)
    cb({
        status = true,
    })
end)

RegisterNUICallback("handleCancel", function(data, cb)
    local ticketType = data.ticket_type
    local ticketId = data.ticket_id
    local userId = data.user_id
    Debug.print("handleCancel: ".. json.encode(data, {indent = true}))
    TriggerServerEvent("dashboard:cancelTicket", ticketType, ticketId )
    cb(true)
end)

RegisterNUICallback("handleCancelAttend", function(data, cb)
    local ticketType = data.ticket_type
    local ticketId = data.ticket_id
    local userId = data.user_id
    if not ticketId and data.rdm_id then
        ticketId = data.rdm_id
    end
    if not ticketType and data.type then
        ticketType = data.type
    end
    Debug.print("handleCancelAttend: ".. json.encode(data, {indent = true}).." - "..ticketId)
    TriggerServerEvent("dashboard:finishTicket", ticketType, ticketId )
    cb(true)
end)

RegisterNetEvent("dashboard:updateTickets", function()
    Debug.print("dashboard:updateTickets")
    SendNUIMessage({
        action = "updateTickets",
        data = true
    })
end)

RegisterNuiCallback('call:newCall', function(data, cb)
    local typeCall = data.type
    local description = data.description
    SendNUIMessage({
        action = "setVisibleCall",
        data = false
    })
    SetNuiFocus(false, false)
    print("newCall",typeCall,description)
    TriggerServerEvent("dashboard:createTicket", typeCall, description)
    cb(true)
end)


RegisterCommand('createNewCall', function()
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "setVisibleCall",
        data = true
    })
end)

RegisterCommand("pressed:y", function()
    if ticketOpen and ticketOpen.step == 2 then
        TriggerServerEvent("dashboard:cancelTicket", ticketOpen.ticketInfo.ticketType, ticketOpen.ticketInfo.ticketId)
        SendNUIMessage({
            action = "setVisibleCallCurrent",
            data = {
                visible = false,
            }
        })
        ticketOpen = {}
    end
end)

RegisterCommand("pressed:u", function()
    if ticketOpen and ticketOpen.step == 2 then
        SendNUIMessage({
            action = "updateStepCallCurrent",
            data = {
                step = 1,
                time = avgTime,
            }
        })
        ticketOpen.step = 1
    end
end)


RegisterNetEvent("dasboard:ticketOpen", function(time,ticketInfo)
    avgTime = time
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "setVisible",
        data = {
            visible = false,
        }
    })
    Wait(100)
    SendNUIMessage({
        action = "setVisibleCallCurrent",
        data = {
            step = 1,
            visible = true,
            time = avgTime,
        }
    })
    ticketOpen = {
        step = 1,
        ticketInfo = ticketInfo,
    }
end)

RegisterNetEvent("dasboard:ticketAccepted", function(helper_info)
    SendNUIMessage({
        action = "updateStepCallCurrent",
        data = {
            step = 3,
            helper_info = helper_info,
        }
    })
    ticketOpen.step = 3
end)

RegisterNetEvent("dasboard:ticketCanceled", function()
    SendNUIMessage({
        action = "setVisibleCallCurrent",
        data = {
            visible = false,
        }
    })
    ticketOpen = {}
end)

RegisterCommand("cancelDashboard",function()
    if ticketOpen and ticketOpen.step == 1 then
        SendNUIMessage({
            action = "updateStepCallCurrent",
            data = {
                step = 2,
            }
        })
        ticketOpen.step = 2
    end
end)
RegisterKeyMapping("cancelDashboard", "Cancel Dashboard", "keyboard", "F7")
RegisterKeyMapping("createNewCall", "Create New Call", "keyboard", "F5")
RegisterKeyMapping("pressed:u", "Pressed U", "keyboard", "U")
RegisterKeyMapping("pressed:y", "Pressed Y", "keyboard", "Y")


RegisterNuiCallback('call:newReview', function(data, cb)
    print("newReview",json.encode(ticketOpen, {indent = true}))
    local evaluation = data.evaluation
    local description = data.description
    SetNuiFocus(false, false)
    SendNUIMessage({
        action = "setVisibleCallReview",
        data = false
    })
    print("sendTicketRate",evaluation,description,ticketOpen.ticketInfo.ticketId)
    TriggerServerEvent("dashboard:sendTicketRate", evaluation, description, ticketOpen.ticketInfo.ticketId)
    ticketOpen = {}
    cb(true)
end)

RegisterNetEvent("dasboard:getTicketRate", function()
    SendNUIMessage({
        action = "setVisibleCallCurrent",
        data = {
            visible = false,
        }
    })
    Wait(100)
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = "setVisibleCallReview",
        data = true
    })
end)