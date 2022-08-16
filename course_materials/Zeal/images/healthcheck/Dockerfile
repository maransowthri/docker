FROM busybox

HEALTHCHECK --interval=5s --timeout=30s --start-period=5s --retries=3 CMD [ "ping", "-cl", "google.com" ]