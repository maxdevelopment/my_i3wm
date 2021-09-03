#!/bin/bash

ORG_DIR=/home/raw/MyDropbox
REMOTE=MyDropbox

rclone sync $ORG_DIR $REMOTE:
notify-send 'Dropbox' 'MyDropbox folder has been synced'
