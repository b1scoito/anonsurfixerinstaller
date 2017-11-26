#!/bin/bash

echo -e "\033[01;32m Greetz: V4p0r, D3z3n0v3, B33ck, Adolfinho, all friends.."

echo -e "\033[01;32m .______________________________________________."

echo -e "\033[01;32m AnonSurf Fixer & Installer - By: Biscoitao"
sleep 3.5
echo
echo
echo
echo
echo
echo
echo
sudo apt-get purge tor -y
sudo apt-get install tor -y
echo -e "\033[01;31m Tor Installed"
sleep 4
sudo apt-get install anonsurf
sudo apt-get install nscd -y && sudo apt-get install resolvconf -y && sudo apt-get install dnsmasq -y
echo -e "\033[01;30m AnonSurf Installed"
sleep 4
sudo apt-get -f -y
sudo apt-get upgrade -y && sudo apt-get upgrade -y
echo -e "\033[01;34m Programs fixed"
sleep 4
sudo update-rc.d -f tor remove
sudo pkill -x tor
echo -e "\033[01;34m Deleted all tor processes"
sleep 4
sudo /usr/sbin/tor
echo -e "\033[01;35m Restarted the processes, tor activated."
sleep 4
sudo anonsurf start
echo -e "\033[01;36m AnonSurf Activated!"
sleep 4
sudo anonsurf myip
echo -e "\033[01;37m AnonSurf Fixed"
sleep 4
echo -ne "\033[01;38m You want to stop anonsurf now? (y/n):" && read resposta
echo
echo
if [ $resposta == "y" ]
then
	sudo anonsurf stop && echo "Thanks For Using, Bae!"
elif [ $resposta == "n" ]
then
	echo "Closing, keep anonymous!, Bae!"
        exit 0
elif [ $resposta != "y" ]
then
	exit 0
elif [ $resposta != "n" ]
then
	exit 0
fi

echo ".----------------------------------------------."
