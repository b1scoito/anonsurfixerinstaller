#!/bin/bash

Black='\033[1;30m'
Red='\033[1;31m'
Green='\033[1;32m'
Yellow='\033[1;33m'
Blue='\033[1;34m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
White='\033[1;37m'

echo -e "${Red}Greetz: V4p0r, D3z3n0v3, B33ck, Adolfinho, all friends.."

echo -e "${Red}---------------------------------------------------------"

echo -e "${Red}AnonSurf Fixer & Installer - By: Biscoitao"
sleep 3.5
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo
echo -e "${Green}Type your passwd here:"
echo
#Uninstall Tor
sudo apt-get purge tor -y
clear
#Install Tor
sudo apt-get install tor -y
clear
#Install AnonSurf
sudo apt-get install anonsurf -y
clear
#Install Nscd, Resolvconf, Dnsmasq
sudo apt-get install nscd -y && sudo apt-get install resolvconf -y && sudo apt-get install dnsmasq -y
clear
#Fix Problems
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
clear
#Execute Tor
sudo /usr/sbin/tor
clear
#Start AnonSurf, and show your ip
sudo anonsurf start
sudo anonsurf myip
echo -e "${Cyan}AnonSurf Activated!"
sleep 3
echo -e "${Cyan}AnonSurf Fixed"
sleep 3
sleep 10 &
PID=$!
i=1
sp="/-\|"
echo -n ' '
while [ -d /proc/$PID ]
do
  printf "\b${sp:i++%${#sp}:1}"
done
echo -e "${Red}Tor -- > Installed"
sleep 6
echo -e "${Red}AnonSurf -- > Installed"
sleep 6
echo -e "${Red}Nscd -- > Installed"
sleep 6
echo -e "${Red}Resolvconf -- > Installed"
sleep 6
echo -e "${Red}Dnsmasq -- > Installed"
sleep 4
echo "Checking Complete!"
sleep 2
echo -e "${Purple}All the work has done, now go dance with ANONYMOUS!"
sleep 4
echo -ne "${White}You want to stop anonsurf now? (y/n):" && read resposta
echo
echo
if [ $resposta == "y" ]
then
	sudo anonsurf stop && echo "Thanks For Using, Bae."
elif [ $resposta == "n" ]
then
	echo "Closing, keep anonymous!, To deactivate type sudo anon stop in your terminal! Bae!"
        exit 0
elif [ $resposta != "y" ]
then
	exit 0
elif [ $resposta != "n" ]
then
	exit 0
fi

echo ".----------------------------------------------."
