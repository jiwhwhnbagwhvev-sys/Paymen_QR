#!/bin/bash

LOG="data/transactions.log"

mkdir -p data
touch "$LOG"

clear
echo "=============================="
echo "     🔍 CARI TRANSAKSI"
echo "=============================="
echo
echo "1. Cari berdasarkan Nama"
echo "2. Cari berdasarkan Tanggal"
echo "0. Keluar"
echo

read -p "Pilih: " pil

case $pil in

1)
read -p "Masukkan nama: " nama
echo
grep -i "$nama" "$LOG" || echo "Tidak ditemukan"
;;

2)
read -p "Masukkan tanggal (YYYY-MM-DD): " tgl
echo
grep "$tgl" "$LOG" || echo "Tidak ditemukan"
;;

0)
exit
;;

*)
echo "Pilihan salah"
;;

esac

echo
read -p "Enter..."
