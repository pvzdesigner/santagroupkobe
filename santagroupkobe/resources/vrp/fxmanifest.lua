shared_script '@likizao_ac/client/library.lua'
shared_script 'config/translations.lua'

fx_version "bodacious"
game "gta5"
lua54 "yes"
version "2.2.5"
author "ImagicTheCat"
creative_network "yes"

loadscreen "loading/web/index.html"
-- loadscreen_manual_shutdown "yes"

dependency 'ox_lib'

shared_scripts {
	"translations.lua",
	"@ox_lib/init.lua",
}

shared_script '@sx/linker.lua'

client_scripts {
    "config/*",
    "lib/Utils.lua",
	"client/*",
	"lib/lib.lua",
	"lib/Date.js",
    --"loading/client/*"
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "config/*",
	"lib/Utils.lua",
	"modules/vrp.lua",
	"modules/base.lua",
	"modules/drugs.lua",
	"modules/groups.lua",
	"modules/identity.lua",
	"modules/inventory.lua",
	"modules/money.lua",
	"modules/player.lua",
	"modules/premium.lua",
	"modules/prepare.lua",
	"modules/queue.lua",
	"modules/vehicles.lua",
	"modules/discord.lua",
	"modules/salary.lua",
	"modules/achievements.lua",
	"modules/hydruscommands.lua",
	"modules/objects.lua",
	"modules/trunkchest.lua",
    "modules/hwid.lua",
	"modules/ratelimit.lua"
}

files {
    "loading/web/index.html",
	"loading/web/assets/*",
	"loading/web/assets/**/*",
	"loading/web/scripts/video.js",
	"loading/web/scripts/cityConfigs.js",
	"loading/web/*",
	-- "loading/web/assets/stream/*.mp3",
	"lib/*",
	"config/inventory/*",
	"config/frontend-i18n-config/**/*",
	"web/themes.js",
    "config/vehicles/*"
}

escrow_ignore {
	"lib/*",
	"config/*",
	"modules/vrp.lua",
	"modules/prepare.lua"
}
