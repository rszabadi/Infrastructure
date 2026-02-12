## Automation
- upgrade.sh runs weekly via cron on all VMs
- Logs stored in upgrade.log for inspection

#!/bin/bash

PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

LOG="$HOME/upgrade.log"

echo "==== SYSTEM UPGRADE $(date) ====" >> $LOG
sudo apt update >> $LOG 2>&1
sudo apt upgrade -y >> $LOG 2>&1
sudo apt autoremove -y >> $LOG 2>&1
echo "Upgrade finished" >> $LOG
echo >> $LOG
