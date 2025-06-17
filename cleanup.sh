#!/bin/bash

# Enhanced cleanup script for CARPYGAME directory
# Keeps only essential files needed to run car_game.py and maintains a single backup

echo "Cleaning up CARPYGAME directory..."

# Define the project root directory
PROJECT_DIR="/mnt/c/Users/ARNAB/OneDrive/Desktop/Hacathon/carpygame"
cd "$PROJECT_DIR"

# Create a timestamp for the backup
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
BACKUP_DIR="$PROJECT_DIR/backup_cleanup/backup_latest"

# Remove old backups but keep the latest one
echo "Removing old backups..."
rm -rf backup_20250617_224115
mkdir -p "$BACKUP_DIR"

# Backup essential files
echo "Creating a fresh backup of essential files..."
cp car_game.py "$BACKUP_DIR/"
cp requirements.txt "$BACKUP_DIR/"
cp bgm.jpg "$BACKUP_DIR/"
cp highscores.json "$BACKUP_DIR/"
cp coins.json "$BACKUP_DIR/"
cp README.md "$BACKUP_DIR/"

# Create directories and copy their contents
mkdir -p "$BACKUP_DIR/fonts"
cp -r fonts/* "$BACKUP_DIR/fonts/"

mkdir -p "$BACKUP_DIR/sounds"
cp -r sounds/* "$BACKUP_DIR/sounds/"

# Remove duplicate directory
echo "Removing duplicate carpygame directory..."
rm -rf carpygame

# Remove old backup files
echo "Removing old backup files..."
rm -f car_game.py.backup

# Keep only the latest backup in backup_cleanup
echo "Cleaning up backup_cleanup directory..."
rm -rf backup_cleanup/backup_20250617_224930
rm -rf backup_cleanup/backup_20250617_225601

echo "Cleanup complete. The following essential files remain:"
ls -la

echo "You can now run the game with: python3 car_game.py"
