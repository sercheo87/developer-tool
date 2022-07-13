#!/bin/sh

FMT_RED=$(printf '\033[31m')
FMT_GREEN=$(printf '\033[32m')
FMT_YELLOW=$(printf '\033[33m')
FMT_BLUE=$(printf '\033[34m')
FMT_BOLD=$(printf '\033[1m')
FMT_RESET=$(printf '\033[0m')

ZSH_CONFIGURATION_FILE="~/.zshrc"
FOLDER_PLUGINS=$ZSH_CUSTOM/plugins

echo $FMT_GREEN ":: Cloning plugin developer-tool"
git clone https://github.com/sercheo87/developer-tool.git --depth=1 $FOLDER_PLUGINS

echo $FMT_GREEN ":: Add developer-tool in $ZSH_CONFIGURATION_FILE"
sed -i 's/plugins=(/plugins=(developer-tool /g' $ZSH_CONFIGURATION_FILE

echo $FMT_BLUE ":: Refresh configuration"
source $ZSH_CONFIGURATION_FILE

echo $FMT_RESET ":: Done"