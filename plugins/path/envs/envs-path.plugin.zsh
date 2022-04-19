if (( ${+JENV_ROOT} )); then
    path+="${JENV_ROOT}/bin"
fi

if (( ${+PYENV_ROOT} )); then
    path+="${PYENV_ROOT}/bin"
fi

if (( ${+NODENV_ROOT} )); then
    path+="${NODENV_ROOT}/bin"
fi

if (( ${+SBTENV_ROOT} )); then
    path+="${SBTENV_ROOT}/bin"
fi

if (( ${+SCALAENV_ROOT} )); then
    path+="${SCALAENV_ROOT}/bin"
fi

if (( ${+GOENV_ROOT} )); then
    path+="${GOENV_ROOT}/bin"
fi

if (( ${+RBENV_ROOT} )); then
    path+="${RBENV_ROOT}/bin"
fi

if (( ${+PHPENV_ROOT} )); then
    path+="${PHPENV_ROOT}/bin"
fi

export -U path
