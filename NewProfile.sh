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

echo "checking for wget"
if ! command -v wget &> /dev/null
then
	echo "wget not installed"
	sudo apt-get install wget -y
sleep 1s
	echo "wget has now been installed"
else
	wget --version
	echo "yay wget is installed"
fi

sleep 2s

echo "checking for curl"
if ! command -v curl &> /dev/null
then
	echo "curl is not installed"
	sudo apt-get install curl -y
sleep 1s
	echo "Curl has now been installed"
else
	echo "yay curl is installed"
	curl --version
fi

sleep 2s

echo "checking for git"
if ! command -v git &> /dev/null
then
	echo "git is not installed"
	sudo apt-get install git -y
sleep 1s
	echo "git has now installed"
else
	echo "yay git is installed"
	git --version
fi

sleep 2s

echo "checking for pip"
if ! command -v pip &> /dev/null
then
	echo "pip is not installed"
	sudo apt-get install python3-pip -y
sleep 1s
	echo "pip is now installed"
else
	echo "yay pip is installed"
	pip3 --version
fi

echo "Now were going to check for Etcher"
sleep 1s
if ! command -v etcher &> /dev/null
then
    echo "Etcher is not installed."
#    echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
#    sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 379CE192D401AB61
    curl -1sLf \
       'https://dl.cloudsmith.io/public/balena/etcher/setup.deb.sh' \
        | sudo -E bash
    sudo apt update && sudo apt install balena-etcher-electron -y
sleep 1
    echo "yay it should now be installed"
else
	echo "Etcher is already installed"
fi

sleep 2s

echo "Now were going to check for lolcat"
sleep 1s
if ! command -v lolcat &> /dev/null
then
	echo "lolcat is not installed."
	sudo pip install lolcat
sleep 1s
	echo "lolcat has now been installed"
else
        echo "yay its installed."

fi

sleep 2s

echo "Next lets check for brave browser"
sleep 1s
if ! command -v brave-browser &> /dev/null
then
	echo "brave browser is not installed."

	sudo apt install apt-transport-https curl

	sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg

	echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list

	sudo apt update

	sudo apt install brave-browser -y

else
	echo "yay brave browser is installed"
	brave-browser --version
fi

sleep 2s

echo "Now lets check for Visual Studio Code"
sleep 1s
if ! command -v code &> /dev/null
then
    echo "code is not installed."
	sudo apt-get install code -y
sleep 1s
	echo "Visual Studio Code has now been installed"
else
        echo "yay its installed."
	code --version

fi

sleep 2s

echo "Now lets get speedtest-cli"
sleep 1s
if ! command -v speedtest-cli &> /dev/null
then
	echo "Speedtest-cli is not installed"
	sudo apt-get install gnupg1 apt-transport-https dirmngr
	export INSTALL_KEY=379CE192D401AB61
	export DEB_DISTRO=$(lsb_release -sc)
	sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $INSTALL_KEY
	echo "deb https://ookla.bintray.com/debian ${DEB_DISTRO} main" | sudo tee  /etc/apt/sources.list.d/speedtest.list
	sudo apt-get update && sudo apt-get install speedtest -y
sleep 2s
	echo "speedtest-cli should now be installed"
else
	echo "yay speedtest-cli is already installed"
fi

sleep 2s

echo "great, were done for now."

sleep 1s
