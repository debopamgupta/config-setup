# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Yarn PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#Bindings
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

#######
bind '"\e[1;5D": backward-word'
bind '"\e[1;5C": forward-word'
bind '"\C-p":history-search-backward'
bind '"\C-n":history-search-forward'
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind '"TAB":menu-complete'

bind 'set show-all-if-ambiguous on'
bind 'set bell-style none'
bind 'set colored-stats On'
bind 'set completion-ignore-case On'
bind 'set completion-prefix-display-length 3'
bind 'set mark-symlinked-directories On'
bind 'set show-all-if-ambiguous On'
bind 'set show-all-if-unmodified On'
bind 'set visible-stats On'

#######


#SHOPT
shopt -s autocd
shopt -s no_empty_cmd_completion # TAB even on an empty prompt No More 'Display all GAZILLION possibilities...'
shopt -s cmdhist  # Save multi-line commands as one command
shopt -s cdspell  # Autocorrect speeling errors in `cd`
shopt -s histappend  # append to history, don't overwrite it
shopt -s checkwinsize # checks term size when bash regains contro

#Colors
export CLICOLOR=1
# export LSCOLORS='cxfxexdxbxegedabagacad'
export LSCOLORS='exfxcxdxbxegedabagacad'

# EXPORTS
# export EDITOR="nano" 
export EDITOR="micro" 
export LANG="en_US.UTF-8"
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear" # Dont record some commands
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"


# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
set input-meta on
set output-meta on
set convert-meta off

# Custom functions

# Make a directory and cd into it all at once
mkcd() {
  mkdir $1 && cd $1
}

# do all at once git
gacp() {
  git add . && git commit -m $1 && git push
}

# compile and run a given java file. Usage - `jrun <filename without the extension>`
jrun() { 
  if [ -n "$1" ]; then
  javac $1.java && java $1
  else echo "Specify java file name to compile"
  fi
}

# get a random emoji. Usage - `emoji`
emoji() {
  emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵")
  EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
  printf "$EMOJI \n"
}

# Spin up a local python server in the current directory. Usage - `up <port>` if not specified, uses port 8421
up() {
  if [ -n "$1" ]; then
  python -m http.server $1
  else echo "No port specified, running on :8421"
  python -m http.server 8421
  fi
}


export PS1='\[\033]0;Bash \007\]'
# my current 
export PS1='\[\e[01;32m\]notdg\[\e[00;33m\]@\[\e[1;34m\]victory\[\e[01;00m\]:\[\e[01;36m\]\w\[\e[00;32m\] `echo $(__git_ps1 "(%s)")`\n\[\e[01;35m\]❯\[\e[01;00m\] '

# luke smiths
# export PS1='\[\e[1;31m\][\[\e[1;33m\]\u\[\e[1;32m\]@\[\e[1;34m\]\h \[\e[1;35m\]\w\[\e[1;31m\]]\[\e[1;00m\]\$\[\e[0;00m\] '


export PS2='>'

# zoxide - Website: https://github.com/ajeetdsouza/zoxide
eval "$(zoxide init bash)"
# fzf - Website: https://github.com/junegunn/fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# ALIASES

# Python alias on Windows
alias python='winpty python.exe'
alias python3='winpty python.exe'

# Bash Aliases

# `ls` ALIASED TO `lsd` Website: https://github.com/Peltoche/lsd
# Can use `exa` as well Website: https://the.exa.website/
alias ls='lsd'
# alias ls='ls --color -F --group-directories-first' # for normal ls
alias ls='lsd --group-dirs first'
alias ll='lsd -lAh --total-size'
alias l='lsd -1'
alias la='lsd -A'
alias sl='lsd'
alias lls='lsd'

alias historyclearall="/usr/bin/cat /dev/null > ~/.bash_history && history -c && exit"
alias size="du -hcs ."
alias open='explorer'
alias man='tldr' 
alias total_files='ls -l | wc -l'
alias tldr='tldr -t ocean'

# Reload bashrc after modifying, in the current session
alias reload='source ~/.bashrc'

# confirm before overwriting something and verbose output
alias cp='cp -iv'
alias mv='mv -iv'
alias rm='rm -iv'

# Additional Programs replacing normal ones
# bat is a rust utility similar to the cat(1) command. install via scoop or other package manager
alias cat='bat'
# https://micro-editor.github.io/
alias mc='micro'
alias m='micro'

# Git aliases
alias ga='git add .'
alias gaa='git add .'
alias gcm='git commit -m '
alias gc='git commit'
alias gd='git diff'
alias gi='git init'
alias gpll='git pull'
alias gpsh='git push'
alias gs='git status'
alias gss='git status -s'
alias grv='git remote -v'
alias gittree='git log --graph --full-history --all --pretty=format:"%h%x09%d%x20%s"'

# Utility Aliases
# Get your external IP
# Public facing IP Address
alias ipe='curl ipinfo.io/ip'
alias myip='curl ip.appspot.com'

alias weather='curl wttr.in/'


# Custom Program Aliases

# reveal-md (see npm)
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337 --w --css style.css"
# Open Settings for Windows terminal
alias wtsetting="$EDITOR ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json"

# Starship prompt - https://starship.rs
eval "$(starship init bash)"

# Load Up Some Cool Color Blocks!!
# ~/blocks1
~/fade

#####################
## CAT OUT TODOSLIST
################

/usr/bin/cat ~/workspace/temp/TODO.md
printf "\n" 
