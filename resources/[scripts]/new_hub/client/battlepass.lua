local ShouldCheckBattlepass = false
-----------------------------------------------------------------------------------------------------------------------------------------
-- CALLBACK
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterNUICallback("redeemBattlePass",function(Data,Callback)
    local Success = vSERVER.RedeemBattlePass(Data.id,Data.type)
    Callback(Success)
end)

RegisterNUICallback("buyBattlePass",function(Data,Callback)
    local url = BattlePassLink[cityName]
    if url and url ~= "" then
        TriggerEvent("player:OpenURL",url)
    else
        TriggerEvent("player:OpenURL",StoreLink[cityName])
    end
    Callback(true)
end)

RegisterNUICallback("getBattlePassConfig",function(Data,Callback)
    local Info = {
        free = BattlePassRewards["Free"],
        premium = BattlePassRewards["Premium"],
        timer = BattlePassRewards["Timer"]
    }
    Callback(Info)
end)

RegisterNUICallback("getBattlePassInfo",function(Data,Callback)
    local Info = GlobalState["battlepass_info"] or {}
    Callback(Info)
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNCTIONS
-----------------------------------------------------------------------------------------------------------------------------------------
---@param startTime int
---@param currentTime int
---@return boolean
function CheckTimePlayed(startTime,currentTime)
    local TimePlayed = currentTime - startTime
    TimePlayed = math.floor(TimePlayed / 1000)
    if TimePlayed >= 1800 then
        return true
    else
        return false
    end
end

RegisterNetEvent("battlepass:checkTimePlayed",function()
    local StartTime = GetGameTimer()
    ShouldCheckBattlepass = true
    CreateThread(function()
        while ShouldCheckBattlepass do
            local CurrentTime = GetGameTimer()
            if CheckTimePlayed(StartTime,CurrentTime) then
                TriggerServerEvent("battlepass:CheckTimePlayed")
            end
            Wait(1000)
        end
    end)
end)

RegisterNetEvent("battlepass:removeCheckTimePlayed",function()
    ShouldCheckBattlepass = false
end)