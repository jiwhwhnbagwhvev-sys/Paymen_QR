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
echo "14. WiFi Scan"
echo "15. Network Booster"
echo "16. CPU Tweak"
echo "17. GPU Tweak"
echo "18. RAM Cleaner"
echo "19. Thermal Off"
echo "20. App Freezer"
echo "21. App Unfreeze"
echo "22. SELinux Status"
echo "23. SELinux Permissive"
echo "24. Root Hide"
echo "25. Service Manager"
echo "26. Reboot Menu"
echo "27. Storage Boost"
echo "28. Package Manager"
echo "29. Logcat Monitor"
echo "30. Kernel Info"
echo "31. DNS Benchmark"
echo "32. Command AI"
echo "33. Smart System Monitor"
echo "34. Security Watch"
echo "35. Local Web Lab"
echo "36. Dark Coding Lab"
echo "37. Game Account Security Pro"
echo "38. WA AutoBot"
echo "39. Hecking WhatsApp"
echo "40. Kapal Radar"
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
14) bash modules/wifi_scan.sh ;;
15) bash modules/network_boost.sh ;;
16) bash modules/cpu_tweak.sh ;;
17) bash modules/gpu_tweak.sh ;;
18) bash modules/ram_cleaner.sh ;;
19) bash modules/thermal_off.sh ;;
20) bash modules/app_freezer.sh ;;
21) bash modules/app_unfreeze.sh ;;
22) bash modules/selinux_status.sh ;;
23) bash modules/selinux_permissive.sh ;;
24) bash modules/hide_root_basic.sh ;;
25) bash modules/service_manager.sh ;;
26) bash modules/reboot_menu.sh ;;
27) bash modules/storage_boost.sh ;;
28) bash modules/pkg_manager.sh ;;
29) bash modules/logcat_monitor.sh ;;
30) bash modules/kernel_tweak.sh ;;
31) bash modules/dns_benchmark.sh ;;
32) bash modules/command_ai.sh ;;
33) bash modules/smart_monitor.sh ;;
34) bash modules/security_watch.sh ;;
35) bash modules/web_lab.sh ;;
36) bash modules/dark_coding_lab.sh ;;
37) bash modules/game_account_security_pro.sh ;;
38) bash modules/wa_autobot.sh ;;
39) bash modules/View_chatting_wa.sh ;;
40) bash modules/kapal-radar-v3.sh ;;
0) exit ;;
*) echo "Menu tidak valid"; sleep 1 ;;
esac

done
