fx_version 'cerulean'
game 'gta5'

name 'DD5M Meta Masks'
author 'daddyDUBZ'
version '1.0.0'

shared_scripts {
	'@ox_lib/init.lua',
	'config/config.lua'
}

client_scripts{
	'client/masks.lua',
	'client/shops.lua', --Remove this line for standalone use.
}

server_scripts {
	'@oxmysql/lib/MySQL.lua',
	'server/masks.lua',
	'server/shops.lua', --Remove this line for standalone use.
}

files {
	'config/config.lua',
	'img/*.png'
}

dependencies {
	'ox_lib',
	'ox_inventory'
}

escrow_ignore {
    'config/config.lua'
}

lua54 'yes'