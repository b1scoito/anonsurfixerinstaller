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
	echo -e "${Red} Você está bebado?? Execute em modo root!!"
	echo
	echo
	exit
else
	echo
fi
sleep 0.4
echo -e "${Red}Salves: V4p0r, D3z3n0v3, B33ck, Adolfinho, Bacon, all friends.."
sleep 0.4
echo -e "${Red}---------------------------------------------------------"
sleep 0.4
echo -e "${Red}AnonSurf Consertador & Instalador - By: Biscoitao"
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
    echo -e "${Red}Tor -- > Instalado"
else
    echo -e "${Red}Tor -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install tor -y && sudo apt-get install tor-geoipdb -y
fi
sleep 6
if [ -e $anonsurf ]
then
    echo -e "${Red}AnonSurf -- > Instalado"
else
    echo -e "${Red}AnonSurf -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install anonsurf -y
fi
sleep 6
if [ -e $nscd ]
then
    echo -e "${Red}Nscd -- > Instalado"
else
    echo -e "${Red}Nscd -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install nscd -y
fi
sleep 6
if [ -e $resolvconf ]
then
    echo -e "${Red}Resolvconf -- > Instalado"
else
    echo -e "${Red}Resolvconf -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install resolvconf -y
fi
sleep 6
if [ -e $dnsmasq ]
then
    echo -e "${Red}Dnsmasq -- > Instalado"
else
    echo -e "${Red}Dnsmasq -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install dnsmasq -y
fi
sleep 6
if [ -e $nload ]
then
    echo -e "${Red}Nload -- > Instalado"
else
    echo -e "${Red}Nload -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install nload -y
fi
echo "Checamento completo!"
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
echo -e "${Cyan}AnonSurf Ativado!"
sleep 1
echo -e "${Cyan}AnonSurf Consertado!"
sleep 2.1
echo -e "${Purple}Todo trabalho foi feito, agora vamos dançar com o anonymous!"
sleep 3.2
read -r -p "Você deseja parar o anonsurf agora? [dstat/y] " response
case "$response" in
    [yY][eE][sS]|[yY]) 
        sudo anonsurf stop && echo -e "${Purple}Obrigado por usar, adeus."
        ;;
    *)
        sudo nload
        ;;
esac

echo -e "${Purple}.----------------------------------------------."
