#!/usr/bin/env bash
set -x

# This file is used as a vscode task entry point when task is run on MacOS systems.
# It executes a script in a docker container created from image "sourcemod".
# You have to build this image beforehand by running: "docker.sh" script from the root directory of this repository.

# Bash script arguments:
#  _______________________________________________________________________________________________________________________________________________
# | arg   |    vscode task variable       | description                                                                                           |
# |-------|-------------------------------|-------------------------------------------------------------------------------------------------------|
# | $1    |    written literally          | sourcemod version directory (e.g. "1.6.0", "1.7.3", "1.9.0", "1.10.0", "1.11.0")                      |
# | $2    |    ${workspaceFolder}         | full path to root directory of the repository (e.g. "/home/username/projects/solaris-scripting")      |
# | $3    |    ${relativeFileDirname}     | script directory path relative to the root directory of the repository (e.g. "plugins/1v1/scripting") |
# | $4    |    ${fileBasenameNoExtension} | script filename without an extension (e.g. 1v1)                                                       |
#  -----------------------------------------------------------------------------------------------------------------------------------------------

docker run -v $2:/root/scripting sourcemod /root/scripting/.vscode/scripts/docker/spcomp.sh "$1" "$3" "$4"
docker container prune -f
