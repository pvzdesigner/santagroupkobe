shared_script '@likizao_ac/client/library.lua'

fx_version 'bodacious'
game 'gta5'

lua54 'yes'

ui_page 'nui/index.html'
files {
    'nui/index.html',
    'nui/script.js',
    'nui/style.css',
    'nui/*otf',
    'nui/*png',
    'nui/fonts/*.ttf',
    'nui/fonts/*.otf',
    'nui/fonts/*.OTF',
}

shared_scripts {
    'translations.lua',
    '@vrp/lib/Utils.lua',
    'config.lua',
}

client_scripts{
    '@sleepless_interact/init.lua',
    'client/*.lua',
}


server_scripts {
    'translations.lua',
    '@oxmysql/lib/MySQL.lua',
    'server/*.lua',
}