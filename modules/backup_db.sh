#!/bin/bash

DB="transactions.db"
BACKUP_DIR="backup_db"

mkdir -p "$BACKUP_DIR"

clear
echo "=============================="
echo "        BACKUP DATA"
echo "=============================="
echo
echo "1. Backup Sekarang"
echo "2. Lihat File Backup"
echo "0. Keluar"
echo

read -p "Pilih: " pilih

case $pilih in

1)
if [ ! -f "$DB" ]; then
  echo "Database belum ada."
  exit
fi

tanggal=$(date +"%Y-%m-%d_%H-%M-%S")
cp "$DB" "$BACKUP_DIR/backup_$tanggal.db"

echo
echo "✅ Backup berhasil!"
echo "📁 Disimpan di: $BACKUP_DIR"
;;

2)
echo
echo "Daftar Backup:"
ls "$BACKUP_DIR"
;;

0) exit ;;

*)
echo "Pilihan salah"
;;

esac

echo
read -p "Enter untuk kembali..."
