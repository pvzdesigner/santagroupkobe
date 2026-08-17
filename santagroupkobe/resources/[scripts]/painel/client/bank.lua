--- Register a NUI callback for bank actions.
--- @param Data table - The data sent from the client, containing Amount and Type.
--- @param Callback function - The callback function to return the result to the client.
RegisterNUICallback("bankAction", function(Data, Callback)
    --- @class BankActionData
    --- @field Amount number - The amount of money for the bank action.
    --- @field Type string - The type of bank action ("deposit" or "withdraw").
    
    --- Convert Amount to number and remove any commas
    if type(Data.Amount) == "string" then
        Data.Amount = string.gsub(Data.Amount, ",", "")
    end

    local amount = tonumber(Data.Amount)
    if not amount then
        print("Error: Invalid amount received")
        Callback(false)
        return
    end
    
    --- Log the processed data for debugging purposes.
    print("bankAction >> ", json.encode({ Amount = amount, Type = Data.Type }))
    
    --- Call the appropriate Server function based on the Type and pass the result to the Callback function.
    Callback(vSERVER.Bank(amount, Data.Type))
end)