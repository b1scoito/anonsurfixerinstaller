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
sleep 3 &
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
    echo -e "${Red}Tor -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install tor -y > /dev/null && sudo apt-get install tor-geoipdb -y > /dev/null
fi
if [ -e $anonsurf ]
then
    echo -e "${Red}AnonSurf -- > Instalado"
else
    echo -e "${Red}AnonSurf -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install anonsurf -y > /dev/null
fi
if [ -e $nscd ]
then
    echo -e "${Red}Nscd -- > Instalado"
else
    echo -e "${Red}Nscd -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install nscd -y > /dev/null
fi
if [ -e $resolvconf ]
then
    echo -e "${Red}Resolvconf -- > Instalado"
else
    echo -e "${Red}Resolvconf -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install resolvconf -y > /dev/null
fi
if [ -e $dnsmasq ]
then
    echo -e "${Red}Dnsmasq -- > Instalado"
else
    echo -e "${Red}Dnsmasq -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install dnsmasq -y > /dev/null
fi
if [ -e $nload ]
then
    echo -e "${Red}Nload -- > Instalado"
else
    echo -e "${Red}Nload -- > Não achei, estarei fazendo o download para você!" && sudo apt-get install nload -y > /dev/null
fi
echo "Checamento completo!"
#Fix Problems
echo -e ${Cyan}
sudo apt-get -f -y > /dev/null
#Install Upgrades, Updates
sudo apt-get upgrade -y > /dev/null && sudo apt-get upgrade -y > /dev/null
#Remove tor dirs
sudo update-rc.d -f tor remove
#Kill the tor process
sudo pkill -x tor
#Execute Tor
sudo /usr/sbin/tor
#Start AnonSurf, and show your ip
sudo anonsurf start
sudo anonsurf myip
echo -e "${Cyan}AnonSurf Ativado!"
echo -e "${Cyan}AnonSurf Consertado!"
echo -e "${Purple}Todo trabalho foi feito, agora vamos dançar com o anonymous!"
sleep 1
echo "Do you want to stop AnonSurf? [dstat/y]"
read RESPOSTA
if [ $RESPOSTA == "dstat" ];then
    sudo nload
fi
if [ $RESPOSTA == "y" ];then
    echo -e "${Red}Bae!" && sudo anonsurf stop
fi

echo -e "${Purple}.----------------------------------------------."
