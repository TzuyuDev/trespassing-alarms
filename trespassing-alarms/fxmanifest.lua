fx_version 'cerulean'
game 'gta5'

name 'QBCore Trespassing Alarms'
author 'Nikki#9699'
description 'QB Core Tresspass Alarms (https://github.com/TzuyuDev/trespassing-alarms)'
version '1.0.1'


client_scripts {
    '@PolyZone/client.lua',
    '@PolyZone/BoxZone.lua',
    '@PolyZone/EntityZone.lua',
    '@PolyZone/CircleZone.lua',
    '@PolyZone/ComboZone.lua',
    'config.lua', -- Config.lua (Tresspassing-alarms)
    'client.lua', -- Client.lua (Tresspassing-alarms)
}


dependencies {
    'PolyZone',
}
