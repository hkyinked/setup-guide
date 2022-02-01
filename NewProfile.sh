#!/usr/bin/env bash

# To run this script use the a
# Leading . before the run command

echo "First lets change your PS1"
sleep 2s

echo 'alias brc="source ~/.bashrc"' >> ~/.bashrc
sleep 1s
echo 'PS1="\[\]\[\033[38;5;128m\]\u\[\] \[\]\[\033[38;5;11m\]>>\[\] \[\]\[\]\[\033[38;5;166m\]\w\[\]\n\[\]\[\]\[\033[38;5;1m\]\$\[\]"' >> ~/.bashrc
sleep 2s

echo "Now lets reload bashrc"
source ~/.bashrc
sleep 1s

eval "$(cat ~/.bashrc | tail -n +10)"
sleep 1s

echo 'echo "Now were going to check for lolcat"'
sleep 1s
if ! command -v lolcat &> /dev/null
then
    echo "lolcat is not installed."
    else
        #sudo pip install lolcat
        echo "yay its installed."

fi

sleep 2s

echo "Next lets check for brave browser"
sleep 1s
if ! command -v brave-browser &> /dev/null
then
        echo "brave browser is not installed."
else
        sudo apt install apt-transport-https curl

        sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

        echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/>

        sudo apt update

        sudo apt install brave-browser

	brave-browser --version
fi

sleep 2s

echo "great, were done for now."

sleep 1s
