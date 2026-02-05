#!/bin/bash

DATA_DIR="data"
BACKUP_DIR="auto_backup"

mkdir -p "$DATA_DIR"
mkdir -p "$BACKUP_DIR"

clear
echo "=============================="
echo "     🔄 AUTO BACKUP"
echo "=============================="
echo

DATE=$(date +"%Y-%m-%d_%H-%M-%S")
FILE="$BACKUP_DIR/backup_$DATE.tar.gz"

if [ "$(ls -A $DATA_DIR)" ]; then
  tar -czf "$FILE" "$DATA_DIR"
  echo "✅ Backup otomatis berhasil!"
  echo "📁 File: $FILE"
else
  echo "❌ Tidak ada data untuk dibackup"
fi

echo
read -p "Enter..."
