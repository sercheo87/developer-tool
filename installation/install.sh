#!/bin/zsh

FMT_RED=$(printf '\033[31m')
FMT_GREEN=$(printf '\033[32m')
FMT_YELLOW=$(printf '\033[33m')
FMT_BLUE=$(printf '\033[34m')
FMT_BOLD=$(printf '\033[1m')
FMT_RESET=$(printf '\033[0m')

if [[ -z "$ZSH_CUSTOM" ]]; then
  ZSH_CUSTOM="$ZSH/custom"
fi

ZSH_CONFIGURATION_FILE=~/.zshrc
FOLDER_PLUGINS="${ZSH_CUSTOM}/plugins"
FOLDER_PLUGIN=$FOLDER_PLUGINS/developer-tool

if [[ -d $FOLDER_PLUGIN ]] then
    echo $FMT_BLUE ":: Delete pre exist plugin developer-tool" $FMT_RESET
    rm -rf $FOLDER_PLUGIN;
fi

echo $FMT_GREEN ":: Cloning plugin developer-tool" $FMT_RESET
git clone https://github.com/sercheo87/developer-tool.git --depth=1 $FOLDER_PLUGIN

echo $FMT_GREEN ":: Add developer-tool in $ZSH_CONFIGURATION_FILE" $FMT_RESET
if grep -xq "developer-tool" $ZSH_CONFIGURATION_FILE; then
    echo $FMT_YELLOW ":: developer-tool already in $ZSH_CONFIGURATION_FILE" $FMT_RESET
else
    sed -i 's/plugins=(/plugins=(developer-tool /g' $ZSH_CONFIGURATION_FILE
fi

echo $FMT_BLUE ":: Refresh configuration" $FMT_RESET
source $ZSH_CONFIGURATION_FILE

echo $FMT_RESET ":: Done"
