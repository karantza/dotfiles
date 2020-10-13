#!/bin/bash

wallpaper=$1
echo Changing wallpaper to $1...

nitrogen --head=-1 --set-scaled $1 --save
sudo sed -i 's|background=.*|background='"$1"'|' /etc/lightdm/slick-greeter.conf
