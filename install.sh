#!/bin/bash

Black='\033[1;30m'
Red='\033[1;31m'
Green='\033[1;32m'
Yellow='\033[1;33m'
Blue='\033[1;34m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
White='\033[1;37m'

tor='/usr/bin/tor'
anonsurf='/usr/bin/anonsurf'
nscd='/usr/sbin/nscd'
resolvconf='/usr/lib/resolvconf'
dnsmasq='/usr/sbin/dnsmasq'
nload='/usr/bin/nload'

if [ $(id -u) != 0 ]
then
	echo
	echo
	echo -e "${Red} ARE U DRUNK? Execute as root!!"
	echo
	echo
	exit
else
	echo
fi
sleep 0.4
echo -e "${Red}Greetz: V4p0r, D3z3n0v3, B33ck, Adolfinho, Bacon, all friends.."
sleep 0.4
echo -e "${Red}---------------------------------------------------------"
sleep 0.4
echo -e "${Red}AnonSurf Fixer & Installer - By: Biscoitao"
sleep 3.5
echo
sleep 10 &
PID=$!
i=1
sp="/-\|"
echo -n ' '
while [ -d /proc/$PID ]
do
  printf "\b${sp:i++%${#sp}:1}"
done
echo
echo
if [ -e $tor ]
then
    echo -e "${Red}Tor -- > Installed"
else
    echo -e "${Red}Tor -- > Not Found, installing to you" && sudo apt-get install tor -y && sudo apt-get install tor-geoipdb -y
fi
sleep 6
if [ -e $anonsurf ]
then
    echo -e "${Red}AnonSurf -- > Installed"
else
    echo -e "${Red}AnonSurf -- > Not found, installing to you" && sudo apt-get install anonsurf -y
fi
sleep 6
if [ -e $nscd ]
then
    echo -e "${Red}Nscd -- > Installed"
else
    echo -e "${Red}Nscd -- > Not found, installing to you" && sudo apt-get install nscd -y
fi
sleep 6
if [ -e $resolvconf ]
then
    echo -e "${Red}Resolvconf -- > Installed"
else
    echo -e "${Red}Resolvconf -- > Not found, installing to you" && sudo apt-get install resolvconf -y
fi
sleep 6
if [ -e $dnsmasq ]
then
    echo -e "${Red}Dnsmasq -- > Installed"
else
    echo -e "${Red}Dnsmasq -- > Not found, installing to you" && sudo apt-get install dnsmasq -y
fi
sleep 6
if [ -e $nload ]
then
    echo -e "${Red}Nload -- > Installed"
else
    echo -e "${Red}Nload -- > Not found, installing to you" && sudo apt-get install nload -y
fi
echo "Checking Complete!"
clear
sleep 6
#Fix Problems
echo -e ${Cyan}
sudo apt-get -f -y
clear
#Install Upgrades, Updates
sudo apt-get upgrade -y && sudo apt-get upgrade -y
clear
#Remove tor dirs
sudo update-rc.d -f tor remove
clear
#Kill the tor process
sudo pkill -x tor
#Execute Tor
sudo /usr/sbin/tor
#Start AnonSurf, and show your ip
sudo anonsurf start
sudo anonsurf myip
echo -e "${Cyan}AnonSurf Activated!"
sleep 1
echo -e "${Cyan}AnonSurf Fixed"
sleep 2.1
echo -e "${Purple}All the work has done, now go dance with ANONYMOUS!"
sleep 3.2
read -r -p "Do you want to stop AnonSurf? [dstat/y] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        sudo anonsurf stop && echo -e "${Purple}Thanks For Using, Bae."
        ;;
    *)
        sudo nload
        ;;
esac

echo -e "${Purple}.----------------------------------------------."
