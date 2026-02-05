#!/bin/bash

DB="transactions.db"
BACKUP_DIR="backup_db"

mkdir -p $BACKUP_DIR

menu(){
clear
echo "=============================="
echo "      BACKUP & RESTORE"
echo "=============================="
echo "1. Backup Database"
echo "2. Restore Database"
echo "0. Keluar"
echo
}

backup(){
if [ ! -f "$DB" ]; then
  echo "Database belum ada."
  sleep 2
  return
fi

file="$BACKUP_DIR/backup_$(date +%d%m%Y_%H%M%S).db"

cp "$DB" "$file"

echo
echo "✅ Backup berhasil!"
echo "📁 File: $file"
echo
read -p "Enter..."
}

restore(){
echo
echo "📂 Daftar Backup:"
ls $BACKUP_DIR 2>/dev/null

echo
read -p "Nama file backup: " pilih

if [ -f "$BACKUP_DIR/$pilih" ]; then
  cp "$BACKUP_DIR/$pilih" "$DB"
  echo "✅ Restore berhasil!"
else
  echo "❌ File tidak ditemukan"
fi

sleep 2
}

# LOOP MENU
while true
do
menu
read -p "Pilih: " p

case $p in
1) backup ;;
2) restore ;;
0) exit ;;
*) echo "Salah pilih"; sleep 1;;
esac

done
