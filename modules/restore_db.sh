#!/bin/bash

DB="transactions.db"
BACKUP_DIR="backup_db"

clear
echo "=============================="
echo "      RESTORE DATABASE"
echo "=============================="
echo

if [ ! -d "$BACKUP_DIR" ]; then
  echo "Folder backup tidak ditemukan."
  exit
fi

echo "Daftar file backup:"
echo "----------------------"
ls "$BACKUP_DIR"
echo "----------------------"
echo

read -p "Masukkan nama file backup: " file

if [ ! -f "$BACKUP_DIR/$file" ]; then
  echo "File tidak ditemukan!"
  exit
fi

cp "$BACKUP_DIR/$file" "$DB"

echo
echo "✅ Database berhasil direstore!"
echo "Data kembali seperti backup tersebut."
echo

read -p "Enter untuk kembali..."
