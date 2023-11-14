# Connection Whitelist

## Dependencies
### Sourcemod
* Sourcemod >= 1.9
* Extension: [[L4D2] ConnectHook](https://forums.alliedmods.net/showthread.php?t=275997)

## Overview
Allows you to restrict access to the server only to certain players. Useful for testing and for having super mega VIP parties (of course).

## Usage

### Admin Commands
* Add player to whitelist: `sm_whitelist_add <STEAM_0:0:00000000>`
* Remove player from whitelist: `sm_whitelist_remove <STEAM_0:0:00000000>`
* Reload whitelist file: `sm_whitelist_refresh`

### Configuration File

Create a `connection_whitelist.txt` file in `addons/sourcemod/data` and put a list of Steam IDs within it.

Example:

```
// These SteamIds are whitelisted by default:
STEAM_1:1:10643239 // choree
STEAM_1:1:12345678
STEAM_1:1:90123456
```
