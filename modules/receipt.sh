#!/bin/bash

DB="transactions.db"
RECEIPT_DIR="receipts"

mkdir -p $RECEIPT_DIR

clear

echo "=== BUAT STRUK DIGITAL ==="
echo

read -p "Nama Pelanggan : " nama
read -p "Metode (DANA/GoPay/ShopeePay) : " metode
read -p "Total Bayar : " total

tanggal=$(date +"%d-%m-%Y")
jam=$(date +"%H:%M:%S")

file="$RECEIPT_DIR/receipt_$(date +%s).txt"

echo "================================" >> $file
echo "         PAYMENT RECEIPT        " >> $file
echo "================================" >> $file
echo "Nama    : $nama" >> $file
echo "Metode  : $metode" >> $file
echo "Total   : Rp $total" >> $file
echo "Tanggal : $tanggal" >> $file
echo "Jam     : $jam" >> $file
echo "================================" >> $file
echo "  TERIMA KASIH TELAH MEMBAYAR  " >> $file
echo "================================" >> $file

# Simpan ke database juga
echo "$nama|$metode|$total|$tanggal $jam" >> $DB

echo
echo "✅ Struk berhasil dibuat!"
echo "📄 Tersimpan di: $file"
echo

read -p "Enter untuk kembali..."
