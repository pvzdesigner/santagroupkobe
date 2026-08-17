shared_script '@likizao_ac/client/library.lua'

fx_version 'bodacious'
games { 'gta5' }

author 'Kiminaze'

client_scripts {
	--'@NativeUILua-Reloaded/src/NativeUIReloaded.lua',
	'@NativeUI/NativeUI.lua',
	'config.lua',
	'client.lua'
}

server_scripts { 
	"@vrp/lib/Utils.lua",
	'server.lua'
}
