alias vi='vim -p'
alias vim='vim -p'
alias screenshoot='import -window root /tmp/screenshot.png'
if [ -f $HOME/.bash_secret_aliases ];
then
	source $HOME/.bash_secret_aliases
fi
alias _heirless='cd /home/nsensfel/src/heirless'
alias copy_gcode='sudo mount /dev/sdb1 /mnt; sudo mv ./*.gcode /mnt; sudo umount /mnt'
alias copy_gcode_to_sd='sudo mount /dev/mmcblk0p1 /mnt; sudo mv ./*.gcode /mnt; sudo umount /mnt'

if [ -d $HOME/.config/emacs/bin ];
then
	export PATH="$HOME/.config/emacs/bin:$PATH"
elif [ -d $HOME/.emacs.d/bin ];
then
	export PATH="$HOME/.emacs.d/bin:$PATH"
fi
