#!/bin/bash
if [[ $1 =~ .png ]] || [[ $1 =~ .jpg ]] || [[ $1 =~ .PNG ]] || [[ $1 =~ .JPG ]] || [[ $1 =~ .jpeg ]] || [[ $1 =~ .JPEG ]]
then
  ~/dotfiles/bin/img $1

elif [[ $1 =~ \.webm$ ]]
then
        /usr/bin/mpv $1

elif	[[ $1 =~ twitch.tv ]]
then
	/usr/bin/livestreamer $1 best

elif [[ $1 =~ youtube.com ]] || [[ $1 =~ youtu.be ]]
then
	/usr/bin/mpv $1
	ret=$? 
	if [[ $ret != 0 ]]; then
		notify-send "Youtube video is blocked."
	fi

else
        /usr/bin/firefox $1
fi
