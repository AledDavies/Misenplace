echo -n "Loading zprofile..."
# Define the OS type here so we can reuse later
export MIZ_OS_TYPE="$(uname)"

if [ $MIZ_OS_TYPE  = "Darwin" ]; then
  eval $($(brew --prefix)/bin/brew shellenv)
fi

echo "done"

