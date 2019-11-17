export HOMEBREW_NO_INSECURE_REDIRECT=1
export HOMEBREW_CASK_OPTS=--require-sha
export HOMEBREW_BREWFILE="${MIZ_CONFIG}/homebrew/Brewfile"
export HOMEBREW_BUNDLE_NO_LOCK=1

# Add Homebrew completions to the path
fpath=(/usr/local/share/zsh-completions $fpath)

# Display outdated packages
alias outdated="brew update; brew outdated; brew cask outdated; mas outdated"
# Upgrade outdated packages
alias upgrade='outdated; brew upgrade; brew cask upgrade; mas upgrade; brew cleanup'

# Snapshot and push the Misenplace Brewfile to remote
brew-snapshot() {
    CWD=`pwd`
    cd "${MIZ_HOME}"
    brew bundle dump --force --file="${HOMEBREW_BREWFILE}"
    git add "${HOMEBREW_BREWFILE}"
    git commit -m "Update Brewfile Snapshot"
    git push
    cd "${CWD}"
}

# Pull the remote Brewfile and merge
brew-refresh() {
    CWD=`pwd`
    cd "${MIZ_HOME}"
    git pull
}

# Make sure the current install matches the Brewfile
brew-sync() {
    brew bundle cleanup --force --file="${HOMEBREW_BREWFILE}"
}
