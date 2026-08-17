shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
game 'gta5'
lua54 "yes"

dependency 'lib'

shared_script "translations.lua"
shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'
shared_script '@lib/index.lua'
shared_script '@lib/instance.lua'

server_script 'server/**/**'
client_script 'client/**/**'

ui_page 'web/dist/index.html'
files { 'web/dist/**/*' }