fx_version 'cerulean'
game 'gta5'
lua54 'yes'

name 'pigeon-no-npc-loot'
author 'Pigeon Studios'
description 'Stops NPCs dropping their weapons when they die, and stops police cars and other vehicles handing out free guns.'
version '1.0.0'
repository 'https://github.com/pigeon-studios-uk/pigeon-no-npc-loot'

-- Pigeon Studios version registry entry, read by server/version_check.lua.
pigeon_slug 'pigeon-no-npc-loot'

client_scripts {
    'configuration/config.lua',
    'client/main.lua',
}

server_scripts {
    'server/version_check.lua',
}
