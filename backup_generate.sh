#!/bin/bash

####################################
# Author: Sushank Kumar
# Date: 09-06-2023
# Version: v1
# This script will report the AWS usage.
####################################

# set -x

# What to backup. 
backup_files="/home/sushank/Code/Shell-Scripts"

# Where to backup to.
dest="/home/sushank/mount/backup"

# Create archive filename.
day=$(date +%A)                   
hostname=$(hostname -s)
#archive_file="$hostname-$day.tgz"
archive_file="backup_`date +%m-%d-%y`.tar"

# Print start status message.
echo "Backing up $backup_files to $dest/$archive_file"
date
echo

# Backup the files using tar.
tar czf $dest/$archive_file $backup_files

# Print end status message.
echo
echo "Backup finished"
date

# Long listing of files in $dest to check file sizes.
ls -lh $dest

find "/home/sushank/mount/backup" -type f -mtime +5 -exec rm {} \;
