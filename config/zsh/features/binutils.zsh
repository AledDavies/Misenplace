# Make sure that the updated command line tools end up at
# the front of the path
if [ -d "$(brew --prefix coreutils)/libexec/gnubin" ]; then
  path=("$(brew --prefix coreutils)/libexec/gnubin" $path)
  export MANPATH="$(brew --prefix coreutils)/libexec/gnuman:${MANPATH}"
fi
