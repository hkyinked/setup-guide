#!/bin/bash
PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin

echo "    ----------------   " | lolcat  
echo "  /  Welcome $USER,   \ " | lolcat     
echo "  \  GOOGLE ROCKS!!  / " | lolcat       
echo "    ----------------   " | lolcat
echo "     \                 " | lolcat
echo "      \                " | lolcat 
echo "          .--.         " | lolcat
echo "         |o_o |        " | lolcat
echo "         |:_/ |        " | lolcat
echo "        //   \ \       " | lolcat
echo "       (|     | )      " | lolcat
echo "      /-\_   _/-\      " | lolcat
echo "      \___)=(___/      " | lolcat
echo "===============================" | lolcat
echo "Today's date is..." | lolcat
date
echo "===============================" | lolcat
sleep 2s

echo "Lets check your internet speeds shall we?" | lolcat
speedtest-cli | grep -e Download: -e Upload:
echo "===============================" | lolcat

sleep 2s
echo "Great, now lets get some memory info.." | lolcat

sleep 2s
free -t -m
echo "===============================" | lolcat

sleep 2s
echo "Now lets get kernel stats"
uname -a

sleep 2s
echo "===============================" | lolcat

sleep 2s
echo "Good, lets get some cpu info" | lolcat
cat /proc/cpuinfo | grep -e MHz
echo "===============================" | lolcat

sleep 2s
echo "Now checking temps" | lolcat
sensors

echo "_______________________________________________"
