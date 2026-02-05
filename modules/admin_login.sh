#!/bin/bash

ADMIN_USER="admin"
ADMIN_PASS="owner123"

clear
echo "=============================="
echo "        ADMIN LOGIN"
echo "=============================="
echo

read -p "Username Admin : " user
read -s -p "Password Admin : " pass
echo

if [[ "$user" == "$ADMIN_USER" && "$pass" == "$ADMIN_PASS" ]]; then

    echo
    echo "✅ LOGIN ADMIN BERHASIL"
    sleep 1

    # Masuk ke mode owner
    while true
    do
        clear
        echo "====== OWNER MODE ======"
        echo "1. Lihat Semua Transaksi"
        echo "2. Total Pendapatan"
        echo "0. Keluar"
        echo

        read -p "Pilih: " p

        case $p in

        1)
        echo
        cat transactions.db 2>/dev/null || echo "Belum ada data"
        read -p "Enter..."
        ;;

        2)
        total=$(awk -F"|" '{sum+=$3} END {print sum}' transactions.db 2>/dev/null)
        echo
        echo "TOTAL PENDAPATAN: Rp ${total:-0}"
        read -p "Enter..."
        ;;

        0) exit ;;
        *) echo "Salah pilih"; sleep 1;;

        esac
    done

else
    echo
    echo "❌ Login admin gagal!"
    sleep 2
fi
