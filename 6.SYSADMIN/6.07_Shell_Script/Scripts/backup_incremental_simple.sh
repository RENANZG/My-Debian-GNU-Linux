#!/bin/bash

/************************************************************************
* File Name     : backup_incremental_simple.sh
* Description   : Simplified incremental backup using tar.
* Dependencies  : tar
* Invoked By    : cron
* Usage         : bash /backup_incremental_simple.sh
* Author        : Me and the bois
* License       : Free of charge
************************************************************************/
/************************************************************************
* SETTING UP CRON
* To schedule this script to run automatically using cron,
* follow these steps:
* Open the crontab file for editing:
* 	crontab -e
* Add a line to schedule the script. For example, to run the script:
* - Every 30 minutes:
* 	*/30 * * * * /path/to/your/backup_incremental_simple.sh
* - Every hour:
* 	0 * * * * /path/to/your/backup_incremental_simple.sh
* - Every day at midnight:
* 	0 0 * * * /path/to/your/backup_incremental_simple.sh
* - Every Sunday at 8 PM:
* 	0 20 * * 0 /path/to/your/backup_incremental_simple.sh
* - Every Monday at 3 PM:
* 	0 15 * * 1 /path/to/your/backup_incremental_simple.sh
* - Every weekday at noon:
* 	0 12 * * 1-5 /path/to/your/backup_incremental_simple.sh
* - On the 1st of every month at 5 AM:
* 	0 5 1 * * /path/to/your/backup_incremental_simple.sh
* - Every 15th of the month at 6 AM:
* 	0 6 15 * * /path/to/your/backup_incremental_simple.sh
* Special keywords for common intervals
* - @reboot: Run at system startup
* - @hourly: Run every hour
* - @daily: Run every day at midnight
* - @weekly: Run every Sunday at midnight
* - @monthly: Run on the 1st of every month at midnight
* Save and exit the editor. The script will now run at the
* specified intervals.
************************************************************************/

# Define the source and destination directories
source_dir="/path/to/source"
destination_dir="/path/to/backup"

# Create a timestamp for the backup directory
timestamp=$(date +"%Y%m%d%H%M%S")
new_backup_dir="$destination_dir/$timestamp"

# Create the new backup directory
mkdir -p "$new_backup_dir"

# Perform the incremental backup
tar --create --listed-incremental="$destination_dir/latest.snapshot" --file="$new_backup_dir/backup.tar" "$source_dir"

# Update the latest symlink
ln -sfn "$new_backup_dir" "$destination_dir/latest"

# Append timestamp to log file using sed
sed -i '$ a Last backup on: '"$(date "+%Y-%m-%d %H:%M:%S")"'' /var/log/userbackups.log

