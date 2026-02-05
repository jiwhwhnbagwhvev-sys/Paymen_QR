#!/bin/bash

DB="transactions.db"

clear

echo "=================================="
echo "      📊 PAYMENT DASHBOARD"
echo "=================================="
echo

# Kalau belum ada database
if [ ! -f "$DB" ]; then
  echo "Belum ada transaksi."
  exit
fi

TODAY=$(date +%Y-%m-%d)

# Hitung data hari ini
TOTAL_TRX=$(grep "$TODAY" "$DB" | wc -l)

TOTAL_INCOME=$(grep "$TODAY" "$DB" | awk -F'|' '{sum+=$4} END {print sum+0}')

if [ "$TOTAL_TRX" -gt 0 ]; then
  AVG=$(echo "$TOTAL_INCOME / $TOTAL_TRX" | bc)
else
  AVG=0
fi

echo "📅 Tanggal : $TODAY"
echo
echo "🧾 Total Transaksi : $TOTAL_TRX"
echo "💰 Total Pemasukan : Rp $TOTAL_INCOME"
echo "📈 Rata-rata       : Rp $AVG"
echo
echo "=================================="
read -p "Enter untuk kembali..."
