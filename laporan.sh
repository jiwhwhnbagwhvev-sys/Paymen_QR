#!/bin/bash

DATA="transaksi.txt"

clear
echo -e "\033[1;96m=== LAPORAN KASIR ===\033[0m"
echo

# Cek file ada atau tidak
if [ ! -f "$DATA" ]; then
  echo "Belum ada transaksi."
  exit
fi

echo "📄 DAFTAR TRANSAKSI:"
echo "--------------------------------"

cat "$DATA"

echo "--------------------------------"

# Hitung total pendapatan
TOTAL=0

while IFS='|' read -r tgl nama nominal
do
  uang=$(echo $nominal | tr -dc '0-9')
  TOTAL=$((TOTAL + uang))
done < "$DATA"

echo
echo -e "\033[1;32m💰 TOTAL PENDAPATAN: Rp $TOTAL\033[0m"
echo
