shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"

version '1.0.0'
repository ''

lua54 'yes'

game "gta5"

shared_script '@sx/linker.lua'
shared_script '@ox_lib/init.lua'

client_scripts {
	"@vrp/lib/Utils.lua",
	"client/*"
}

server_scripts {
	"@vrp/lib/Utils.lua",
	"server/*"
}

shared_script "shared.lua"

ui_page "web/index.html"

files {
	"web/*",
	"web/**/*"
}