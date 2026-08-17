shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"

lua54 'yes'

ui_page "web/index.html"

shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'

client_scripts {
    "@vrp/lib/Utils.lua",
    "@vrp/config/Rewards.lua",
    "@vrp/config/Item.lua",
	"@vrp/config/translations.lua",
	"client/client.lua",
	"client/battlepass.lua",
	"client/playsession_playtime_tracker.lua",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "@vrp/lib/Utils.lua",
    "@vrp/config/Rewards.lua",
    "@vrp/config/Item.lua",
	"@vrp/config/translations.lua",
	"server/server.lua",
	"server/prepare.lua",
	"server/battlepass.lua",
	"server/playsession_playtime_tracker.lua",
}

shared_scripts {
    "translations.lua",
	"shared/*"
}

files {
	"web/*",
	"web/**/*"
}
