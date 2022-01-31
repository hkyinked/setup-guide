#!/usr/bin/env bash 

echo "First lets change your PS1"
sleep 2s

echo 'alias brc="source ~/.bashrc"' >> ~/.bashrc
sleep 1s
echo 'PS1="\[\]\[\033[38;5;128m\]\u\[\] \[\]\[\033[38;5;11m\]>>\[\] \[\]\[\]\[\033[38;5;166m\]\w\[\]\n\[\]\[\]\[\033[38;5;1m\]\$\[\]"' >> ~/.bashrc
sleep 2s

source ~/.bashrc
sleep 1s
eval "$(cat ~/.bashrc | tail -n +10)"
sleep 1s
echo "Next lets update system"
sleep 2s

#sudo apt-get update && sudo apt-get upgrade -y
sleep 2s

#echo "Great we are done for now"

