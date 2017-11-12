#Salahuddin Asjad

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias vim='nvim'

#Arch Linux
alias inst='sudo pacman -Syu $1'

#Ubuntu
alias supt='sudo apt-get update'
alias supg='sudo apt-get upgrade'
alias sins='sudo apt-get install $1'
alias ppakey='sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $1'

alias monitors="xrandr | grep ' connected ' | awk '{ print$1 }'"

alias climit="cpulimit -l 50 -p '{ print$1 }'"

alias me='cd ~'
alias gh='cd ~/git'
alias db='cd ~/Dropbox'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias h='history'

alias copfile='xclip -sel clip < $1'
alias svim='sudo nvim'

alias algs='cd ~/git/algorithms'

alias balias='vim ~/.bash_aliases'
alias salias='source ~/.bash_aliases'
alias i3conf='cd ~/.config/i3/'
alias brc='vim ~/.bashrc'
alias vimrc='vim ~/.config/nvim/init.vim'
alias muttrc='vim ~/.muttrc'
alias dunstrc='vim ~/.config/dunst/dunstrc'
alias tlpsetup='vim /etc/default/tlp'
alias networkup='sudo service network-manager restart'

alias dot='cp -rf ~/{.profile,.bash_aliases,.config/nvim/,.i3/,.config/dunst/} ~/git/dotfiles'

#Aliases for the ultra docking station
alias dock='sudo sh /etc/acpi/dock.sh'
alias undock='sudo sh /etc/acpi/undock.sh'

alias sharelatex='cd ~/Dropbox/Apps/ShareLaTeX/'

#Aliases for Xilinx ISE
alias xilinx='source /opt/Xilinx/14.7/ISE_DS/settings64.sh/'
alias ise='source /opt/Xilinx/14.7/ISE_DS/settings64.sh; ise &'
alias progboard='djtgcfg prog -d Nexys3 -i 0 -f $1'

#Aliases for Altera Quartus
alias alteraQuartus='sh /opt/intelFPGA_lite/17.1/quartus/bin/quartus &'
alias alteraFlash='quartus_pgm -z --mode=JTAG --operation="p;program.sof"'

#Aliases for EFM32GG board
alias efm32gg='cd /home/salahuddin/Dropbox/app_files/EFM32GG/'
alias simstudio='/opt/simplicitystudio/studio'
alias commander='cd /opt/simplicitystudio/developer/adapter_packs/commander'

alias show_dev='dmesg | grep tty'

#SHMAC project
alias shmac='cd ~/git/shmac'
alias ssrc='cd ~/git/shmac/hardware/src'
alias moog='ssh salahuda@moog.idi.ntnu.no'
