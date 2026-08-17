cityName = GetConvar("cityName", "")
function CheckValidConfig(Config)
    Config = Config:upper()
    local Valid = false
    if ORGS_CONFIG[Config] then
        Valid = true
    end
    return Valid
end
exports("CheckValidConfig", CheckValidConfig)

function GetAllOfConfig(SelectedConfig)
    local Configs = {}
    local CachedConfig = {}
    for Org, Data in pairs(ORGS_CONFIG) do
        if Data["ACTIVE"][cityName] then
            if Data[SelectedConfig] then
                table.insert(CachedConfig, { name = Org, info = Data[SelectedConfig] })
            end
        end
    end
    table.sort(CachedConfig, function(a, b) return a.name < b.name end)
    for i = 1, #CachedConfig do
        table.insert(Configs, CachedConfig[i].info)
    end
    return Configs
end
exports("GetAllOfConfig", GetAllOfConfig)