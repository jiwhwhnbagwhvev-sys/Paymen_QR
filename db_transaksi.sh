#!/bin/bash

DB="database_transaksi.txt"

# Buat DB kalau belum ada
touch $DB

tambah_transaksi() {
    echo "$1|$2|$3|$(date '+%d-%m-%Y %H:%M')" >> $DB
}

lihat_transaksi() {
    echo "==== RIWAYAT TRANSAKSI ===="
    cat $DB
    echo
}

total_pendapatan() {
    total=0
    while IFS="|" read nama metode jumlah tanggal
    do
        total=$((total+jumlah))
    done < $DB

    echo "TOTAL PENDAPATAN: Rp $total"
}

case $1 in

add)
tambah_transaksi "$2" "$3" "$4"
;;

lihat)
lihat_transaksi
;;

total)
total_pendapatan
;;

*)
echo "Mode salah"
;;

esac
