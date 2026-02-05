#!/bin/bash

LOG="data/transactions.log"
CSV="data/transactions.csv"

mkdir -p data
touch $LOG

clear
echo "=============================="
echo "     📤 EXPORT KE CSV"
echo "=============================="
echo

if [ ! -s "$LOG" ]; then
echo "Belum ada transaksi."
exit
fi

echo "Tanggal,Nama,Metode,Jumlah" > $CSV

while IFS= read -r line
do
# Format log:
# 2026-02-01 | Budi | DANA | 15000

date=$(echo "$line" | cut -d'|' -f1 | xargs)
name=$(echo "$line" | cut -d'|' -f2 | xargs)
method=$(echo "$line" | cut -d'|' -f3 | xargs)
amount=$(echo "$line" | cut -d'|' -f4 | xargs)

echo "$date,$name,$method,$amount" >> $CSV

done < "$LOG"

echo
echo "✅ Export berhasil!"
echo "File tersimpan di:"
echo "$CSV"
echo

read -p "Tekan enter..."
