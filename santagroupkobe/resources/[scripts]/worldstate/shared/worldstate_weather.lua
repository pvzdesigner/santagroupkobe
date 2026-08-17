cityName = GetConvar("cityName", "")
local WEATHER_TYPES =
{
    'EXTRASUNNY',
    'CLEAR',
    'CLOUDS',
    'SMOG',
    'FOGGY',
    'OVERCAST',
    'RAIN',
    'THUNDER',
    'CLEARING',
    'NEUTRAL',
    'SNOW',
    'BLIZZARD',
    'SNOWLIGHT',
    'XMAS',
}

WEATHER_CITIES = 
{
    ['Santa'] = 'CLEAR',
    ['CidadeNobre'] = 'CLEAR',
    ['Caravelas'] = 'CLEAR',
    ['Universo'] = 'CLEAR',
    ['Maresia'] = 'CLEAR',
    ['Alexandria'] = 'CLEAR',
    ['Kingdom'] = 'OVERCAST',
}

---@type WorldWeatherIndex
local gWorldWeatherIndex = 1

---@param weather string
---@return WorldWeatherIndex
local function GetWeatherTypeIndex( weather )

    weather = string.upper( weather )

    for i, v in ipairs( WEATHER_TYPES ) do

        if v == weather then

            return i
        end
    end

    return -1
end

---@param buffer any[]
function SerializeWorldWeather( buffer )

    table.insert( buffer, gWorldWeatherIndex )
end

---@param buffer any[]
function DeserializeWorldWeather( buffer )

    local weatherIndex = table.remove( buffer, 1 )

    -- print( 'DeserializeWorldWeather :: weatherIndex=', weatherIndex )

    local weatherType = WEATHER_TYPES[ weatherIndex ]

    assert( weatherType )

    SetWorldWeatherInternal( weatherType )
end

---@return string
function GetWorldWeather()

    return WEATHER_TYPES[ gWorldWeatherIndex ]
end

---@param weatherType string
---@return boolean
function SetWorldWeatherInternal( weatherType )

    local index = GetWeatherTypeIndex( weatherType )

    assert( index ~= -1, ( 'Clima "%s" não é valido!' ):format( weatherType ) )

    gWorldWeatherIndex = index

    return true
end