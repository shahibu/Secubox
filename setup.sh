#!/bin/sh
# This script sets up "anonymous" for Kali Linux.
# 
# ===================================================================
# Import modules
# ===================================================================

# Import base
. modules/import.sh


secubox
check_root
Install_dependence
check_error_exit
move_location
hostname

# Finish
echo "\n$PURPLE☐ Install should be successful $ENDC\n"
echo "You can use secubox by typing secubox into the terminal"
echo "------------------------------"
echo "START: sudo secubox start "
echo "STOP: sudo secubox stop  "
echo "STATUS: sudo secubox status"
echo "UPDATE: sudo secubox update"
echo "------------------------------"
echo "\n$PURPLE☐ Read the info for help to run the script ...$ENDC\n"
echo "Report bugs to https://github.com/keeganjk/kali-anonymous/issues"


