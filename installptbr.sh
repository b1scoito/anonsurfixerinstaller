#!/bin/bash

Black='\033[1;30m'
Red='\033[1;31m'
Green='\033[1;32m'
Yellow='\033[1;33m'
Blue='\033[1;34m'
Purple='\033[1;35m'
Cyan='\033[1;36m'
White='\033[1;37m'
if [ $(id -u) != 0 ]
then
	echo
	echo
	echo -e "${Red} Você está bebado? Execute em modo ROOT!!"
	echo
	echo
	exit
else
	echo
fi
echo -e "${Red}Salves: V4p0r, D3z3n0v3, B33ck, Adolfinho, Bacon, all friends.."

echo -e "${Red}---------------------------------------------------------"

echo -e "${Red}AnonSurf Resolvedor & Instalador - By: Biscoitao"
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
echo -e "${Blue}"
echo
echo
#Uninstall Tor
sudo apt-get purge tor -y
clear
#Install Tor
sudo apt-get install tor -y
clear
#Install AnonSurf, Nload, tor-geoipdb
sudo apt-get install anonsurf -y && sudo apt-get install nload -y && sudo apt-get install tor-geoipdb
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
echo -e "${Cyan}AnonSurf Ativado!"
sleep 3
echo -e "${Cyan}AnonSurf Consertado!"
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
echo -e "${Red}Tor -- > Instalado"
sleep 6
echo -e "${Red}AnonSurf -- > Instalado"
sleep 6
echo -e "${Red}Nscd -- > Instalado"
sleep 6
echo -e "${Red}Resolvconf -- > Instalado"
sleep 6
echo -e "${Red}Dnsmasq -- > Instalado"
sleep 4
echo "Completo!"
sleep 2
echo -e "${Purple}Todo trabalho foi feito agora vamos dançar com o ANONYMOUS!"
sleep 4
read -r -p "Você deseja parar o anonsurf agora? [dstat/y] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        sudo anonsurf stop && echo "Obrigado por usar adeus!" 
        ;;
    *)
        sudo nload
        ;;
esac

echo ".----------------------------------------------."
