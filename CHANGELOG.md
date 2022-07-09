# Changelog

All notable changes to this project will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.1] - 2022-07-10

I'm super excited to announce `tresspassing-alarms` Version 1.0.1

This update adds some more customization to the alert system and the code has been cleaned up

**Feel free to report any bugs with the resource to me on Github or discord Nikki#9699**

### Major changes

- Added `Config.defaultNotificationText` This is the default shown text for player notifications
- Added `Config.zones.playSound` Choose whether to play a sound on alerts or not (Pretty useful for silent alarms)
- Added `Config.zones.soundVolume` Choose the volume of the sound played
- Added `Config.zones.alertPlayer` Choose whether to alert the player or not through a QBCore Notification

### Minor Changes
- Cleaned up the code in the `client.lua` file
- Updated `fxmanifest.lua` file

## [1.0.0] - 2022-07-09

I'm super excited to announce `tresspassing-alarms` Version 1.0.0

- A resource where polyzones are setup to protect an area
- Specific Jobs can be ignored (Changeable in config.lua) (If left empty it will always trigger)
- Chance for alert can be changed per polyzone (Changeable in config.lua)
- Set cooldown to prevent continous trigger (Changeable in config.lua)
