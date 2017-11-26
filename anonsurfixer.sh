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
echo -e "\033[01;32m Type your passwd here:"
echo
sudo apt-get purge tor -y
clear
sudo apt-get install tor -y
clear
sudo apt-get install anonsurf -y
clear
sudo apt-get install nscd -y && sudo apt-get install resolvconf -y && sudo apt-get install dnsmasq -y
clear
sudo apt-get -f -y
clear
sudo apt-get upgrade -y && sudo apt-get upgrade -y
clear
sudo update-rc.d -f tor remove
clear
sudo pkill -x tor
clear
sudo /usr/sbin/tor
clear
sudo anonsurf start
sudo anonsurf myip
echo -e "\033[01;36m AnonSurf Activated!"
sleep 3
echo -e "\033[01;37m AnonSurf Fixed"
sleep 3
echo 'Checking . . .'
sleep 5
echo -e "\033[01;31m Tor -- > Installed"
sleep 6
echo -e "\033[01;30m AnonSurf -- > Installed"
sleep 6
echo -e "\033[01;34m Nscd -- > Installed"
sleep 6
echo -e "\033[01;34m Resolvconf -- > Installed"
sleep 6
echo -e "\033[01;39m Dnsmasq -- > Installed"
sleep 4
echo -e "\033[01;39m All the work has done, now go dance with ANONYMOUS!"
sleep 4
echo -ne "\033[01;39m You want to stop anonsurf now? (y/n):" && read resposta
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
