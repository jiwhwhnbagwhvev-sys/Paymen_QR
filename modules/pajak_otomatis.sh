#!/bin/bash

DB="transactions.db"

clear
echo "=============================="
echo "       HITUNG PAJAK"
echo "=============================="
echo

read -p "Nama Pembeli : " nama
read -p "Total Belanja (Rp) : " total

# validasi angka
if ! [[ "$total" =~ ^[0-9]+$ ]]; then
  echo "Total harus angka!"
  exit
fi

pajak=$((total * 10 / 100))
grand=$((total + pajak))

echo
echo "Subtotal : Rp $total"
echo "PPN 10%  : Rp $pajak"
echo "----------------------"
echo "Total Bayar : Rp $grand"
echo

read -p "Simpan transaksi? (y/n): " s

if [[ "$s" == "y" ]]; then
  waktu=$(date "+%Y-%m-%d %H:%M:%S")
  echo "$nama|PAJAK|$grand|$waktu" >> "$DB"
  echo "✅ Transaksi disimpan"
fi

echo
read -p "Enter untuk kembali..."
