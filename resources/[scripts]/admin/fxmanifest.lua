shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"
lua54 "yes"

shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'

client_scripts {
    "translations.lua",
    'shared.lua',
	"@vrp/config/Native.lua",
	"@vrp/config/Groups.lua",
	"@vrp/lib/Utils.lua",
	"client-side/*"
}

server_scripts {
    "translations.lua",
    'shared.lua',
	"@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
    "@vrp/config/Groups.lua",
	"@vrp/lib/Utils.lua",
	"server-side/core.lua",
	"server-side/wallstreet.lua",
	"server-side/launcher.lua",
	"server-side/tracking.lua",
    "server-side/requests.lua",
    "server-side/storeCommands.lua",
    "server-side/worldsystem.lua",
    "server-side/ratelimit.lua",
}

files {
	'web/build/index.html',
	'web/build/*',
	'web/build/**/*',
	'web/build/static/css/**/*',
	'web/build/static/js/**/*',
	'web/build/static/media/**/*'
}

ui_page 'web/build/index.html'