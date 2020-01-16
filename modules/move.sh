#!/bin/sh

# ===================================================================
# Copying files to needed locations
# ===================================================================
#
move_location() { 
echo "\n$PURPLE☐  Copying files to designated locations ... $ENDC\n"
cp secubox /usr/bin/secubox
echo "$GREEN☑$ENDC Status: Done !"
echo "\n$PURPLE☐  chmod-ing files ... ... $ENDC\n"
chmod +x /usr/bin/secubox
echo "$GREEN☑$ENDC Status: Done !"


}