#!/bin/bash

DATA_FILE="barang.db"

# ====== AUTO BUAT DATABASE JIKA BELUM ADA ======
if [ ! -f "$DATA_FILE" ]; then
cat > "$DATA_FILE" <<EOF
1001|Indomie Goreng|3500
1002|Aqua Botol|4000
1003|Teh Pucuk|5000
1004|Roti Coklat|7000
1005|Susu Ultra|6500
EOF
fi

GREEN="\033[1;92m"
BLUE="\033[1;94m"
RED="\033[1;31m"
WHITE="\033[0m"

logo(){
clear
echo -e "$BLUE"
echo "=================================="
echo "        SCAN PAYMENT SYSTEM       "
echo "=================================="
echo -e "$WHITE"
}

scan_barang(){
logo
echo -e "${GREEN}Mode Scan Aktif${WHITE}"
echo
read -p "Scan / Input Kode Barang: " kode

hasil=$(grep "^$kode|" $DATA_FILE)

if [ -z "$hasil" ]; then
    echo -e "${RED}Barang tidak ditemukan!${WHITE}"
else
    IFS="|" read id nama harga <<< "$hasil"
    echo
    echo -e "${GREEN}Barang Ditemukan ✔${WHITE}"
    echo "Nama  : $nama"
    echo "Harga : Rp $harga"
fi

echo
read -p "Scan lagi? (y/n): " ulang
[[ $ulang == "y" ]] && scan_barang
}

tambah_barang(){
logo
echo "Tambah Barang Baru"
echo
read -p "Kode  : " id
read -p "Nama  : " nama
read -p "Harga : " harga

echo "$id|$nama|$harga" >> $DATA_FILE

echo -e "${GREEN}Barang berhasil ditambahkan ✔${WHITE}"
sleep 1
}

while true
do
logo
echo "1. Scan Barang"
echo "2. Tambah Barang"
echo "0. Keluar"
echo
read -p "Pilih: " p

case $p in
1) scan_barang ;;
2) tambah_barang ;;
0) exit ;;
*) echo "Salah pilih"; sleep 1 ;;
esac

done
