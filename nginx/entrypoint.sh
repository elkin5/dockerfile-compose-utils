#!/bin/sh
# Add local appuser
# Either use the LOCAL_USER_ID and LOCAL_GROUP_ID if passed in at runtime or
# fallback

USER_ID=1000
ROUP_ID=1000

echo "Starting with UID : $USER_ID"

addgroup -g $GROUP_ID appuser && adduser -s /bin/bash -S -G appuser -u $USER_ID appuser
export HOME=/home/user

chown -R appuser:appuser /var/log/nginx
chmod -R 750 /var/log/nginx
chown -R appuser:appuser /var/cache/nginx

exec /sbin/su-exec appuser "$@"
