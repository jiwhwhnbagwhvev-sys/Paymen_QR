#!/bin/bash

DB="database_transaksi.txt"

clear

echo "=============================="
echo "      PAYMENT RECEIPT"
echo "=============================="
echo

read -p "Nama Pembeli : " nama
read -p "Metode (DANA/GOPAY/SHOPEEPAY): " metode
read -p "Jumlah Bayar : Rp " jumlah

# Buat ID unik
id="TRX$(date +%s)$RANDOM"

tanggal=$(date "+%d-%m-%Y %H:%M")

# Simpan ke database
echo "$nama|$metode|$jumlah|$tanggal|$id" >> $DB

clear

echo "=============================="
echo "       STRUK PEMBAYARAN"
echo "=============================="
echo
echo "ID Transaksi : $id"
echo "Nama         : $nama"
echo "Metode       : $metode"
echo "Jumlah       : Rp $jumlah"
echo "Tanggal      : $tanggal"
echo
echo "STATUS : LUNAS ✔"
echo
echo "=============================="

sleep 2
