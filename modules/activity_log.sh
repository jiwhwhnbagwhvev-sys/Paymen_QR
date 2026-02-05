#!/bin/bash

LOG="data/activity.log"
mkdir -p data
touch $LOG

clear
echo "=============================="
echo "      📋 ACTIVITY LOG"
echo "=============================="
echo
echo "1. Lihat Log"
echo "2. Tambah Catatan Log"
echo "0. Keluar"
echo

read -p "Pilih: " pil

case $pil in

1)
echo
if [ ! -s "$LOG" ]; then
  echo "Belum ada aktivitas."
else
  nl -w2 -s'. ' "$LOG"
fi
;;

2)
read -p "Tulis aktivitas: " act
echo "$(date '+%Y-%m-%d %H:%M:%S') | $act" >> $LOG
echo "✅ Aktivitas dicatat"
;;

0)
exit
;;

*)
echo "Pilihan salah"
;;

esac

echo
read -p "Enter..."
