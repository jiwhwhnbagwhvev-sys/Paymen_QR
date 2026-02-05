#!/bin/bash

LOG="data/transactions.log"

mkdir -p data
touch "$LOG"

TODAY=$(date +%Y-%m-%d)

clear
echo "=============================="
echo "     📅 RINGKASAN HARI INI"
echo "=============================="
echo

DATA=$(grep "$TODAY" "$LOG")

if [ -z "$DATA" ]; then
  echo "Belum ada transaksi hari ini."
  exit
fi

COUNT=$(echo "$DATA" | wc -l)

TOTAL=$(echo "$DATA" | awk -F'|' '{sum+=$4} END {print sum+0}')

echo "Tanggal          : $TODAY"
echo "Jumlah Transaksi : $COUNT"
echo "Total Pemasukan  : Rp $TOTAL"
echo
echo "----- Detail -----"
echo "$DATA"

echo
read -p "Enter..."
