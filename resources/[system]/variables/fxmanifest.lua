shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
game 'gta5'

dependency 'lib'

shared_script '@lib/index.lua'
shared_script '@lib/instance.lua'
shared_scripts {
	'config/*.lua',
	'functions.lua',
}

client_scripts {
    "@vrp/config/Themes.lua",
	"@vrp/config/Native.lua",
	"@vrp/config/Vehicle.lua",
	"@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
	"@vrp/config/Vehicle.lua",
	"@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
	"@vrp/lib/Utils.lua",
}