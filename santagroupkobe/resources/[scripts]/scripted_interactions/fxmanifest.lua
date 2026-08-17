shared_script '@likizao_ac/client/library.lua'

fx_version "bodacious"
game "gta5"
lua54 "yes"

shared_script '@ox_lib/init.lua'

shared_script '@vrp/lib/Utils.lua'

shared_scripts {
	'code/shared/animation_flags.lua',
	'code/shared/scripted_interaction_def.lua',
	'code/shared/main.lua',
}

client_scripts {
	'code/client/main.lua',
}

server_scripts {
	'code/server/main.lua',
}

--- # Data

shared_scripts {
	'data/scripted_interactions/fishing_rod.lua',
	'data/scripted_interactions/cellphone.lua',
	'data/scripted_interactions/hacker_typing.lua',
	'data/scripted_interactions/cow_animation.lua',
	'data/scripted_interactions/generic_collecting_from_ground.lua',
	'data/scripted_interactions/scuba_gear.lua',
}