#!/bin/bash

DB="transactions.db"

clear
echo "=============================="
echo "      EXPORT LAPORAN"
echo "=============================="
echo
echo "1. Export TXT"
echo "2. Export CSV (Excel)"
echo "0. Keluar"
echo

read -p "Pilih: " pilih

if [ ! -f "$DB" ]; then
  echo "Belum ada data transaksi."
  exit
fi

tanggal=$(date +"%d-%m-%Y_%H-%M")

case $pilih in

1)
file="laporan_$tanggal.txt"

echo "==============================" > $file
echo "      LAPORAN TRANSAKSI" >> $file
echo "==============================" >> $file
echo >> $file

while IFS="|" read nama metode total waktu
do
  echo "Nama   : $nama" >> $file
  echo "Metode : $metode" >> $file
  echo "Total  : Rp $total" >> $file
  echo "Waktu  : $waktu" >> $file
  echo "----------------------------" >> $file
done < $DB

echo "✅ Export TXT berhasil!"
echo "📄 File: $file"
;;

2)
file="laporan_$tanggal.csv"

echo "Nama,Metode,Total,Waktu" > $file

while IFS="|" read nama metode total waktu
do
  echo "$nama,$metode,$total,$waktu" >> $file
done < $DB

echo "✅ Export CSV berhasil!"
echo "📊 Bisa dibuka di Excel"
echo "📄 File: $file"
;;

0) exit ;;

*)
echo "Pilihan salah"
;;

esac

echo
read -p "Enter untuk kembali..."
