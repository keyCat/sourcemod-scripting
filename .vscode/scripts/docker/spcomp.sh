#!/usr/bin/env sh

set -xe

# Bash script arguments:
# arg       description
# $1        sourcemod version directory (1.6.0, 1.7.3, 1.9.0, 1.10.0, 1.11.0)
# $2        script directory path relative to repository root directory (e.g. plugins/1v1/scripting)
# $3        script filename without extension (eg. 1v1)

INCLUDE_DIR_VER="UNKNOWN_VERSION"
SPCOMP_EXECUTABLE="spcomp"
case $1 in
    1.11.0)
        INCLUDE_DIR_VER="1.11"
        SPCOMP_EXECUTABLE="spcomp64_linux"
        ;;
    # 1.6.0)
    #     INCLUDE_DIR_VER="1.6"
    #     SPCOMP_EXECUTABLE="spcomp_linux"
    #     ;;
    # 1.7.3)
    #     INCLUDE_DIR_VER="1.7"
    #     SPCOMP_EXECUTABLE="spcomp_linux"
    #     ;;
    # 1.9.0)
    #     INCLUDE_DIR_VER="1.9"
    #     SPCOMP_EXECUTABLE="spcomp_linux"
    #     ;;
    # 1.10.0)
    #    INCLUDE_DIR_VER="1.10"
    #    SPCOMP_EXECUTABLE="spcomp_linux"
    #    ;;
    *)
        echo "Unknown sourcemod version: $1"
        exit 1
        ;;
esac

mkdir -p /root/scripting/$2/../compiled
/root/sourcemod/$1/spcomp64_linux "/root/scripting/$2/$3.sp" -o"/root/scripting/$2/../compiled/$3.smx" -i"/root/scripting/includes/$INCLUDE_DIR_VER"