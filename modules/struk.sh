#!/bin/bash

clear

read -p "Nama Pembeli : " NAMA
read -p "Total Bayar : Rp " TOTAL

WAKTU=$(date +"%d-%m-%Y %H:%M")

FILE="struk_$NAMA.txt"

echo "============================" > "$FILE"
echo "        STRUK BAYAR         " >> "$FILE"
echo "============================" >> "$FILE"
echo "Nama  : $NAMA" >> "$FILE"
echo "Total : Rp $TOTAL" >> "$FILE"
echo "Waktu : $WAKTU" >> "$FILE"
echo "============================" >> "$FILE"
echo "  Terima kasih sudah bayar  " >> "$FILE"
echo "============================" >> "$FILE"

echo
echo -e "\033[1;32mStruk berhasil dibuat!\033[0m"
echo "File: $FILE"
echo
