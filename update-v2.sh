#!/bin/bash
file=ver004
echo naiad linux update $file
cd
cd .naiad-updater
if [ -e $file ]; then
    zenity --info \
    --text="システムは既に最新の状態です"
    exit
else
    zenity --info \
    --text="更新が必要です。"
fi
touch $file
#以下アップデート処理
zenity --progress --text "お待ちください..." --pulsate & pkexec env DISPLAY=$DISPLAY XAUTHORITY=$XAUTHORITY apt-get install adb fastboot
zenity --info --title "done" --text "処理が完了しました"
exit

