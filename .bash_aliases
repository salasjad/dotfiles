#Salahuddin Asjad

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias vim='nvim'
alias sat='zathura'
alias firefox='/opt/firefox/firefox &'

#Arch Linux
alias allinst='sudo pacman -Ssq $1 | sudo pacman -S -s'
alias inst='sudo pacman -Syu $1'
alias yaourtskip='yaourt --m-arg --skipchecksums --m-arg --skippgpcheck -Sb $1'

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
alias doc='cd ~/doc/'

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
alias svgtotex='inkscape -D -z --file=$1.svg --export-pdf=$1.pdf --export-latex'

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
alias qsys-open='sh /opt/intelFPGA_lite/17.1/quartus/sopc_builder/bin/qsys-edit &'

#Aliases for EFM32GG board
alias efm32gg='cd /home/salahuddin/Dropbox/app_files/EFM32GG/'
alias simstudio='/opt/simplicitystudio/studio'
alias commander='cd /opt/simplicitystudio/developer/adapter_packs/commander'

alias show_dev='dmesg | grep tty'

# SHA+ELD
alias thesis='zathura ~/doc/thesis/shaeld-asjad.pdf &'
alias sha-sjalander='zathura ~/doc/thesis/sha-sjalander.pdf &'
alias eld-sjalander='zathura ~/doc/thesis/eld-sjalander.pdf &'
alias sta-sjalander='zathura ~/doc/thesis/sta-sjalander.pdf &'
alias shmac='cd ~/git/SHA-ELD/'
alias run='cd ~/git/SHA-ELD/run/'
alias mibench='cd ~/git/SHA-ELD/software/applications/mibench/'
alias qsort='cd ~/git/SHA-ELD/software/applications/mibench/automotive/qsort'
alias ttyparse='python ~/git/SHA-ELD/script/tty_parse.py'
alias shmackill='pkill -9 shmacsim'

#opensplice
alias sourceos='source /home/sha/opensplice/install/HDE/x86_64.linux-dev/release.com'
alias osex='cd /home/sha/opensplice/install/HDE/x86_64.linux-dev/examples/dcps'
