#!/bin/sh

# ===================================================================
# Copy hostname
# ===================================================================

hostname(){

cat /etc/hostname > /etc/hostname.bak
echo "\n$GREEN☑$ENDC hostname checked"

}