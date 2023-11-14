# Plugin Unload Protect

## Dependencies
### Sourcemod
* Sourcemod >= 1.9

## Overview
This plugin prevents specific plugins from being unloaded, ensuring they remain active. It enhances the predictability of plugin loading and unloading order (first in, last out). Despite its initial technical complexity, it proves highly beneficial in long-term usage.

## Purpose

Designed for Left 4 Dead 2 servers, this plugin addresses challenges with `Confogl` and its configurations. It prevents issues arising from the use of `sm plugins unload_all`, which can inadvertently unload essential plugins like HUD enhancements or stats trackers. It safeguards selected plugins from unloading, maintains their state over time, and resolves conflicts with third-party configurations using `sm plugins unload_all`. Additionally, it simplifies the lifecycle management of your plugins and aids in detecting long-term memory leaks.

## Implementation

To use this plugin, you need to modify your server and plugin configurations:
- Replace all Sourcemod commands with corresponding `plugin_unload_protect` commands.

Command Replacements:

| Sourcemod                | Plugin Unload Protect Replacement      |
|--------------------------|----------------------------------------|
| `sm plugins load_lock`   | **`sm_plugins_load_lock`**             |
| `sm plugins load_unlock` | **`sm_plugins_load_unlock`**           |
| `sm plugins refresh`     | **`sm_plugins_refresh`**               |
| `sm plugins load`        | **`sm_plugins_load`**                  |
| `sm plugins unload`      | **`sm_plugins_unload`**                |
| `sm plugins unload_all`  | **`sm_plugins_unload_all`**            |

## Usage

### Admin Commands
* Protect a plugin: `sm_plugins_protect <plugin_name>[.smx]`
* Unprotect a plugin: `sm_plugins_unprotect <plugin_name>[.smx]`
* List protected plugins: `sm_plugins_protect_list`

### Configuration File

Create a `protected_plugins_list.txt` file in `addons/sourcemod/data`. List all plugins to be automatically protected upon loading `plugin_unload_protect`:

```
admin-flatfile
adminhelp
adminmenu
autorecorder
basechat
basecomm
basecommands
basevotes
clientprefs
coinflip
fixes/command_buffer
optional/connection_whitelist
```
