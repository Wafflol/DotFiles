# If not running interactively, don't do anything
[[ $- != *i* ]] && return

if [ -d "$HOME/.bin" ] ;
  then PATH="$HOME/.bin:$PATH"
fi

if [ -d "$HOME/.local/bin" ] ;
  then PATH="$HOME/.local/bin:$PATH"
fi

#ignore upper and lowercase when TAB completion
bind "set completion-ignore-case on"

### ALIASES ###
#pdf
alias pdf="~/.scripts/za.sh && exit"

#bluetooth
alias airpods="bluetoothctl connect 7C:F3:4D:85:C4:FC"
alias vim='nvim'

#school
alias ssh221="ssh tsu05@remote.students.cs.ubc.ca"
alias pull221="rsync -avu tsu05@remote.students.cs.ubc.ca:~/cs221/ /home/tommy/Code/Cpsc221/"
alias push221="rsync -avu /home/tommy/Code/Cpsc221/ tsu05@remote.students.cs.ubc.ca:~/cs221/"
alias cd221="cd ~/Code/Cpsc221/"

alias ssh212="export TERM=vt100; ssh tsu05@ssh.ece.ubc.ca"
alias cd212="cd ~/Code/Cpen212/"
alias pull212="rsync -avu tsu05@ssh.ece.ubc.ca:/ubc/ece/home/ugrads/t/tsu05/ /home/tommy/Code/Cpen212/"
alias push212="rsync -avu /home/tommy/Code/Cpen212/ tsu05@ssh.ece.ubc.ca:/ubc/ece/home/ugrads/t/tsu05/"

#connect HDMI
alias monitor="xrandr --output HDMI-1-0 --auto"

alias ls='ls --color=auto'
alias la='ls -a'
alias ll='ls -alFh'
alias l='ls'
alias l.="ls -A | egrep '^\.'"
alias listdir="ls -d */ > list"

alias grep='grep --color=auto'

PS1='[\u@\h \W]\$ '

eval "$(starship init bash)"

#fix obvious typo's
alias cd..='cd ..'
alias pdw='pwd'
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'
alias updte='sudo pacman -Syyu'
alias updqte='sudo pacman -Syyu'
alias cd..='cd ..'
alias pdw='pwd'
alias udpate='sudo pacman -Syyu'
alias upate='sudo pacman -Syyu'
alias updte='sudo pacman -Syyu'
alias updqte='sudo pacman -Syyu'

fastfetch

ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1   ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *.deb)       ar x $1      ;;
      *.tar.xz)    tar xf $1    ;;
      *.tar.zst)   tar xf $1    ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

alias windows='sudo bootctl set-oneshot windows.conf'
alias wreboot='windows && reboot'


[ -f /opt/miniforge/etc/profile.d/conda.sh ] && source /opt/miniforge/etc/profile.d/conda.sh
