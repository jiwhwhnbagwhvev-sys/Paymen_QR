#!/bin/bash

DB="transactions.db"

clear
echo "================================="
echo "      📤 EXPORT REPORT"
echo "================================="
echo

if [ ! -f "$DB" ]; then
  echo "Database transaksi belum ada!"
  exit
fi

DATE=$(date +%Y-%m-%d)
FILE="report_$DATE.txt"

echo "==== LAPORAN TRANSAKSI ====" > "$FILE"
echo "Tanggal: $DATE" >> "$FILE"
echo "===========================" >> "$FILE"
echo >> "$FILE"

cat "$DB" >> "$FILE"

echo
echo "✅ Laporan berhasil dibuat!"
echo "📄 File: $FILE"
echo

read -p "Enter untuk kembali..."
