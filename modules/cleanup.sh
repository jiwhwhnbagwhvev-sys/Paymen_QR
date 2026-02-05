#!/bin/bash

TMP_DIR="tmp"
LOG_DIR="logs"

clear
echo "================================="
echo "      🧹 CLEANUP SYSTEM"
echo "================================="
echo

echo "[1] Hapus file sementara"
echo "[2] Hapus log lama (7+ hari)"
echo "[0] Kembali"
echo

read -p "Pilih: " p

case $p in

1)
  rm -rf $TMP_DIR/*
  echo "✅ File sementara dibersihkan"
  ;;

2)
  find $LOG_DIR -type f -mtime +7 -delete
  echo "✅ Log lama dihapus"
  ;;

0)
  exit
  ;;

*)
  echo "Pilihan salah"
  ;;
esac

echo
read -p "Enter untuk kembali..."
