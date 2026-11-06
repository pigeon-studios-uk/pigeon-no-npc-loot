--[[
    Pigeon No NPC Loot: client.

    Two ways players get free weapons from GTA's world:
    - NPCs drop their weapon when they die. SetPedDropsWeaponsWhenDead(ped, false) stops that for each NPC,
      so every NPC near the player is checked once a second.
    - Getting into some vehicles, such as police cars, gives the player the weapon kept in them.
      DisablePlayerVehicleRewards stops that, but only for the frame it's called in, so it's called every
      frame while the player is getting into or sitting in a vehicle.
]]

local IDLE_MS = 250
local NO_NPC_DROPS = Config.NpcWeaponDrops == false
local NO_VEHICLE_REWARDS = Config.VehicleWeapons == false

local handled = {}            -- NPCs already set, so each one is only set once

if NO_NPC_DROPS then
    CreateThread(function()
        while true do
            local seen = {}
            for _, ped in ipairs(GetGamePool('CPed')) do
                seen[ped] = true
                if not handled[ped] and not IsPedAPlayer(ped) then
                    SetPedDropsWeaponsWhenDead(ped, false)
                    handled[ped] = true
                end
            end
            -- Forget NPCs that have gone, so a new NPC given the same handle is set too.
            for ped in pairs(handled) do
                if not seen[ped] then handled[ped] = nil end
            end
            Wait(math.floor((Config.NpcCheckSeconds or 1.0) * 1000))
        end
    end)
end

if NO_VEHICLE_REWARDS then
    CreateThread(function()
        while true do
            local ped = PlayerPedId()
            if IsPedGettingIntoAVehicle(ped) or IsPedInAnyVehicle(ped, false) then
                DisablePlayerVehicleRewards(PlayerId())
                Wait(0)
            else
                Wait(IDLE_MS)
            end
        end
    end)
end
