if (( ${+CARGO_HOME} )); then
    path+="${CARGO_HOME}/bin"
fi

export -U path
