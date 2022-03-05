#!/bin/bash

#The source to backup, i have chosen the daily backup directory of 
backup_files="/mnt/backup/daily"

#The destination where to backup to the chosen source
dest="/mnt/backup"


#marking the start of the backup operation
echo "Weekly Backing up $backup_files to $dest/weekly.tgz"
date
echo

# Backup the files using tar.
tar czf $dest/weekly.tgz $backup_files
#c: to create the archive
#z: to use the gzip utility
#f: output to an archive file

#marking the end of the buckup
echo
echo "Weekly Backup finished"
date

#Long listing of files in $dest to check file sizes.
ls -lh $dest
#l: long listing
#h: so the size would be readable
