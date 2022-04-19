function exportEnvIfExists() {
    if [[ -d "$2" ]]; then
        eval "export ${1:u}_ROOT=\"${2}/${1}\""
        lazyload "$1" -- 'eval "$('$1' init -)"'
    fi
}

export XENV_COMMANDS=("jenv" "pyenv" "nodenv" "sbtenv" "scalaenv" "goenv" "rbenv" "phpenv")

for cmnd in $XENV_COMMANDS; do
    exportEnvIfExists "$cmnd" "${XDG_DATA_HOME:-$HOME/.local/share}"
done

unset exportEnvIfExists
