#!/bin/bash

BACKUP_DIR="backup"
DATA_DIR="data"
LOG_FILE="$DATA_DIR/transactions.log"

clear
echo "=============================="
echo "     ♻ RESTORE BACKUP"
echo "=============================="
echo

mkdir -p "$BACKUP_DIR"
mkdir -p "$DATA_DIR"

files=($BACKUP_DIR/*.log)

if [ ! -e "${files[0]}" ]; then
  echo "❌ Tidak ada file backup!"
  exit
fi

echo "Daftar backup tersedia:"
echo

select file in "${files[@]}"
do
  if [ -n "$file" ]; then
    cp "$file" "$LOG_FILE"
    echo
    echo "✅ Restore berhasil!"
    echo "Data dikembalikan dari:"
    echo "$file"
    break
  else
    echo "Pilihan salah."
  fi
done

echo
read -p "Tekan enter..."
