clear
echo "Welcome to WildyDev21 Script"
echo ""
read -p "Input New 'root' Password : " password

if [[ $password == "" ]]; then
  echo "ERROR! Please input password"
  exit 1
fi

https://raw.githubusercontent.com/wildydev21/get-root/main/ssh.conf
