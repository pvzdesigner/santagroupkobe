function UpdateLocalWorldWeather()

    local weatherType = GetWorldWeather()

    SetWeatherTypeNow( weatherType )
    SetWeatherTypePersist( weatherType )
    SetWeatherTypeNowPersist( weatherType )
end
