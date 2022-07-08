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
    [1] = {
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
        },
        -- Alert Configuration
        alertChance = 100,
        alertCooldown = 10, -- Time in seconds
        alarmSound = 'Tresspass_Alarm' -- sound file in interact-sound
    },
}
