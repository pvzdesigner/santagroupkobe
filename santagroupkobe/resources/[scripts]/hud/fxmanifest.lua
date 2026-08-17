shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"
lua54 "yes"

ui_page "web/index.html"

shared_scripts {
    "translations.lua",
    "@ox_lib/init.lua",
    "@sx/linker.lua",
    "@vrp/lib/Utils.lua",
	"@vrp/config/Global.lua",
    "shared/**/*"
}

client_scripts {
	"@vrp/config/Native.lua",
    "@PolyZone/client.lua",
	"@PolyZone/BoxZone.lua",
	"@PolyZone/EntityZone.lua",
	"@PolyZone/CircleZone.lua",
	"@PolyZone/ComboZone.lua",
    "@vrp/config/Themes.lua",
	"@vrp/lib/Utils.lua",
	"client/core.lua",
    "client/hud/*",
	"client/notify/*",
	"client/request/*",
	"client/chat/*",
    "client/whatsapp/*",
}

server_scripts {
	"@vrp/config/Item.lua",
	"@vrp/config/translations.lua",
	"@vrp/lib/Utils.lua",
    "@vrp/config/Groups.lua",
	"server/core.lua",
	"server/hud/*",
	"server/notify/*",
	"server/request/*",
    "server/chat/*",
    "server/whatsapp/*",
}

files {
	"web/*",
	"web/**/*",
}

-- # Tests

-- shared_script '__tests__/request.test.lua'