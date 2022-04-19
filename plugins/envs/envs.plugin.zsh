function exportEnvIfExists() {
    if [[ -d "$2" ]]; then
        eval "export ${1}=\"${2}/${3}\""
        lazyload "$3" -- 'eval "$('$3' init -)"'
    fi
}

XDG_COMPLIANT="${XDG_DATA_HOME:-$HOME/.local/share}"

exportEnvIfExists "JENV_ROOT" "${XDG_COMPLIANT}" "jenv"
exportEnvIfExists "PYENV_ROOT" "${XDG_COMPLIANT}" "pyenv"
exportEnvIfExists "NODENV_ROOT" "${XDG_COMPLIANT}" "nodenv"
exportEnvIfExists "SBTENV_ROOT" "${XDG_COMPLIANT}" "sbtenv"
exportEnvIfExists "SCALAENV_ROOT" "${XDG_COMPLIANT}" "scalaenv"
exportEnvIfExists "GOENV_ROOT" "${XDG_COMPLIANT}" "goenv"
exportEnvIfExists "RBENV_ROOT" "${XDG_COMPLIANT}" "rbenv"
exportEnvIfExists "PHPENV_ROOT" "${XDG_COMPLIANT}" "phpenv"

unset exportEnvIfExists
unset XDG_COMPLIANT
