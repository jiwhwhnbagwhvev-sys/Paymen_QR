#!/bin/bash

clear
echo "==============================="
echo "       QR PAYMENT SYSTEM"
echo "==============================="
echo

# Cek qrencode
if ! command -v qrencode &> /dev/null
then
    echo "Install qrencode dulu..."
    pkg install qrencode -y
fi

read -p "Nama Penerima : " nama
read -p "Metode (DANA/GOPAY/SHOPEEPAY): " metode
read -p "Nominal : Rp " nominal

data="PAYMENT|$nama|$metode|$nominal|$(date +%s)"

file="qr_${nama}.png"

qrencode -o "$file" "$data"

echo
echo "QR berhasil dibuat ✔"
echo "File: $file"
echo
echo "Silakan scan QR ini untuk info pembayaran."
echo
