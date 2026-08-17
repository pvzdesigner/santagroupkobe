shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"

author 'DeadShot#0101,Andre BC#0640'
description 'painel'
version '0.0.1'

lua54 'yes'

shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'

shared_scripts {
    'translations.lua',
    'shared.lua',
    'shared_farm.lua',
}

client_scripts {
    "@vrp/lib/Utils.lua",
    "@vrp/config/Groups.lua",
    "@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
    'client/client.lua',
    'client/bank.lua',
    'client/squad.lua',
    'translations.lua',
}

server_scripts {
    "@oxmysql/lib/MySQL.lua",
    "@vrp/lib/Utils.lua",
    "@vrp/config/Groups.lua",
    "@vrp/translations.lua",
	"@vrp/config/translations.lua",
	"@vrp/config/Item.lua",
    'server/config.lua',
    'server/server.lua',
    'server/pagination.lua',
    'server/squad.lua',
    'server/bank.lua',
    'server/prepare.lua',
    'server/permission.lua',
    'server/farm.lua',
    'translations.lua',
}



files {
	'web/index.html',
	'web/*',
	'web/**/*',
	'web/static/css/**/*',
	'web/static/js/**/*',
	'web/static/media/**/*',
	'web/assets/*'
}

ui_page 'web/index.html'
