#!/bin/bash

# Backup script for CARPYGAME directory
# Creates a timestamped backup of all essential files

TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="/mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/backup_cleanup/backup_$TIMESTAMP"

echo "Creating backup in $BACKUP_DIR..."
mkdir -p "$BACKUP_DIR"

# Copy essential files
cp /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/car_game.py "$BACKUP_DIR/"
cp /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/requirements.txt "$BACKUP_DIR/"
cp /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/bgm.jpg "$BACKUP_DIR/"
cp /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/highscores.json "$BACKUP_DIR/"
cp /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/coins.json "$BACKUP_DIR/"
cp /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/README.md "$BACKUP_DIR/"

# Create directories and copy their contents
mkdir -p "$BACKUP_DIR/fonts"
cp -r /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/fonts/* "$BACKUP_DIR/fonts/"

mkdir -p "$BACKUP_DIR/sounds"
cp -r /mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame/sounds/* "$BACKUP_DIR/sounds/"

echo "Backup complete. Files saved to $BACKUP_DIR"
