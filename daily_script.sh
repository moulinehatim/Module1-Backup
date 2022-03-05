#!/bin/bash

#The source to backup, i have chosen the whole home directory 
backup_files="/home"

#The destination where to backup to the chosen source
dest="/mnt/backup"


#marking the start of the backup operation
echo "Daily Backing up $backup_files to $dest/daily"
date
echo

rsync -aAX --delete --exclude '*.Trash-1000' $backup_files $dest/daily

#marking the end of the buckup
echo
echo "Daily Backup finished"
date

#Long listing of files in $dest to check file sizes.
ls -lh $dest
#l: long listing
#h: so the size would be readable