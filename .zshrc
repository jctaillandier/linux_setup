# Set up the prompt
 alias viz="vi ~/.zshrc"
 alias rcz="source ~/.zshrc"
 setopt histignorealldups sharehistory
 HISTSIZE=1000000
 SAVEHIST=1000000
 HISTFILE=~/.zsh_history
 setopt NO_BEEP NO_AUTOLIST BASH_AUTOLIST NO_MENUCOMPLETE
 touch ~/.profile_base
 touch ~/.profile_destinations

# # Use modern completion system
 autoload -Uz compinit
 compinit
#
 zstyle ':completion:*' auto-description 'specify: %d'
 zstyle ':completion:*' completer _expand _complete 
 zstyle ':completion:*' format 'Completing %d'
 zstyle ':completion:*' group-name ''
 zstyle ':completion:*' menu select=2
 eval "$(dircolors -b)"
 zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
 zstyle ':completion:*' list-colors ''
 zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
 zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
 zstyle ':completion:*' menu select=long
 zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
 zstyle ':completion:*' use-compctl false
 zstyle ':completion:*' verbose true

 zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
 zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

 autoload -U promptinit; promptinit
 prompt fade green red

 autoload -U colors && colors
 PURPOSE=`cat /var/.purpose`
 PS1="$PURPOSE%{$fg[white]%}%n%{$reset_color%}@%{$fg[red]%}%m %{$fg[Purple]%}%~ %{$reset_color%}%% "

### ALIASES
alias ls="ls --color=auto"
alias k="kubectl"
alias ll="ls -alh"
alias sshk="ssh-copy-id -i ~/.ssh/id_rsa.pub"
alias python='python3.6'
alias tor='~/.local/share/applications/start-tor-browser.desktop'
alias myplan='libreoffice ~/Documents/Other/plan.ods'
alias getip='curl https://icanhazip.com'

### FUNCTIONS
function q.co.red ()
{
    echo -ne "\033[31m--------------------------------------------------------------------";
    echo -ne "\n\033[31m $1 $2 $3 $4 $5 $6 $7 $8 $9";
    echo -ne "\n\033[31m--------------------------------------------------------------------\033[1;37m\n"
}

function q.co.orange ()
{
    echo -ne "\033[33m--------------------------------------------------------------------";
    echo -ne "\n\033[33m $1 $2 $3 $4 $5 $6 $7 $8 $9";
    echo -ne "\n\033[33m--------------------------------------------------------------------\033[1;37m\n"
}

function q.co.green ()
{
    echo -ne "\033[32m--------------------------------------------------------------------";
    echo -ne "\n\033[32m $1 $2 $3 $4 $5 $6 $7 $8 $9";
    echo -ne "\n\033[32m--------------------------------------------------------------------\033[1;37m\n"
}

function q.co.purple ()
{
    echo -ne "\033[35m--------------------------------------------------------------------";
    echo -ne "\n\033[35m $1 $2 $3 $4 $5 $6 $7 $8 $9";
    echo -ne "\n\033[35m--------------------------------------------------------------------\033[1;37m\n"
}


### PROFILES
touch ~/.profile_base && source ~/.profile_base
touch ~/.profile_destinations && source ~/.profile_destinations


export PATH=~/bins:/opt:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/jc/google-cloud-sdk/path.zsh.inc' ]; then . '/home/jc/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/jc/google-cloud-sdk/completion.zsh.inc' ]; then . '/home/jc/google-cloud-sdk/completion.zsh.inc'; fi
alias pbcopy='xclip -selection clipboard'
