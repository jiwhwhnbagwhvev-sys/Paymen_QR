#!/bin/bash

logo(){
clear
echo -e "\033[1;96m"
echo "╔══════════════════════════════╗"
echo "║  ██████╗  █████╗ ██╗   ██╗   ║"
echo "║  ██╔══██╗██╔══██╗╚██╗ ██╔╝   ║"
echo "║  ██████╔╝███████║ ╚████╔╝    ║"
echo "║  ██╔═══╝ ██╔══██║  ╚██╔╝     ║"
echo "║  ██║     ██║  ██║   ██║      ║"
echo "║  ╚═╝     ╚═╝  ╚═╝   ╚═╝      ║"
echo "║      PAYMENT SYSTEM PRO      ║"
echo "╚══════════════════════════════╝"
echo -e "\033[0m"
}

while true
do

logo

echo "=================================="
echo "      💳 PAYMENT DASHBOARD"
echo "=================================="
echo
echo "1. Transaksi Baru"
echo "2. Lihat Log Transaksi"
echo "3. Ringkasan Harian"
echo "4. Laporan Bulanan"
echo "5. Cari Transaksi"
echo "6. Export CSV"
echo "7. Backup Data"
echo "8. Restore Data"
echo "9. Settings"
echo "10. Activity Log"
echo "0. Keluar"
echo

read -p "Pilih menu: " m

case $m in
1) bash payment.sh ;;
2) bash logs_viewer.sh ;;
3) bash daily_summary.sh ;;
4) bash monthly_report.sh ;;
5) bash search_transaction.sh ;;
6) bash export_csv.sh ;;
7) bash backup.sh ;;
8) bash restore.sh ;;
9) bash settings.sh ;;
10) bash activity_log.sh ;;
0) exit ;;
*)
echo "Menu tidak valid"
sleep 1
;;
esac

done
