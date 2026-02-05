#!/bin/bash

BACKUP_DIR="backup"
DATA_DIR="data"

clear
echo "================================="
echo "        ♻ RESTORE SYSTEM"
echo "================================="
echo

if [ ! -d "$BACKUP_DIR" ]; then
  echo "❌ Folder backup tidak ada!"
  exit
fi

echo "📁 Daftar file backup:"
echo "-----------------------"
ls $BACKUP_DIR
echo

read -p "Masukkan nama file backup: " FILE

if [ -f "$BACKUP_DIR/$FILE" ]; then
  mkdir -p $DATA_DIR
  tar -xzf "$BACKUP_DIR/$FILE" -C .
  echo
  echo "✅ Restore berhasil!"
else
  echo
  echo "❌ File tidak ditemukan!"
fi

echo
read -p "Enter untuk kembali..."
