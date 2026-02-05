#!/bin/bash

CONFIG="config.cfg"

mkdir -p data

# Default config jika belum ada
if [ ! -f "$CONFIG" ]; then
echo "STORE_NAME=PAYMENT STORE" > $CONFIG
echo "CURRENCY=Rp" >> $CONFIG
fi

source $CONFIG

while true
do
clear
echo "=============================="
echo "        ⚙ SETTINGS"
echo "=============================="
echo
echo "1. Ubah Nama Toko"
echo "2. Ubah Mata Uang"
echo "3. Lihat Config"
echo "0. Kembali"
echo
read -p "Pilih : " pil

case $pil in

1)
read -p "Nama toko baru: " newname
sed -i "s/STORE_NAME=.*/STORE_NAME=\"$newname\"/" $CONFIG
echo "Berhasil diubah!"
sleep 1
;;

2)
read -p "Mata uang (contoh Rp): " cur
sed -i "s/CURRENCY=.*/CURRENCY=\"$cur\"/" $CONFIG
echo "Berhasil diubah!"
sleep 1
;;

3)
echo
cat $CONFIG
read -p "Enter..."
;;

0)
break
;;

*)
echo "Pilihan salah!"
sleep 1
;;

esac

done
