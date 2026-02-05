#!/bin/bash

# ===== WARNA =====
GREEN="\033[1;92m"
WHITE="\033[0m"

# ===== LOGO =====
logo(){
clear
echo -e "$GREEN"
echo "╔════════════════════════════════╗"
echo "║  ██████╗  █████╗ ██╗   ██╗     ║"
echo "║  ██╔══██╗██╔══██╗╚██╗ ██╔╝     ║"
echo "║  ██████╔╝███████║ ╚████╔╝      ║"
echo "║  ██╔═══╝ ██╔══██║  ╚██╔╝       ║"
echo "║  ██║     ██║  ██║   ██║        ║"
echo "║  ╚═╝     ╚═╝  ╚═╝   ╚═╝        ║"
echo "║     PAYMENT SYSTEM PRO MAX     ║"
echo "╚════════════════════════════════╝"
echo -e "$WHITE"
}

# ===== MENU LOOP =====
while true
do

logo

echo "=========== DASHBOARD ==========="
echo
echo " 1. Transaksi Baru"
echo " 2. Lihat Log Transaksi"
echo " 3. Ringkasan Harian"
echo " 4. Laporan Bulanan"
echo " 5. Cari Transaksi"
echo " 6. Export CSV"
echo " 7. Backup Data"
echo " 8. Restore Data"
echo " 9. Settings"
echo "10. Activity Log"
echo "11. User Management"
echo "12. Auto Backup"
echo "13. QR Payment"
echo "14. Scan barang"
echo " 0. Keluar"
echo

read -p "Pilih menu: " m

case $m in
1) bash modules/payment.sh ;;
2) bash modules/logs_viewer.sh ;;
3) bash modules/daily_summary.sh ;;
4) bash modules/monthly_report.sh ;;
5) bash modules/search_transaction.sh ;;
6) bash modules/export_csv.sh ;;
7) bash modules/backup.sh ;;
8) bash modules/restore.sh ;;
9) bash modules/settings.sh ;;
10) bash modules/activity_log.sh ;;
11) bash modules/multi_user.sh ;;
12) bash modules/auto_backup.sh ;;
13) bash modules/qr_payment.sh ;;
13) bash modules/scan_barang.sh
0) exit ;;
*) echo "Menu tidak valid"; sleep 1 ;;
esac

done
