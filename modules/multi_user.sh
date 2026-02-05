#!/bin/bash

USER_DB="data/users.db"
mkdir -p data
touch $USER_DB

clear
echo "=============================="
echo "      👥 USER MANAGER"
echo "=============================="
echo
echo "1. Tambah User Kasir"
echo "2. Lihat User"
echo "3. Login Kasir"
echo "0. Keluar"
echo

read -p "Pilih: " pil

case $pil in

1)
read -p "Username baru: " u
read -s -p "Password: " p
echo
echo "$u|$p" >> $USER_DB
echo "✅ User ditambahkan"
;;

2)
echo
echo "Daftar kasir:"
cut -d"|" -f1 $USER_DB
;;

3)
read -p "Username: " u
read -s -p "Password: " p
echo

if grep -q "^$u|$p$" $USER_DB; then
  echo "✅ Login berhasil!"
  echo "$u login $(date)" >> data/login.log
else
  echo "❌ Login gagal!"
fi
;;

0) exit ;;

*)
echo "Pilihan salah"
;;

esac

echo
read -p "Enter..."
