module.exports = {
  defaultBrowser: "Safari",
  handlers: [
    {
      // Open any link clicked in Slack in Chrome
      match: ({ sourceBundleIdentifier }) =>
        sourceBundleIdentifier === "com.tinyspeck.slackmacgap",
      browser: "Firefox"
    },
    {
     // Open any link clicked in Zoom in Chrome
      match: ({ sourceBundleIdentifier }) =>
        sourceBundleIdentifier === "us.zoom.xos",
      browser: "Firefox"
    }
  ]
};
