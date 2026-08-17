shared_script '@likizao_ac/client/library.lua'

fx_version 'cerulean'
game 'gta5'

files {

    -- # PopGroups
    --
    -- Quando usamos "onesync_population false", o game ainda tenta criar os peds e veiculos
    -- e com isso, os modelos dessas entidades são carregadas em memorias e nunca liberadas
    -- então a gente remove todo o conteudo do popgroups.ymt para evitar esse processo
	-- 'data/popgroups.ymt'
}

-- data_file 'DLC_POP_GROUPS' 'data/popgroups.ymt'