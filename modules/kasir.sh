#!/bin/bash

DATA="transaksi.txt"

logo(){
clear
echo -e "\033[1;96m"
echo "██████╗  █████╗ ██╗   ██╗"
echo "██╔══██╗██╔══██╗╚██╗ ██╔╝"
echo "██████╔╝███████║ ╚████╔╝"
echo "██╔═══╝ ██╔══██║  ╚██╔╝"
echo "██║     ██║  ██║   ██║"
echo "╚═╝     ╚═╝  ╚═╝   ╚═╝"
echo
echo "⚡ TERMINAL KASIR QRIS ⚡"
echo -e "\033[0m"
}

while true
do

logo

read -p "Nama Pembeli : " NAMA
read -p "Total Bayar : Rp " TOTAL

echo
echo "=== SCAN QRIS UNTUK BAYAR ==="
termux-open /storage/emulated/0/qris.png

echo
read -p "Tekan ENTER setelah dibayar..."

echo "$(date) | $NAMA | Rp$TOTAL" >> $DATA

echo
echo -e "\033[1;32mPembayaran dicatat!\033[0m"
sleep 2

done
