#!/bin/bash

DB="transactions.db"

clear
echo "=============================="
echo "     LAPORAN BULANAN"
echo "=============================="
echo

if [ ! -f "$DB" ]; then
  echo "Belum ada data transaksi."
  exit
fi

bulan=$(date +"%m-%Y")

data=$(grep "$bulan" "$DB")

if [ -z "$data" ]; then
  echo "Belum ada transaksi bulan ini."
  exit
fi

jumlah=$(echo "$data" | wc -l)
total=$(echo "$data" | awk -F"|" '{sum+=$3} END {print sum}')

echo "Bulan : $bulan"
echo "Jumlah Transaksi : $jumlah"
echo "Total Pendapatan : Rp $total"
echo

# Simpan laporan
file="laporan_$bulan.txt"

echo "LAPORAN BULAN $bulan" > $file
echo "Jumlah Transaksi : $jumlah" >> $file
echo "Total Pendapatan : Rp $total" >> $file

echo "✅ Laporan disimpan ke $file"
echo
read -p "Enter untuk kembali..."
