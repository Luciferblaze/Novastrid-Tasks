#! /bin/bash

SOURCE_DIR="/home/user/app"
BACKUP_DIR="/backup"
RETENTION_DAYS=7
DATE=$(date + "%Y-%m-%d")
BACKUP_FILE="$BACKUP_DIR/app-backup-$DATE.tar.gz"
NEEDED_CMDS=(tar gzip)


#check_dependencies

for cmd in "${NEEDED_CMDS[@]}"; do
    if ! command -v "$cmd" >/dev/null; then
       echo "ERROR: $cmd is not installed"
       exit 1
    fi
done

#Backup

mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_FILE" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "BACKUP DONE: $BACKUP_FILE"
else
    echo "BACKUP FAILED"
    exit 1
fi

#delete_old_ones

find "$BACKUP_DIR -name "app-backup-*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \;
echo "old backup files are deleted"












