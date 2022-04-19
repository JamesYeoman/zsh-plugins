function exportVarIfExists() {
    if [[ -d "$2" ]]; then
        eval "export ${1}=\"${2}\""
    fi
}

XDG_COMPLIANT="${XDG_DATA_HOME:-$HOME/.local/share}"

exportVarIfExists "RUSTUP_HOME" "${XDG_COMPLIANT}/rustup"
exportVarIfExists "CARGO_HOME" "${XDG_COMPLIANT}/cargo"

unset exportVarIfExists
unset XDG_COMPLIANT
