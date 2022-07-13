$VARIABLES
ZSH_CONFIGURATION_FILE=~/.zshrc
FMT_RED=$(printf '\033[31m')
FMT_GREEN=$(printf '\033[32m')
FMT_YELLOW=$(printf '\033[33m')
FMT_BLUE=$(printf '\033[34m')
FMT_BOLD=$(printf '\033[1m')
FMT_RESET=$(printf '\033[0m')

#Functions
function devtool() {
    CURRENT_DIR=$(pwd)
    FOLDER_PLUGINS="zsh -c 'echo ${ZSH_CUSTOM}/plugins'"
    FOLDER_PLUGIN=$FOLDER_PLUGINS/developer-tool

    cd $FOLDER_PLUGIN
    echo $FMT_BLUE ":: Updating plugin developer-tool" $FMT_RESET
    git fetch --depth=1 origin
    git pull

    source $ZSH_CONFIGURATION_FILE

    echo $FMT_GREEN ":: Updated plugin developer-tool" $FMT_RESET
    cd $CURRENT_DIR
}

function gltc() {
    # Utility https://www.npmjs.com/package/clipboard-cli
    # clipcopy is plugin zsh
    # clippaste to pase
    head -n$1 $2 | tail +$1 | clipcopy
}

#Alias
alias fzfp="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"