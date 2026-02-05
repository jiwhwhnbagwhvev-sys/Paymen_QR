#!/bin/bash

DB="transactions.db"

clear
echo "=============================="
echo "   STATISTIK PENJUALAN HARIAN"
echo "=============================="
echo

if [ ! -f "$DB" ]; then
  echo "Belum ada data transaksi."
  exit
fi

hari_ini=$(date +"%d-%m-%Y")

# Filter transaksi hari ini
data_hari_ini=$(grep "$hari_ini" "$DB")

if [ -z "$data_hari_ini" ]; then
  echo "Belum ada transaksi hari ini."
  exit
fi

# Jumlah transaksi
jumlah=$(echo "$data_hari_ini" | wc -l)

# Total pendapatan
total=$(echo "$data_hari_ini" | awk -F"|" '{sum+=$3} END {print sum}')

# Rata-rata
rata=$((total/jumlah))

echo "Tanggal        : $hari_ini"
echo "Jumlah Transaksi : $jumlah"
echo "Total Pendapatan: Rp $total"
echo "Rata-rata Transaksi: Rp $rata"
echo
echo "=============================="
echo

read -p "Enter untuk kembali..."
