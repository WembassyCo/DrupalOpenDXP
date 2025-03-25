#!/bin/sh

WATCH_DIR="/var/www/data"
TARGET_DIR="/var/www/crm"

echo "Watching $WATCH_DIR for changes..."

# Exclude .git
while true; do
    echo "Syncing files STARTED"
    rsync -av --delete --exclude '.git/' "$WATCH_DIR/" "$TARGET_DIR/"
    echo "Syncing files COMPLETED"
    sleep 1
done
