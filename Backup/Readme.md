This scripts creates a compressed backup of logs and deletes backup older than 7 days


1. Backs up '/home/user/app' to '/backup'
2. Creates a '.tar.gz' file with date in its name
3. Deletes backup files older than 7 days
4. Make sures cron, tar, gzips are installed.

chmod +x backup.sh

#set_crontab_at_midnight

crontab -e

0 0 * * * /path_of_the_backup.sh