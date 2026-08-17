RegisterCommand( _t("day"), function( source, args )
    Wait(100)
    print("Day command")
    SetWorldClockOverride( 12 )
end, false)

RegisterCommand( _t("night"), function( source, args )

    ClearWorldClockOverride()
end, false)

RegisterCommand( 'servertime', function( source, args )

    print( ('Server time is: %0.2f'):format( GetServerTime() ) )
end, false)