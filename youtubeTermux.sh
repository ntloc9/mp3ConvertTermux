#!/bin/bash

## Update packages
echo "+++ Updating the Packages +++"
echo "+++ Running Command pkg up +++"

pkg up

echo -e "\\n"
echo "+++ Packages are Updated Successfully +++"
sleep 2;
echo -e "\\n"

## Install dependency packages
echo -e "+++ Install dependency packages +++"
sleep 2;
echo -e "\\n"

echo -e "+++ Install python +++"
echo -e "\\n"

pkg install python -y

sleep 2;

echo -e "+++ Install cURL +++"
echo -e "\\n"

pkg install curl -y

sleep 2;

echo -e "\\n"
echo -e "+++ install ffmpeg (For Audio Conversion) +++"
echo -e "\\n"

pkg install ffmpeg -y

sleep 2;

echo -e "\\n"
echo -e "+++ Successfully Installed the dependency packages +++"
sleep 2;

echo -e "\\n"

## Download Youtube-dl
echo -e "+++ Downloading Youtube-dl +++"
echo -e "+++ Please Wait +++"

curl -s -L https://yt-dl.org/downloads/latest/youtube-dl -o /data/data/com.termux/files/usr/bin/youtube-dl

sleep 2;
echo -e "+++ Youtube-dl Downloaded Successfully +++"

echo -e "\\n"

sleep 2;

## Set Permission
echo -e "+++ Set Permission to Execute the Script +++"

chmod a+rx /data/data/com.termux/files/usr/bin/youtube-dl

echo "+++ Permission Granted +++"

sleep 2;

echo -e "\\n"

## Verify the Installation
echo -e "+++ Verifiy Installation +++"

youtube-dl --version
command -v youtube-dl

sleep 2;

## Alias stuff

echo -e "\\n"
echo "Alias Stuff"
echo  alias yt=\'youtube-dl --ignore-config -f bestaudio/best --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --output "~/storage/music/%(playlist)s/%(title)s.%(ext)s"\' >> /data/data/com.termux/files/usr/etc/bash.bashrc

echo  alias ytl=\'youtube-dl --ignore-config -f bestaudio/best --extract-audio --audio-format mp3 --audio-quality 0 --embed-thumbnail --output "~/storage/music/%(playlist)s/%(title)s.%(ext)s"\' >> /data/data/com.termux/files/usr/etc/bash.bashrc

echo "Alias Complete"

echo -e "\\n"

echo "+++ Installation completed successfully +++"
echo "+++ You can now use Youtube-dl to download the Youtube videos +++"
echo "+++ Hello, I'am Loc Nguyen and this is my script bash for download Youtube videos on Termux+++"
