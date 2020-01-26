# Setup GOPATH
export GOPATH="${MIZ_WORKSPACE_HOME}/go"

# Add GOPATH binaries to the 'path'
if [ -d "${GOPATH}/bin" ] ; then
  path=("${GOPATH}/bin" $path)
fi
