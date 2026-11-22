#!/bin/bash
# ============================================================
# Script  : backup.sh
# Author  : Parisha Bansal
# Roll No : 9306626570
# Purpose : Create a compressed .tar.gz backup of a folder
# Usage   : ./ShellScripts/backup.sh <source-folder>
# ============================================================

BACKUP_DIR="$HOME/DeveloperPortfolio_Backups"
LOG_FILE="$BACKUP_DIR/backup.log"

# ---------- 1. Check that an argument is provided ----------
if [ $# -eq 0 ]; then
    echo "Usage: ./backup.sh <folder>"
    exit 1
fi

SOURCE="$1"

# ---------- 2. Check that the folder exists ----------
if [ ! -d "$SOURCE" ]; then
    echo "Error: Folder '$SOURCE' does not exist."
    exit 1
fi

# ---------- 3. Create the backup folder and archive ----------
mkdir -p "$BACKUP_DIR"

TIMESTAMP=$(date "+%Y-%m-%d_%H-%M-%S")
BACKUP_NAME="backup_${TIMESTAMP}.tar.gz"
BACKUP_PATH="$BACKUP_DIR/$BACKUP_NAME"

SOURCE_ABS=$(cd "$SOURCE" && pwd)
PARENT_DIR=$(dirname "$SOURCE_ABS")
FOLDER_NAME=$(basename "$SOURCE_ABS")

echo "Backing up '$SOURCE_ABS' ..."

if tar -czf "$BACKUP_PATH" -C "$PARENT_DIR" "$FOLDER_NAME"; then
    # ---------- 4. Success message with filename and size ----------
    SIZE=$(du -h "$BACKUP_PATH" | cut -f1)
    echo "Backup created successfully!"
    echo "File : $BACKUP_PATH"
    echo "Size : $SIZE"

    # ---------- 5. Append one line to the log ----------
    echo "$(date "+%Y-%m-%d %H:%M:%S") | SUCCESS | Source: $SOURCE_ABS | File: $BACKUP_NAME | Size: $SIZE" >> "$LOG_FILE"
else
    echo "Error: Backup failed."
    echo "$(date "+%Y-%m-%d %H:%M:%S") | FAILED  | Source: $SOURCE_ABS" >> "$LOG_FILE"
    exit 1
fi
