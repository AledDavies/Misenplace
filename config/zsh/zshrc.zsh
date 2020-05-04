# Core Misenplace Locations
# Main Folder
export MIZ_DOCUMENTS_HOME="${HOME}/Documents"
# We define other paths relative to ${DOCUMENTS_HOME}

export MIZ_HOME="${MIZ_DOCUMENTS_HOME}/Misenplace"
export MIZ_WORKSPACE_HOME="${MIZ_DOCUMENTS_HOME}/Workspace"
export MIZ_HISTORY_HOME="${MIZ_DOCUMENTS_HOME}/History"
export MIZ_CONFIG="${MIZ_HOME}/config"

# The short version of the hostname
export MIZ_HOSTNAME_SHORT="$(hostname -s)"

# Initalize Antibody
source <(antibody init)
antibody bundle < ${MIZ_CONFIG}/zsh/zsh_plugins

# zsh features
# Enable completions
# Shell completion
autoload -U +X compinit && compinit
autoload -U +X bashcompinit && bashcompinit

# Matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'

# Set vim to be the default editor
export EDITOR="vim"

# Log each command line entry to the external history file
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(fc -ln -1)" >> ${MIZ_HISTORY_HOME}/${MIZ_HOSTNAME_SHORT:l}-zsh-history-$(date "+%Y-%m-%d").log; fi'
precmd() { eval "$PROMPT_COMMAND" }

# Initalize any feature config files
for i in `find ${MIZ_CONFIG}/zsh/features/*.zsh -type f`; 
do
  source "${i}"
done;
