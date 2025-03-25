#!/bin/sh

echo "Installing inotify-tools and rsync..."
apk add --no-cache inotify-tools rsync

echo "Starting file sync..."
sh /var/www/scripts/sync_web.sh &
exec php-fpm