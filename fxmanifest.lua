fx_version 'cerulean'
game 'gta5'

author 'njtank'
description 'A script for vehicle salvage tasks.'
version '1.0.0'

shared_script 'config.lua'
client_scripts {
    'client/main.lua'
}
server_scripts {
    'server/main.lua'
}

dependencies {
    'ox_inventory',
    'ox_lib',
    'ox_target'
}
