# Yarn PATH
export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

#Bindings
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'
shopt -s autocd
shopt -s no_empty_cmd_completion # TAB even on an empty prompt No More 'Display all GAZILLION possibilities...'

#Colors
export CLICOLOR=1
export LSCOLORS='cxfxexdxbxegedabagacad'

# EXPORTS
export EDITOR="nano" 
export LANG="en_US.UTF-8"
export HISTSIZE=100000                          # big big history (default is 500)
export HISTFILESIZE=$HISTSIZE                   # big big history
type shopt &> /dev/null && shopt -s histappend  # append to history, don't overwrite it

# Don't record some commands
export HISTIGNORE="&:[ ]*:exit:ls:bg:fg:history:clear"


# export PROMPT_COMMAND='echo -ne "\033]2;$(history 1 | sed "s/^[ ]*[0-9]*[ ]*//g")\007"'
# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

shopt -s cmdhist  # Save multi-line commands as one command
shopt -s cdspell  # Autocorrect speeling errors in `cd`
 

# Allow UTF-8 input and output, instead of showing stuff like $'\0123\0456'
set input-meta on
set output-meta on
set convert-meta off

# Custom functions
mkcd() {
  mkdir $1 && cd $1
}

gacp() {
  git add . && git commit -m $1 && git push
}

jrun() {
  if [ -n "$1" ]; then
  javac $1.java && java $1
  else echo "Specify java file name to compile"
  fi
}

fortune() {
  fortunes=("For good, return good.
For evil, return justice."
"Good-bye.  I am leaving because I am bored."
"If we do not change our direction we are likely to end up where we are headed."
"If we don't survive, we don't do anything else."
"If you are not for yourself, who will be for you?"
"If you are for yourself, then what are you?"
"If not now, when?"
"If you can survive death, you can probably survive anything."
"If you fool around with something long enough, it will eventually break."
"If you have to hate, hate gently."
"If you have to think twice about it, you're wrong." 
"If you keep anything long enough, you can throw it away."
"A sine curve goes off to infinity, or at least the end of the blackboard."
"Algebraic symbols are used when you do not know what you are talking about."
"All great discoveries are made by mistake."
"Although the moon is smaller than the earth, it is farther away."
"One man's constant is another man's variable."
"One has to look out for engineers, they begin with sewing machines and end up with the atomic bomb."
"Quantum Mechanics is God's version of "Trust me.""
"Quark!  Quark!  Beware the quantum duck!"
"Radioactive cats have 18 half-lives."
"Avoid the Gates of Hell.  Use Linux"
"I'm an idiot.. At least this one [bug] took about 5 minutes to find.."
"A day for firm decisions!  Or is it?"
"A visit to a fresh place will bring strange work."
"A visit to a strange place will bring fresh work."
"Are you making all this up as you go along?"
"Avoid reality at all costs."
"Be cautious in your daily affairs."
"It may or may not be worthwhile, but it still has to be done."
"It's all in the mind, ya know."
"There is a 20 percent chance of tomorrow."
"There was a phone call for you."
"Today is the first day of the rest of your life."
"Today is the last day of your life so far."
"Your lucky number is 3552664958674928.  Watch for it everywhere."
"Your present plans will be successful."
"A yawn is a silent shout."
"With your bare hands?!?"
"Within a computer, natural language is unnatural."
"Worthless."
"You have junk mail."
"You have mail."
"Your code should be more efficient!"
"You're using a keyboard!  How quaint!"
"Your mode of life will be changed to ASCII."
"Your program is sick!  Shoot it and put it out of its memory."
"Your password is pitifully obvious."
"Adult, n.:
  One old enough to know better."
"All new:
Parts not interchangeable with previous model."
"Allen's Axiom:
  When all else fails, read the instructions."
"Alone, adj.:
  In bad company."
"philosophy:
    Unintelligible answers to insoluble problems."
"QOTD:
  The forest may be quiet, but that doesn't mean
  the snakes have gone away."
"Some people have one of those days.  I've had one of those lives."
"Real Time Here and now, as opposed to fake time, which only occurs there and then."
"Recursion n.
  See Recursion."
"Robot, n. 
  University administrator."
"The sooner you fall behind, the more time you will have to catch up."
"A program is a lot like a nose: Sometimes it runs, and sometimes it blows."
"yo-yo, n.
  Something that is occasionally up but normally down.
  See also Computer."  
)
  FORTUNE=${fortunes[$RANDOM % ${#fortunes[@]} ]}
  printf "$FORTUNE \n"
}

emoji() {
emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
printf "$EMOJI \n"
}


cowsay -f tux "$(fortune)"
# cowsay -f small $(fortune)
# cowsay -f bunny $(fortune)

export PS1='\[\033]0;Bash \007\]'
# export PS1='\[\e[01;32m\]dg@pc:\[\e[01;35m\] \W\[\e[00;33m\] `echo $(__git_ps1 "(%s)")`\[\e[01;00m\] \n$ '
# 🡢
# export PS1='\[\e[01;32m\]dg@pc\[\e[01;00m\]:\[\e[01;36m\]\W\[\e[00;33m\] `echo $(__git_ps1 "(%s)")` \n\[\e[01;00m\]$ '

export PS1='\[\e[01;32m\]minima\[\e[01;00m\] \[\e[01;36m\]\W\[\e[00;33m\] `echo $(__git_ps1 "(%s)")` \n\[\e[01;00m\]> '
export PS2='>'

#Python alias
alias python='winpty python.exe'
alias python3='winpty python.exe'


#Bash Aliases
alias size="du -hcs ."
alias ls='ls --color -F --group-directories-first'
alias ll='ls -lAh'
alias l='ls -1'
alias la='ls -A'
alias open='explorer' # for windows explorer
alias sl='ls'
alias lls='ls'
alias man='tldr'
alias total_files='ls -l | wc -l'
alias tldr='tldr -t ocean'
alias mv='mv -i'
alias rm='rm -i'


# Git aliases
alias ga='git add .'
alias gaa='git add .'
alias gcm='git commit -m '
alias gd='git diff'
alias gi='git init'
alias gpll='git pull'
alias gpsh='git push'
alias gs='git status'
alias gss='git status -s'
alias grv='git remote -v'

# Custom Program Aliases
alias reveal-md="reveal-md --theme night --highlight-theme hybrid --port 1337 --w --css style.css" # reveal-md (see npm)
alias wtsetting="subl ~/AppData/Local/Packages/Microsoft.WindowsTerminal_8wekyb3d8bbwe/LocalState/settings.json" #windows terminal settings file
