#!/bin/bash
clear
if [[ -e /usr/lib/licence ]]; then
database="/root/usuarios.db"
tmp_now=$(printf '%(%H%M%S)T\n')
fun_drop () {
port_dropbear=`ps aux | grep dropbear | awk NR==1 | awk '{print $17;}'`
log=/var/log/auth.log
loginsukses='Password auth succeeded'
clear
pids=`ps ax |grep dropbear |grep  " $port_dropbear" |awk -F" " '{print $1}'`
for pid in $pids
do
    pidlogs=`grep $pid $log |grep "$loginsukses" |awk -F" " '{print $3}'`
    i=0
    for pidend in $pidlogs
    do
      let i=i+1
    done
    if [ $pidend ];then
       login=`grep $pid $log |grep "$pidend" |grep "$loginsukses"`
       PID=$pid
       user=`echo $login |awk -F" " '{print $10}' | sed -r "s/'/ /g"`
       waktu=`echo $login |awk -F" " '{print $2"-"$1,$3}'`
       while [ ${#waktu} -lt 13 ]; do
           waktu=$waktu" "
       done
       while [ ${#user} -lt 16 ]; do
           user=$user" "
       done
       while [ ${#PID} -lt 8 ]; do
           PID=$PID" "
       done
       echo "$user $PID $waktu"
    fi
done
}
echo -e "\E[44;1;37m◇ㅤUser       ◇ㅤStatus     ◇ㅤConnection   ◇ㅤTime \E[0m"
echo ""
echo ""
 while read usline
    do  
        user="$(echo $usline | cut -d' ' -f1)"
        s2ssh="$(echo $usline | cut -d' ' -f2)"
        if [ "$(cat /etc/passwd| grep -w $user| wc -l)" = "1" ]; then
          sqd="$(ps -u $user | grep sshd | wc -l)"
        else
          sqd=00
        fi
        [[ "$sqd" = "" ]] && sqd=0
        if [[ -e /etc/openvpn/openvpn-status.log ]]; then
          ovp="$(cat /etc/openvpn/openvpn-status.log | grep -E ,"$user", | wc -l)"
        else
          ovp=0
        fi
        if netstat -nltp|grep 'dropbear'> /dev/null;then
          drop="$(fun_drop | grep "$user" | wc -l)"
        else
          drop=0
        fi
        cnx=$(($sqd + $drop))
        conex=$(($cnx + $ovp))
        if [[ $cnx -gt 0 ]]; then
          tst="$(ps -o etime $(ps -u $user |grep sshd |awk 'NR==1 {print $1}')|awk 'NR==2 {print $1}')"
          tst1=$(echo "$tst" | wc -c)
        if [[ "$tst1" == "9" ]]; then 
          timerr="$(ps -o etime $(ps -u $user |grep sshd |awk 'NR==1 {print $1}')|awk 'NR==2 {print $1}')"
        else
          timerr="$(echo "00:$tst")"
        fi
        elif [[ $ovp -gt 0 ]]; then
          tmp2=$(printf '%(%H:%M:%S)T\n')
          tmp1="$(grep -w "$user" /etc/openvpn/openvpn-status.log |awk '{print $4}'| head -1)"
          [[ "$tmp1" = "" ]] && tmp1="00:00:00" && tmp2="00:00:00"
          var1=`echo $tmp1 | cut -c 1-2`
          var2=`echo $tmp1 | cut -c 4-5`
          var3=`echo $tmp1 | cut -c 7-8`
          var4=`echo $tmp2 | cut -c 1-2`
          var5=`echo $tmp2 | cut -c 4-5`
          var6=`echo $tmp2 | cut -c 7-8`
          calc1=`echo $var1*3600 + $var2*60 + $var3 | bc`
          calc2=`echo $var4*3600 + $var5*60 + $var6 | bc`
          seg=$(($calc2 - $calc1))
          min=$(($seg/60))
          seg=$(($seg-$min*60))
          hor=$(($min/60))
          min=$(($min-$hor*60))
          timerusr=`printf "%02d:%02d:%02d \n" $hor $min $seg;`
          timerr=$(echo "$timerusr" | sed -e 's/[^0-9:]//ig' )
        else
          timerr="00:00:00"
        fi
        if [[ $conex -eq 0 ]]; then
           status=$(echo -e "\033[1;31mOffline \033[1;33m       ")
           echo -ne "\033[1;33m"
           printf '%-17s%-14s%-10s%s\n' " $user"      "$status" "$conex/$s2ssh" "$timerr" 
        else
           status=$(echo -e "\033[1;32mOnline\033[1;33m         ")
           echo -ne "\033[1;33m"
           printf '%-17s%-14s%-10s%s\n' " $user"      "$status" "$conex/$s2ssh" "$timerr"
        fi
        echo -e "\033[0;34m◇────────────────────────────────────────────────◇\033[0m"
    done < "$database"
fi
#exit
