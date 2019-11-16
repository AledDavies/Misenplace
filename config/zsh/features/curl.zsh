# Add curl to the 'path'
if [ -d "/usr/local/opt/curl/bin" ] ; then
  path=("/usr/local/opt/curl/bin" $path)
fi
