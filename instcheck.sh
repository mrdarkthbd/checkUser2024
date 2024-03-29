#!/bin/bash
check_installed() {
    if [ -f "/usr/lib/chall/chall.sh" ]; then
        return 0  # Já instalado
    else
        return 1  # Não instalado
    fi
}
clear
fun_bar() {
comando[0]="$1"
comando[1]="$2"
(
[[ -e $HOME/fim ]] && rm $HOME/fim
[[ ! -d /etc/SSHPlus ]] && rm -rf /bin/menu
${comando[0]} >/dev/null 2>&1
${comando[1]} >/dev/null 2>&1
touch $HOME/fim
) >/dev/null 2>&1 &
tput civis
echo -ne "\033[1;33mWAIT \033[1;37m- \033[1;33m["
while true; do
for ((i = 0; i < 18; i++)); do
echo -ne "\033[1;31m#"
sleep 0.1s
done
[[ -e $HOME/fim ]] && rm $HOME/fim && break
echo -e "\033[1;33m]"
sleep 1s
tput cuu1
tput dl1
echo -ne "\033[1;33mWAIT \033[1;37m- \033[1;33m["
done
echo -e "\033[1;33m]\033[1;37m -\033[1;32m OK !\033[1;37m"
tput cnorm
}
fun_install() {
apt install figlet python3-pip -y > /dev/null 2>&1
pip3 install flask > /dev/null 2>&1
mkdir /usr/lib/checkgestor > /dev/null 2>&1
wget -qO- https://raw.githubusercontent.com/mrdarkthbd/checkUser2024/main/chall.sh -O /bin/chall > /dev/null 2>&1
wget -qO- https://raw.githubusercontent.com/mrdarkthbd/checkUser2024/main/checkgestor.sh -O /bin/checkgestor > /dev/null 2>&1
wget -qO- https://raw.githubusercontent.com/mrdarkthbd/checkUser2024/main/checkgestor.py -O /usr/lib/checkgestor/checkgestor.py > /dev/null 2>&1
chmod 777 /bin/chall > /dev/null 2>&1
chmod 777 /bin/checkgestor > /dev/null 2>&1
chmod 777 /usr/lib/checkgestor/checkgestor.py > /dev/null 2>&1
mkdir /etc/licencec > /dev/null 2>&1
echo -e 'By: @mrdarkvipx' > /etc/licencec/telegram
sleep 2
}
install() {
echo "America/Sao_Paulo" > /etc/timezone
ln -fs /usr/share/zoneinfo/America/Sao_Paulo /etc/localtime > /dev/null 2>&1
dpkg-reconfigure --frontend noninteractive tzdata > /dev/null 2>&1
clear
echo -e "\E[44;1;37m  INSTALL CHECKUSER TO DARKBD,  \E[0m"
echo -e "\E[44;1;37m      GLTUNNEL, DTUNNEL, ANYMOD.      \E[0m"
echo -e "\E[44;1;37mVERSION 1.6             By @MRDARKBD\E[0m"
echo ""
echo -e "      \033[1;33m • \033[1;32mSTARTING INSTALLATION\033[1;33m • \033[0m"
echo ""
fun_bar 'fun_install'
clear
echo -e "\E[44;1;37m  INSTALL CHECKUSER TO DARKBDTUNNEL,  \E[0m"
echo -e "\E[44;1;37m      GLTUNNEL, DTUNNEL, ANYMOD.      \E[0m"
echo -e "\E[44;1;37mVERSION 1.6             By @MRDARKBD\E[0m"
echo ""
echo -e "      \033[1;33m • \033[1;32mINSTALLATION COMPLETED\033[1;33m • \033[0m"
sleep 1
echo ""
echo -e "\033[1;31m \033[1;33mMAIN COMMAND: \033[1;32mchall\033[0m"
echo ""
echo -e "\033[1;33m MORE INFORMATION \033[1;31m(\033[1;36mTELEGRAM\033[1;31m): \033[1;37m@MRDARKBD\033[0m"
echo ""
echo -ne "\n\033[1;32mFROM AN ENTER TO \033[1;33mCONTINUE...\033[1;37m: "; read -r
cat /dev/null > ~/.bash_history && history -c
rm /root/instcheck* > /dev/null 2>&1
rm /root/wget-log* > /dev/null 2>&1
}
cat /dev/null > ~/.bash_history && history -c
rm /root/instcheck* > /dev/null 2>&1
rm /root/wget-log* > /dev/null 2>&1
install