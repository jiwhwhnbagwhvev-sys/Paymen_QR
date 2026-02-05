#!/bin/bash

LOG_FILE="data/transactions.log"

clear
echo "================================="
echo "        📜 LOG VIEWER"
echo "================================="
echo

# Buat folder/data jika belum ada
mkdir -p data
touch $LOG_FILE

if [ ! -s "$LOG_FILE" ]; then
  echo "Belum ada transaksi."
else
  nl -w2 -s'. ' "$LOG_FILE"
fi

echo
read -p "Tekan Enter untuk kembali..."
