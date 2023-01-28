#!/bin/bash 
#author: @github.com/raoshab (Devender ) 


#Download Wallpaper 

url1="https://imagesbydev.dev-drive.workers.dev/api/v1/images" 
url=$(curl -s ${url1}|sed 's/"//g')

curl -s "${url}" -o /tmp/1rao.jpg
cp /tmp/1rao.jpg /tmp/rao.jpg

#changing the wallpaper with gsettings 
gsettings set org.gnome.desktop.background picture-uri "file:///tmp/rao.jpg"
 