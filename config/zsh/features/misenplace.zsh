# Aliases to allow quick navigate around the Misenplace directory structure
alias miz='cd ${MIZ_HOME}'
alias miz-scratch='cd ${WORKSPACE_HOME}/Scratch'

# Create a Empty Directory in the Scratch Folder
scratch() {
    if [[ -n "${1}" ]]; then
        mkdir -p "${WORKSPACE_HOME}/Scratch/${1}" 
        cd "${WORKSPACE_HOME}/Scratch/${1}"
    else
        echo "Usage: ${0} <folder name>"
    fi
}