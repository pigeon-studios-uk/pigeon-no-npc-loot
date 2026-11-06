Config = {}

-- false: NPCs no longer drop their weapon when they die. true leaves GTA's drops as they are.
Config.NpcWeaponDrops = false

-- false: getting into a vehicle, such as a police car, no longer gives the player the weapon GTA keeps
-- in it. true leaves GTA's vehicle weapons as they are.
Config.VehicleWeapons = false

-- How often, in seconds, new NPCs near the player are checked. A new NPC is covered within this long
-- of appearing.
Config.NpcCheckSeconds = 1.0

-- Update checks are controlled in server.cfg for every Pigeon Studios resource at once:
--     set pigeon_update_check "on"      (default)  |  "quiet"  |  "off"
