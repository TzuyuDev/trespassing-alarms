# QB-Core Trespassing Alarms
A system to create polyzones, with a given chance to alert police on trespassing  
Created by Nikki#9699

![screenshot-alert](https://i.gyazo.com/14efab35c06823a4916b8cbde337bd43.png)

[![Watch the preview](https://i.gyazo.com/fec76efe8ea8dae5cb1161436858bbac.jpg)](https://streamable.com/g9z7ux)

## INTRODUCTION

- A resource where polyzones are setup to protect an area
- Specific Jobs can be ignored (Changeable in config.lua) (If left empty it will always trigger)
- Chance for alert can be changed per polyzone (Changeable in config.lua)
- Set cooldown to prevent continous trigger (Changeable in config.lua)

## DEPENDENCIES
**[qb-core] (https://github.com/qbcore-framework/qb-core)** - QBCore  
**[PolyZone] (https://github.com/mkafrin/PolyZone)** - To create the zones  
**[interact-sound] (https://github.com/plunkettscott/interact-sound)** - To play audio files  
**[ps-dispatch] (https://github.com/Project-Sloth/ps-dispatch)** - For the police dispatch calls  


## Installation Instruction

1. Move "trespassing-alarms" into your resource folder and ensure it
2. Move the "Tresspass_Alarm.ogg" into interact-sound/client/html/sounds
3. Update the "config.lua" to your liking

## Config.lua file
```lua
Config = {}

-- Enable Debugging (Always Alert)
Config.debug = false

Config.zones = {
    [1] = {
        label = "Lucky Plucker", -- Label for your convenience
        zones = { -- Polyzone Coords
            vector2(-68.64, 6268.05),
            vector2(-67.48, 6266.01),
            vector2(-73.08, 6262.27),
            vector2(-74.09, 6264.62),
        },
        minZ = 29.7,
        maxZ = 33.1,
        ignoredJobs = { -- Set jobs that will be ignored
            "police",
            "ambulance"
        },
        -- Alert Configuration
        alertChance = 20,
        alertCooldown = 10, -- Time in seconds
        alarmSound = 'Tresspass_Alarm' -- sound file in interact-sound
    },
    [2] = {
        label = "LS Water & Power", -- Label for your convenience
        zones = { -- Polyzone Coords
            vector2(733.28, 130.44),
            vector2(731.22, 131.09),
            vector2(733.88, 135.59),
            vector2(735.7, 134.5),
        },
        minZ = 79.7,
        maxZ = 83.1,
        ignoredJobs = { -- Set jobs that will be ignored
            "police",
            "ambulance"
        },
        -- Alert Configuration
        alertChance = 20,
        alertCooldown = 10, -- Time in seconds
        alarmSound = 'Tresspass_Alarm' -- sound file in interact-sound
    },
}
```

## Zone setup
```lua
[1] = {
        label = "Lucky Plucker", -- Label for your convenience
        zones = { -- Polyzone Coords
            vector2(-68.64, 6268.05),
            vector2(-67.48, 6266.01),
            vector2(-73.08, 6262.27),
            vector2(-74.09, 6264.62),
        },
        minZ = 29.7,
        maxZ = 33.1,
        ignoredJobs = { -- Set jobs that will be ignored
            "police",
            "ambulance"
        },
        -- Alert Configuration
        alertChance = 20,
        alertCooldown = 10, -- Time in seconds
        alarmSound = 'Tresspass_Alarm' -- sound file in interact-sound
    },
  ```
