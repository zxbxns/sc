#!/bin/bash
# Simpel Change Root For Linux 
# Created t.me/zxbxns
# ================================================

# Clear
clear
rm -f root.sh

# Get Passwd
read -p "Please Input an New Password For Root : " Pass

# Starting Changes To Root
rm -f /etc/ssh/sshd_config
wget -O /etc/ssh/sshd_config script.zxbxns.my.id/sc/sshd
echo -e "$Pass\n$Pass\n"|passwd root &> /dev/null
IPANDA=$(wget -qO- ifconfig.co);

# Successful
clear
echo "Please Save This VPS Account Information"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  • IP ADDRESS = $IPANDA"
echo "  • Username   = root"
echo "  • Password   = $Pass"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "VPS Will Rebooting On 15 Second !!!!!"

rm -f root.sh
sleep 15
reboot
 
