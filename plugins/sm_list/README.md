# sm_list

## Dependencies
### Sourcemod
* Sourcemod >= 1.9

## Overview
Small and simple command to display and filter the list of currently loaded plugins.

## Usage

### Admin Commands

* `sm_ls [plugin_file_name_part]`
* `sm_list [plugin_file_name_part]`

### Example output

```
sm_ls

[sm_list] 19 plugins currently loaded

- [Running]    connection_whitelist.smx
- [Running]    smac_rcon.smx
- [Running]    smac_client.smx
- [Running]    smac_cvars.smx
- [Running]    smac_spinhack.smx
- [Running]    smac_l4d2_fixes.smx
- [Running]    smac_speedhack.smx
- [Running]    smac_eyetest.smx
- [Running]    smac_commands.smx
- [Running]    smac_bh_detect.smx
- [Running]    smac_aimbot.smx
- [Running]    smac_autotrigger.smx
- [Running]    basechat.smx
- [Running]    sounds.smx
- [Running]    nativevotes.smx
- [Error]      lilac.smx
- [Running]    funcommands.smx
- [Running]    admin-flatfile.smx
- [Running]    basecommands.smx
```

With filter

```
sm_ls smac_

[sm_list] 11/19 matched plugins for string "smac_"

- [Running]    smac_rcon.smx
- [Running]    smac_client.smx
- [Running]    smac_cvars.smx
- [Running]    smac_spinhack.smx
- [Running]    smac_l4d2_fixes.smx
- [Running]    smac_speedhack.smx
- [Running]    smac_eyetest.smx
- [Running]    smac_commands.smx
- [Running]    smac_bh_detect.smx
- [Running]    smac_aimbot.smx
- [Running]    smac_autotrigger.smx

sm_ls kickeverybodyidontlike

[sm_list] 0/19 matched plugins for string "kickeverybodyidontlike"
```
