#!/bin/bash
file=ver002
echo naiad linux update $file
cd
cd .naiad-updater
if [ -e $file ]; then
    echo "システムは既に最新の状態です"
    exit
else
    echo "アップデートを開始します"
fi
touch $file
#以下アップデート処理
cd 
mkdir Downloads
gsettings set org.blueman.transfer shared-path $HOME/Downloads/
sudo rm /var/crash/*
sudo sed -i 's/enabled=1/enabled=0/g' /etc/default/apport