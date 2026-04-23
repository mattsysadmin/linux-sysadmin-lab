#!/bin/bash

# Variables
DATE=$(date +%Y-%m-%d-%H%M)
BACKUP_DIR="/var/backups/wordpress"
WP_DIR="/var/www/html/wordpress"
DB_NAME="wordpress"
DB_USER="wpuser"
DB_PASS="your_password_here"

# Database backup
mysqldump -u $DB_USER -p$DB_PASS $DB_NAME > $BACKUP_DIR/db-$DATE.sql

# Files backup
tar -czf $BACKUP_DIR/files-$DATE.tar.gz $WP_DIR

# Delete backups older than 7 days
find $BACKUP_DIR -type f -mtime +7 -delete

echo "Backup completed: $DATE"