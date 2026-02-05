#!/bin/bash

LOG="data/transactions.log"

mkdir -p data
touch $LOG

clear
echo "=============================="
echo "     📊 LAPORAN TRANSAKSI"
echo "=============================="
echo

if [ ! -s "$LOG" ]; then
echo "Belum ada transaksi."
exit
fi

TOTAL=0
COUNT=0

echo "Daftar Transaksi:"
echo "-------------------"

while IFS= read -r line
do
echo "$line"

# ambil angka di akhir baris
amount=$(echo "$line" | grep -o '[0-9]\+$')

TOTAL=$((TOTAL + amount))
COUNT=$((COUNT + 1))

done < "$LOG"

echo
echo "=============================="
echo "Jumlah Transaksi : $COUNT"
echo "Total Pemasukan  : Rp $TOTAL"
echo "=============================="

echo
read -p "Tekan enter..."
