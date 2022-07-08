local QBCore = exports['qb-core']:GetCoreObject()


local PlayerData = QBCore.Functions.GetPlayerData()
local PlayerJob = {}
PlayerData = QBCore.Functions.GetPlayerData()
PlayerJob = QBCore.Functions.GetPlayerData().job

RegisterNetEvent('QBCore:Client:OnJobUpdate', function(JobInfo)
  PlayerData.job = JobInfo
end)


function dump(o)
  if type(o) == 'table' then
     local s = '{ '
     for k,v in pairs(o) do
        if type(k) ~= 'number' then k = '"'..k..'"' end
        s = s .. '['..k..'] = ' .. dump(v) .. ','
     end
     return s .. '} '
  else
     return tostring(o)
  end
end

local function has_value (tab, val)
  for index, value in ipairs(tab) do
      if value == val then
          return true
      end
  end

  return false
end


function randomChance (percent) -- returns true a given percentage of calls
  assert(percent >= 0 and percent <= 100) -- sanity check
  return percent >= math.random(1, 100)   -- 1 succeeds 1%, 50 succeeds 50%,
  -- 100 always succeeds, 0 always fails
end

CreateThread(function()
    for k in pairs(Config.zones) do
      local ZoneTriggered = false
      local ZoneLocation = PolyZone:Create(Config.zones[k].zones, {
        name = Config.zones[k].label,
        minZ = Config.zones[k].minz,
        maxZ = Config.zones[k].maxz,
        debugPoly = false
      })

      ZoneLocation:onPlayerInOut(function(isPointInside)
        if isPointInside then
          inZone = true
        else
          inZone = false
        end

        --Check if in zone
        if inZone then -- User is in zone
          local jobs = Config.zones[k].ignoredJobs
          local PlayerJobP = PlayerJob.name
          local alert = false
          local triggertime = ''
          -- Check if job is allowed to be in zone
          if has_value(jobs, PlayerData.job.name) then
            alert = false
          else
            alert = true
          end
          -- Create Alert

          if Config.debug == true then
            TriggerServerEvent("InteractSound_SV:PlayOnSource", Config.zones[k].alarmSound, 0.8)
            Wait(1000)
            QBCore.Functions.Notify("Shit... the cops have been alerted! Quickly get away!", "success")
            exports['ps-dispatch']:SuspiciousActivity()
          else
            if alert == true then
              local triggerAlert = randomChance(Config.zones[k].alertChance)
              if triggerAlert == true and ZoneTriggered == false then
              TriggerServerEvent("InteractSound_SV:PlayOnSource", Config.zones[k].alarmSound, 0.8)
              Wait(1000)
              QBCore.Functions.Notify("Shit... the cops have been alerted! Quickly get away!", "success")
              exports['ps-dispatch']:SuspiciousActivity()
              TriggerServerEvent("InteractSound_SV:PlayOnSource", Config.zones[k].alarmSound, 0.2)
              ZoneTriggered = true
              end
              Wait(Config.zones[k].alertCooldown * 1000)
              ZoneTriggered = false
            end
          end
        else

        end



      end)
    end
  end)