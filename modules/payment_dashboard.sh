#!/bin/bash

DB="transactions.db"

# Pastikan database ada
touch $DB

logo(){
clear
echo -e "\033[1;36m"
echo "================================="
echo "        PAYMENT SYSTEM"
echo "================================="
echo -e "\033[0m"
}

buat_qr(){
bash qr_payment.sh
}

lihat_transaksi(){
echo
echo "=== RIWAYAT TRANSAKSI ==="
cat $DB
echo
read -p "Enter untuk kembali..."
}

total_pemasukan(){
echo
echo "=== TOTAL PEMASUKAN ==="

total=$(awk -F"|" '{sum+=$3} END {print sum}' $DB)

echo "Total: Rp $total"
echo
read -p "Enter untuk kembali..."
}

# MENU LOOP
while true
do
logo

echo "1. Buat QR Payment"
echo "2. Lihat Transaksi"
echo "3. Total Pemasukan"
echo "0. Keluar"
echo

read -p "Pilih: " pilih

case $pilih in

1) buat_qr ;;
2) lihat_transaksi ;;
3) total_pemasukan ;;
0) exit ;;
*) echo "Pilihan salah"; sleep 1;;

esac

done
