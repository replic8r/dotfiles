alias bm="bmon -p 'eth0,vpn*'"
alias xreload="xrdb -load ~/.Xresources"
alias ll="ls -lah --color=auto"
alias ls="ls --color=auto"
alias lsl="ls -lh --color=auto"
alias "cd.."="cd ../"
#alias thebox="sudo mount -t vboxsf -o uid=$UID,gid=$(id -g) thebox ~/thebox"
alias vi="vim"
alias emacs="vim"
alias tree='tree -CAFa -I "CVS|*.*.package|.svn|.git|.hg|node_modules|bower_components" --dirsfirst'
alias genplaylist="cd ~/music;find . -name '*.mp3' -o -name '*.flac'|sed -e 's%^./%%g' > ~/.mpd/playlists/all.m3u"
alias temparature="sudo hddtemp /dev/sda&&sensors"
alias fixcursor="xsetroot -cursor_name left_ptr"
alias pacman="sudo pacman"
alias systemctl="sudo systemctl"
alias disks='echo "╓───── m o u n t . p o i n t s"; echo "╙────────────────────────────────────── ─ ─ "; lsblk -a; echo ""; echo "╓───── d i s k . u s a g e"; echo "╙────────────────────────────────────── ─ ─ "; df -h;'
alias record="ffmpeg -f x11grab -s 1366x768 -an -r 16 -loglevel quiet -i :0.0 -b:v 5M -y" #pass a filename
email() {
	echo $3 | mutt -s $2 $1
}

define() {
 curl dict://dict.org/d:$1
}
alias define="define"
extract () {
if [ -f $1 ] ; then
case $1 in
*.tar.bz2) tar xvjf $1 ;;
*.tar.gz) tar xvzf $1 ;;
*.bz2) bunzip2 $1 ;;
*.rar) unrar x $1 ;;
*.gz) gunzip $1 ;;
*.tar) tar xvf $1 ;;
*.tbz2) tar xvjf $1 ;;
*.tgz) tar xvzf $1 ;;
*.zip) unzip $1 ;;
*.Z) uncompress $1 ;;
*.7z) 7z x $1 ;;
*) echo “‘$1′ cannot be extracted via >extract<” ;;
esac
else
echo “‘$1′ is not a valid file”
fi
}
