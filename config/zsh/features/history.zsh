# Where to save history to disk
[ -z "$HISTFILE" ] && HISTFILE="$HOME/.zsh_history"

# Lines of history to keep in memory for current session
HISTSIZE=10000

# Number of history entries to save to disk
SAVEHIST=50000

# Number of commands to save in the file
HISTFILESIZE=50000

# Use extended globbing syntax
setopt extended_glob 

# Record timestamp of command in HISTFILE
setopt extended_history

# Delete duplicates first when HISTFILE size exceeds HISTSIZE
setopt hist_expire_dups_first

# Ignore duplicated commands history list
setopt hist_ignore_dups

# Ignore commands that start with space
setopt hist_ignore_space

# Show command with history expansion to user before running it
setopt hist_verify

# Append history to the history file (no overwriting)
setopt append_history 

# Add commands to HISTFILE in order of execution
setopt inc_append_history

# Share command history data
setopt share_history          