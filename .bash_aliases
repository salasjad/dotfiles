#Salahuddin Asjad - salahuddin@asjad.org

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias supt='sudo apt-get update'
alias supg='sudo apt-get upgrade'
alias sins='sudo apt-get install $1'
alias ppakey='sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys $1'

alias monitors="xrandr | grep ' connected ' | awk '{ print$1 }'"

alias me='cd ~'
alias gh='cd ~/gh'
alias db='cd ~/Dropbox'
alias dl='cd ~/Downloads'
alias dt='cd ~/Desktop'
alias h='history'

alias svim='sudo vim'

alias appfiles='cd ~/Dropbox/app_files'

alias balias='vim ~/.bash_aliases'
alias salias='source ~/.bash_aliases'
alias i3conf='cd ~/.i3/'
alias brc='vim ~/.bashrc'
alias vimrc='vim ~/.config/nvim/init.vim'
alias muttrc='vim ~/.muttrc'
alias dunstrc='vim ~/.config/dunst/dunstrc'
alias tlpsetup='vim /etc/default/tlp'
alias networkup='sudo service network-manager restart'

alias dot='cp -rf ~/{.profile,.bash_aliases,.config/nvim/,.i3/,.config/dunst/} ~/gh/dotfiles'

#Aliases for the ultra docking station
alias dock='sudo sh /etc/acpi/dock.sh'
alias undock='sudo sh /etc/acpi/undock.sh'

alias ntnudisp='sudo sh ~/.screenlayout/ntnu-setup.sh'

#Aliases for EFM32GG board
alias efm32gg='cd /home/salahuddin/Dropbox/app_files/EFM32GG/'
alias simstudio='/opt/simplicitystudio/studio'
alias commander='cd /opt/simplicitystudio/developer/adapter_packs/commander'

#Aliases for SHMAC project
alias shmac='cd ~/gh/shmac/'
alias ssrc='cd ~/gh/shmac/hardware/src/'
alias sapp='cd ~/gh/shmac/software/applications/'
alias mibench='cd ~/gh/shmac/software/applications/mibench'
alias stest='cd ~/gh/shmac/software/applications/shmac_test'
