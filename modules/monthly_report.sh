#!/bin/bash

LOG="data/transactions.log"

mkdir -p data
touch "$LOG"

clear
echo "=============================="
echo "     📊 LAPORAN BULANAN"
echo "=============================="
echo

read -p "Masukkan bulan (YYYY-MM): " BULAN

DATA=$(grep "$BULAN" "$LOG")

if [ -z "$DATA" ]; then
  echo "Tidak ada transaksi di bulan ini."
  exit
fi

COUNT=$(echo "$DATA" | wc -l)
TOTAL=$(echo "$DATA" | awk -F'|' '{sum+=$4} END {print sum+0}')

echo
echo "Bulan            : $BULAN"
echo "Jumlah Transaksi : $COUNT"
echo "Total Pemasukan  : Rp $TOTAL"
echo
echo "----- Detail -----"
echo "$DATA"

echo
read -p "Enter..."
