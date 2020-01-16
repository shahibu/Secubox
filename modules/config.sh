#!/bin/sh

# ===================================================================
# Print a message when an error occurs
# ===================================================================
# 
check_error_exit()
{
  echo "\n$PURPLE☐ Configuring Service Tor $ENDC\n"


 if [ ! -e /var/run/tor/tor.pid ]; then 
                service tor start
                 fi

    if grep -q -x 'RUN_DAEMON="yes"' /etc/default/tor >/dev/null
then
    echo "$GREEN☑$ENDC Status: Tor Daemon running"
else
sed -i '12d' /etc/default/tor
sed -i '12 i\RUN_DAEMON="yes"' /etc/default/tor 
echo "$GREEN☑$ENDC Status: Tor Daemon Accept changes"
            exit 1
fi

if grep -q -x '##define virtual network mask' /etc/tor/torrc >/dev/null
then
    echo "$GREEN☑$ENDC Status: ## already added to torrc"
else
 echo "" >> /etc/tor/torrc
 echo "##define virtual network mask" >> /etc/tor/torrc
 echo "$GREEN☑$ENDC Status: ## Successfully added to torrc"
           
fi

if grep -q -x 'VirtualAddrNetwork 10.192.0.0/10' /etc/tor/torrc >/dev/null
then
    echo "$GREEN☑$ENDC Status: VirtualAddrNetwork already added to torrc"
else
 echo "VirtualAddrNetwork 10.192.0.0/10" >> /etc/tor/torrc
 echo "$GREEN☑$ENDC Status: VirtualAddrNetwork has been successfully added to torrc"  
           
fi

if grep -q -x 'AutomapHostsOnResolve 1' /etc/tor/torrc >/dev/null
then
    echo "$GREEN☑$ENDC Status: AutomapHostsOnResolve already added to torrc"
else
 echo "AutomapHostsOnResolve 1" >> /etc/tor/torrc
 echo "$GREEN☑$ENDC Status: AutomapHostsOnResolve has been successfully added to torrc"
           
fi

if grep -q -x 'TransPort 9040' /etc/tor/torrc >/dev/null
then
    echo "$GREEN☑$ENDC Status: TransPort already added to torrc"
else
 echo "TransPort 9040" >> /etc/tor/torrc
 echo "$GREEN☑$ENDC Status: TransPort has been successfully added to torrc"
           
fi

if grep -q -x 'DNSPort 127.0.0.1:53' /etc/tor/torrc >/dev/null
then
    echo "$GREEN☑$ENDC Status: DNSPort already added to torrc"
else
 echo "DNSPort 127.0.0.1:53" >> /etc/tor/torrc
 echo "$GREEN☑$ENDC Status: DNSPort has been successfully added to torrc"
 echo ""
           
fi
 
}