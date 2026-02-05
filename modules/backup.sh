#!/bin/bash

DATA_DIR="data"
BACKUP_DIR="backup"

mkdir -p $BACKUP_DIR

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

clear
echo "================================="
echo "        💾 BACKUP SYSTEM"
echo "================================="
echo

if [ -d "$DATA_DIR" ]; then
  tar -czf "$FILE" "$DATA_DIR"
  echo "✅ Backup berhasil!"
  echo "📁 File: $FILE"
else
  echo "❌ Folder data tidak ditemukan"
fi

echo
read -p "Enter untuk kembali..."
