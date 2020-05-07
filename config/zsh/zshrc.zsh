echo -n "Loading zshrc"
# Core Misenplace Locations
# Main Folder
export MIZ_HOME="${HOME}/Documents/Misenplace"
# We define other paths relative to ${MIZ_HOME}

export MIZ_WORKSPACE_HOME="${MIZ_HOME}/Workspace"
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

export HISTORY_HOME="${HOME}/Documents/History"
# Log each command line entry to the external history file
export PROMPT_COMMAND='if [ "$(id -u)" -ne 0 ]; then echo "$(date "+%Y-%m-%d.%H:%M:%S") $(pwd) $(fc -ln -1)" >> ${HISTORY_HOME}/${MIZ_HOSTNAME_SHORT:l}-zsh-history-$(date "+%Y-%m-%d").log; fi'
precmd() { eval "$PROMPT_COMMAND" }

# Initalize any feature config files
for i in `find ${MIZ_CONFIG}/zsh/features/*.zsh -type f`; 
do
  echo -n "."
  source "${i}"
done;

echo "done"
