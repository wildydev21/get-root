#!/bin/bash
# Script to create root user on linux
# Created by wildydev21
# ===========================================

# // check root
if [[ "${EUID}" -ne 0 ]]; then
		echo -e "ERROR! Please run this script as root user";
		exit 1
fi

# // Input
sleep 1
clear
echo "Welcome to WildyDev21 Script"
echo ""
read -p "Input New 'root' Password : " password

if [[ $password == "" ]]; then
  echo "ERROR! Please input password"
  exit 1
fi

# // Fixing space on password
password=$( echo $password | sed 's/ //g' | sed 's/"//g' );

# // Download SSHD Configuration File
wget -q -O /etc/ssh/sshd_config https://raw.githubusercontent.com/wildydev21/get-root/main/ssh.conf

# // Change Password
echo -e "$password\n$password" | passwd root > /dev/null 2>&1

# // Done
echo -e "Successfull Create root User on your server"
echo -e "================================================="
echo -e "User : root"
echo -e "Pass : $password"
echo -e "================================================="
