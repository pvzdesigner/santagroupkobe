shared_script '@likizao_ac/client/library.lua'
shared_script 'shared.lua'

fx_version "bodacious"
game "gta5"
lua54 "yes"

ui_page "web/index.html"

shared_scripts {
    'translations.lua',
	'shared/vehicle_packing.lua',
}

client_scripts {
    '@sleepless_interact/init.lua',
	"@vrp/config/Themes.lua",
	"@vrp/config/Native.lua",
    "@vrp/config/Vehicle.lua",
	"@vrp/lib/Utils.lua",
	"client/core.lua",
	"client/parsevehicles.lua",
}

server_scripts {
	"@vrp/config/Vehicle.lua",
	"@vrp/lib/Utils.lua",
	'server/vehicle-chest-computation.lua',
	"server/core.lua",
	"server/impound.lua",
	"server/propertys.lua",
    "server/parsevehicles.lua",
}

files {
	"web/*",
	"web/**/*"
}