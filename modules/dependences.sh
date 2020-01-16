#!/bin/sh

# ===================================================================
# Install dependence
# ===================================================================

Install_dependence()
{

echo "\n$PURPLE☐ Updating package list ... $ENDC\n"
apt update -y;
echo "\n$PURPLE☐ Check if Tor installed on this computer $ENDC\n"
apt install tor -y; 
echo "\n$PURPLE☐ Check if macchanger installed on this computer $ENDC\n"
apt install macchanger -y;
echo "\n$PURPLE☐ Check if bleachbit installed on this computer $ENDC\n"
apt install bleachbit -y; 
apt-get -f install # resolves anything else in a broken state

}

