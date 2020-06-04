# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ima/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
    git
    vue
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
   export EDITOR='vim'
else
   export EDITOR='mvim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
#
alias domusa='sudo openvpn --config /home/ima/domusa.ovpn'
alias pcinf11='rdesktop -r disk:test=/home/ima/Descargas -u ima -d samudo.local -g 1280x720 10.0.17.100'
alias vmtc1='rdesktop -r5 -r disk:test=/home/ima/Descargas -z 10.0.100.25 -f -u admintc -d vmtc1 -g 1920x1080'
alias montar='sudo mount 192.168.1.21:/media/prot_data /mnt/prot'
alias desmontar='sudo umount /mnt/prot'
alias trem='transmission-remote-gtk'
alias mpds='mpd /home/ima/.mpd/config'
alias m='ncmpcpp'
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias cdt='cd $HOME/trabajo'
alias t='tmux'
alias v='nvim'
alias vim='nvim'

# Always enable colored `grep` output
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias ls='ls --color=auto'
alias cp='cp -i'  # confirm before overwriting something
alias df='df -H -l'
alias free='free -h ' # human readeble sizes
alias cls='clear'
alias ls='ls --color=auto'
alias h='history'
alias hs='history | grep'
alias q='exit'


# Diff
alias quickdiff='diff --side-by-side --suppress-common-lines -W 150'

# Git
alias gs='git status'
alias ga='git add -A'
alias gp='git push origin HEAD'
alias gd='git difftool'
alias gc='git commit -m'
alias gl='git log -n 20 --format="%ai  %Cgreen%h%Creset  %<(10,trunc)%aN  %s"'
alias gsl='git log --decorate --graph --pretty=short'


# System
alias bye='sudo shutdown -h now'
alias update='sudo apt-get update && sudo apt-get upgrade'
alias upgrade='sudo apt-get upgrade'
alias updatepis='ansible pi -u pi -m apt -a "upgrade=yes update_cache=yes" -b'
alias clean='sudo apt-get autoclean && sudo apt-get autoremove'
alias up='wakeonlan 94:18:82:37:97:20'

# Python
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'


# Extra
#alias config='nvim /home/imarin/.config/i3/config'
#alias configq='nvim /home/imarin/.config/qtile/config.py'
#alias configb='nvim /home/imarin/.config/i3blocks/config'
#alias init='nvim /home/imarin/.config/nvim/init.vim'
alias tiempo='curl wttr.in'
alias tiempon='curl wttr.in?0'
alias trpi='transmission-remote-cli -c 192.168.1.18:9091'
alias trhp='transmission-remote-cli -c 192.168.1.21:9091'
alias s='googler'
alias latexmkp='latexmk -pdf -pvc'


# sudo apt install fortunes fortunes-es fortunes-es-off lolcat

# fortune -l | cowsay

# sudo apt install pandoc lynx

mds() { pandoc $1 | lynx -stdin;}
vf() { fzf | xargs -r -I % $EDITOR % ;}
rsv() { du -a .| cut -f2 | grep  -e .mp4 -e .mkv | sort | fzf | xargs -I {} mpv '{}'; }
rpdf() { du -a .| cut -f2 | grep  -e .pdf | fzf | xargs -I {} zathura '{}'; }
rv() { du -a .| cut -f2 | grep  -e $1 | grep -e .mp4 -e .avi -e .mpeg -e .mpg -e .mkv | xargs -I {} mpv '{}'; }
rvp() { du -a .| cut -f2 | grep  -e $1 | grep -e .mp4 -e .avi -e .mpeg -e .mpg ; }



# fzf improvement
function fzf-lovely(){

        if [ "$1" = "h" ]; then
                fzf -m --reverse --preview-window down:20 --preview '[[ $(file --mime {}) =~ binary ]] &&
                        echo {} is a binary file ||
                         (bat --style=numbers --color=always {} ||
                          highlight -O ansi -l {} ||
                          coderay {} ||
                          rougify {} ||
                          cat {}) 2> /dev/null | head -500'

        else
                fzf -m --preview '[[ $(file --mime {}) =~ binary ]] &&
                                 echo {} is a binary file ||
                                 (bat --style=numbers --color=always {} ||
                                  highlight -O ansi -l {} ||
                                  coderay {} ||
                                  rougify {} ||
                                  cat {}) 2> /dev/null | head -500'
        fi
}


# Set 'man' colors
function man() {
    env \
    LESS_TERMCAP_mb=$'\e[01;31m' \
    LESS_TERMCAP_md=$'\e[01;31m' \
    LESS_TERMCAP_me=$'\e[0m' \
    LESS_TERMCAP_se=$'\e[0m' \
    LESS_TERMCAP_so=$'\e[01;44;33m' \
    LESS_TERMCAP_ue=$'\e[0m' \
    LESS_TERMCAP_us=$'\e[01;32m' \
    man "$@"
}

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}



[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
