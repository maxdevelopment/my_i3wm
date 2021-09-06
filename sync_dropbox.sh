#!/bin/bash

ORG_DIR=/home/raw/MyDropbox
REMOTE=MyDropbox

rclone sync $ORG_DIR $REMOTE:
notify-send -u normal -i '/usr/share/icons/hicolor/24x24/apps/dropbox.png' 'Dropbox' 'MyDropbox folder has been synced'
