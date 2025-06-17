#!/bin/bash

# Restore script for CARPYGAME directory
# Restores files from a specified backup

if [ $# -ne 1 ]; then
    echo "Usage: $0 <backup_directory>"
    echo "Available backups:"
    ls -1 /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/backup_cleanup/ | grep "backup_"
    exit 1
fi

BACKUP_DIR="$1"

if [ ! -d "$BACKUP_DIR" ]; then
    echo "Error: Backup directory $BACKUP_DIR does not exist"
    exit 1
fi

echo "Restoring from $BACKUP_DIR..."

# Restore main files
cp "$BACKUP_DIR/car_game.py" /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/
cp "$BACKUP_DIR/requirements.txt" /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/
cp "$BACKUP_DIR/bgm.jpg" /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/
cp "$BACKUP_DIR/highscores.json" /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/
cp "$BACKUP_DIR/coins.json" /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/
cp "$BACKUP_DIR/README.md" /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/

# Restore directories
cp -r "$BACKUP_DIR/fonts/"* /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/fonts/
cp -r "$BACKUP_DIR/sounds/"* /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/sounds/

echo "Restore complete."
