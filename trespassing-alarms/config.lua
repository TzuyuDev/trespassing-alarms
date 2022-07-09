Config = {}

-- Enable Debugging (Always Alert)
Config.debug = false

Config.defaultNotificationText = 'Shit... the cops have been alerted! Quickly get away!'

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
        alertChance = 25, -- Chance to alert the cops
        alertCooldown = 10, -- Time in seconds for cooldown to prevent double trigger
        playSound = true, -- Play sound yes or no
        soundVolume = 0.8, -- Volume of the sound played
        alertPlayer = true, -- Alert player yes or no with a notification
        alarmSound = 'Tresspass_Alarm', -- sound file in interact-sound
        -- Notification Configuration
        notificationText = '' -- Custom text to show, otherwise default is used
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
            "police",
            "ambulance"
        },
        -- Alert Configuration
        alertChance = 25, -- Chance to alert the cops
        alertCooldown = 10, -- Time in seconds for cooldown to prevent double trigger
        playSound = true, -- Play sound yes or no
        soundVolume = 0.8, -- Volume of the sound played
        alertPlayer = true, -- Alert player yes or no with a notification
        alarmSound = 'Tresspass_Alarm', -- sound file in interact-sound
        -- Notification Configuration
        notificationText = 'LS Water & Power called the police...' -- Custom text to show, otherwise default is used
    },
}
