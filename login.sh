#!/bin/bash

# ===== CONFIG LOGIN =====
USERNAME="Rio_paymens2026"
PASSWORD="paymens_work_2026"
MAIN="./main.sh"

# ===== WARNA =====
BLUE="\033[1;96m"
RED="\033[1;31m"
GREEN="\033[1;32m"
WHITE="\033[0m"

# ===== LOGO =====
logo(){
clear
echo -e "$BLUE"
echo "╔══════════════════════════════╗"
echo "║  ██████╗  █████╗ ██╗   ██╗   ║"
echo "║  ██╔══██╗██╔══██╗╚██╗ ██╔╝   ║"
echo "║  ██████╔╝███████║ ╚████╔╝    ║"
echo "║  ██╔═══╝ ██╔══██║  ╚██╔╝     ║"
echo "║  ██║     ██║  ██║   ██║      ║"
echo "║  ╚═╝     ╚═╝  ╚═╝   ╚═╝      ║"
echo "║       RIO PAYMENT LOGIN      ║"
echo "╚══════════════════════════════╝"
echo -e "$WHITE"
}

# ===== LOGIN LOOP =====
while true
do

logo

echo "🔐 SILAKAN LOGIN"
echo

read -p "Username : " user
read -s -p "Password : " pass
echo

if [[ "$user" == "$USERNAME" && "$pass" == "$PASSWORD" ]]; then
    
    echo -e "$GREEN"
    echo "✅ LOGIN BERHASIL!"
    echo "Selamat datang $user"
    echo -e "$WHITE"
    sleep 1.5

    exec bash "$MAIN"
    exit

else
    echo -e "$RED"
    echo "❌ Username atau Password salah!"
    echo "Akses ditolak!"
    echo -e "$WHITE"
    sleep 2
fi

done
