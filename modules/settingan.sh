#!/bin/bash

CONFIG="config.cfg"

# default config kalau belum ada
if [ ! -f "$CONFIG" ]; then
echo "STORE_NAME=MyPayment" > $CONFIG
echo "CURRENCY=Rp" >> $CONFIG
fi

source $CONFIG

clear
echo "=============================="
echo "       ⚙ SETTINGS"
echo "=============================="
echo
echo "1. Ubah Nama Toko"
echo "2. Ubah Mata Uang"
echo "3. Kembali"
echo
read -p "Pilih: " opt

case $opt in

1)
read -p "Nama toko baru: " name
sed -i "s/STORE_NAME=.*/STORE_NAME=\"$name\"/" $CONFIG
echo "✅ Nama toko diubah!"
;;

2)
read -p "Mata uang (contoh: Rp / USD): " cur
sed -i "s/CURRENCY=.*/CURRENCY=\"$cur\"/" $CONFIG
echo "✅ Mata uang diubah!"
;;

3)
exit
;;

*)
echo "Pilihan salah"
;;

esac

echo
read -p "Tekan enter..."
