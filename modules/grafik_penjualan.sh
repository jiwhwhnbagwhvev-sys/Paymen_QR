#!/bin/bash

DB="transactions.db"

clear
echo "=============================="
echo "     GRAFIK PENJUALAN"
echo "=============================="
echo

if [ ! -f "$DB" ]; then
  echo "Belum ada data transaksi."
  exit
fi

echo "Grafik Total Penjualan per Hari"
echo

# Ambil tanggal & total
awk -F"|" '
{
  split($4, t, " ")
  tanggal=t[1]
  total[tanggal]+=$3
}
END{
  for (d in total)
    print d "|" total[d]
}' "$DB" | sort | while IFS="|" read tgl total
do

  bar=""
  jumlah=$((total/1000)) # 1 blok = 1000

  for ((i=0;i<jumlah;i++))
  do
    bar="${bar}█"
  done

  printf "%s | %s (Rp %s)\n" "$tgl" "$bar" "$total"

done

echo
read -p "Enter untuk kembali..."
