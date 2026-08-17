shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"
lua54 "yes"

ui_page "web-side/index.html"
shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'

client_scripts {
    "translations.lua",
    '@sleepless_interact/init.lua',
	"@vrp/config/Native.lua",
	"@vrp/config/Global.lua",
	"@vrp/lib/Utils.lua",
	"client-side/*"
}

server_scripts {
    "translations.lua",
	"@vrp/lib/Utils.lua",
	"server-side/*"
}

files {
	"web-side/*",
	"web-side/**/*"
}

shared_scripts {
	"shared-side/*"
}