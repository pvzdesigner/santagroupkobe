shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"

lua54 'yes'

ui_page "web/index.html"

shared_script 'translations.lua'
shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'

client_scripts {
    "@vrp/lib/Utils.lua",
    "@vrp/config/Rewards.lua",
    "@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
	"client/client.lua",
    "client/ticket.lua",
    "client/costumers.lua",
    'translations.lua',
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "@vrp/lib/Utils.lua",
    "@vrp/config/Rewards.lua",
    "@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
	"server/server.lua",
    "server/prepare.lua",
    "server/tickets.lua",
    "server/code.lua",
    "server/costumers.lua",
    'translations.lua',
}

shared_scripts {
    "translations.lua",
	"shared/*"
}

files {
	"web/*",
	"web/**/*"
}
