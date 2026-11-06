# Changelog

All notable changes to Pigeon No NPC Loot are documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.1.0/), and this project uses [Semantic Versioning](https://semver.org/spec/v2.0.0.html):

- **Major** versions can need changes to your configuration or other resources. Read the **Upgrade notes**.
- **Minor** versions add features without breaking existing setups.
- **Patch** versions fix bugs only.

## [Unreleased]

First release.

### Highlights

- No weapon drops from dead NPCs
- No free weapons from police cars and other vehicles
- Turn either one off

### Added

- Weapon drops from dead NPCs turned off, for every NPC near each player, checked every `Config.NpcCheckSeconds`.
- The weapon GTA gives players for getting into some vehicles, such as police cars, turned off, every frame while getting in or seated.
- `Config.NpcWeaponDrops` and `Config.VehicleWeapons` to keep either one.
- Update checker from the Pigeon Studios version registry.

[Unreleased]: https://github.com/pigeon-studios-uk/pigeon-no-npc-loot/commits/main
