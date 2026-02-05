#!/bin/bash

while true
do
clear

echo "================================="
echo "        PAYMENT SYSTEM PRO       "
echo "================================="
echo "1. Buat QR Payment"
echo "2. Buat Struk Pembayaran"
echo "3. Cek Data Transaksi"
echo "0. Keluar"
echo "================================="
echo

read -p "Pilih menu : " pilih

case $pilih in

1)
bash qr_payment.sh
;;

2)
bash struk.sh
;;

3)
echo
echo "=== DATA TRANSAKSI ==="
ls struk_*.txt 2>/dev/null
echo
read -p "Tekan enter..."
;;

0)
echo "Keluar..."
exit
;;

*)
echo "Menu tidak ada!"
sleep 1
;;

esac

done
