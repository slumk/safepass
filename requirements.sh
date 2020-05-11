#!/bin/bash

#this script will install the neccessery dependencies for pwdman.sh to work
# please execute this script atleast once before executing the pwdman.sh
# pwdman.sh will not work correctly without executing this script


echo -e "\e[36m\nPlease Wait...Requested Dependancies For pwdman.sh Will Be Installed Shortly...\e[0m"
sleep 5

#function created for execution at exit

com_exit()
{
	figlet "All Set!!" | lolcat 
	echo -e  "\nFinished.Exiting..." | lolcat
	sleep 3
	echo -e  "\n\e[1mYou Can Now Successfully Run The pwdman.sh!!\e[0m" | lolcat
}

trap unex_exit SIGINT

#function to overcome interruption by ctrl+c

unex_exit()
{
	clear
	echo -e "\e[31m\n(CTRL+C Detected).\e[5mExiting...\e[0m"
	sleep 3
	echo -e "\e[32m\e[1m\nYou Can Run requirement.sh  Anytime..\e[0m"
	exit
}

#install required dependencies

apt install figlet
apt install ruby
gem install lolcat
apt install ccrypt
apt install openssl


clear

trap com_exit EXIT








