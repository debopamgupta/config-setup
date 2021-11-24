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
# only shows upto this much in full path listing for PS1
# export PROMPT_DIRTRIM=2


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
  fortunes=(
    "I'm not afraid of death -- I just don't want to be there when it happens."
    "Most seminars have a happy ending.  Everyone's glad when they're over."
    "Give a small boy a hammer and he will find that everything he encounters needs pounding."
    "Good-bye.  I am leaving because I am bored."
    "If we do not change our direction we are likely to end up where we are headed."
    "If we don't survive, we don't do anything else."
    "If you are not for yourself, who will be for you?"
    "If you are for yourself, then what are you?"
    "Give your child mental blocks for Christmas."
    "Insanity is hereditary.  You get it from your kids."
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
    "Quantum Mechanics is God's version of Trust me."
    "Alimony and bribes will engage a large share of your wealth."
    "All the troubles you have will pass away very quickly."
    "Among the lucky, you are the chosen one."
    "Bank error in your favor.  Collect 200."
    "Do something unusual today.  Pay a bill."
    "Good day for overcoming obstacles.  Try a steeplechase."
    "Quark!  Quark!  Beware the quantum duck!"
    "Radioactive cats have 18 half-lives."
    "Avoid the Gates of Hell.  Use Linux"
    "I'm an idiot. At least this one [bug] took about 5 minutes to find."
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
    "Adult: One old enough to know better."
    "All new: Parts not interchangeable with previous model."
    "Allen's Axiom: When all else fails, read the instructions."
    "Alone, adj: In bad company."
    "philosophy: Unintelligible answers to insoluble problems."
    "The forest may be quiet, but that doesn't mean the snakes have gone away."
    "Some people have one of those days.  I've had one of those lives."
    "Real Time Here and now, as opposed to fake time, which only occurs there and then."
    "Recursion, See Recursion."
    "Robot, University administrator."
    "The sooner you fall behind, the more time you will have to catch up."
    "A program is a lot like a nose: Sometimes it runs, and sometimes it blows."
    "yo-yo, Something that is occasionally up but normally down. See also Computer."
    "All constants are variables."
    "And on the seventh day, He exited from append mode."
    "As a computer, I find your faith in technology amusing."
    "Byte your tongue."
    "C for yourself."
    "Calm down, it's *only* ones and zeroes."
    "Computers are useless.  They can only give you answers."
    "Disk crisis, please clean up!"
    "Hackers of the world, unite!"
    "MAXIMUM TERMINALS ACTIVE.  TRY AGAIN LATER"
    "Memory fault, brain fried"
    "Memory fault - where am I?"
    "New systems generate new problems."
    "New crypt.  See /usr/news/crypt."
    "No directory."
    "No extensible language will be universal."
    "Nothing happens."
    "Old mail has arrived."
    "On the eighth day, God created FORTRAN."
    "Old programmers never die, they just hit account block limit."
    "Old programmers never die, they just branch to a new address."
    "On the Internet, nobody knows you're a dog."
    "Save yourself!  Reboot in 5 seconds!"
    "Security check: INTRUDER ALERT!"
    "Swap read error.  You lose your mind."
    "Syntactic sugar causes cancer of the semicolon."
    "System checkpoint complete."
    "System going down at 1:45 this afternoon for disk crashing."
    "System going down at 5 this afternoon to install scheduler bug."
    "System going down in 5 minutes."
    "System restarting, wait..."
    "System going down in 60 seconds"
    "The disks are getting full, purge a file today."
    "The world is coming to an end ... SAVE YOUR BUFFERS!!!"
    "The world is coming to an end.  Please log off."
    "The world will end in 5 minutes.  Please log out."
    "THEGODDESSOFTHENETHASTWISTINGFINGERSANDHERVOICEISLIKEAJAVELININTHENIGHTDUDE"
    "There are no games on this system."
    "There are running jobs.  Why don't you go chase them?"
    "Type louder, please."
    "User hostile."
    "Vitamin C deficiency is apauling."
    "A black cat crossing your path signifies that the animal is going somewhere."
    "Early to rise, early to bed, makes a man healthy, wealthy and dead."
    "I'm going to live forever, or die trying!"
    "Is it weird in here, or is it just me?"
    "The best cure for insomnia is to get a  lot of sleep."
    "Time is an illusion, lunchtime doubly so."
    "Twenty Percent of Zero is Better than Nothing."
    "Why is the alphabet in that order?  Is it because of that song?"
    "Would you really want to get on a non-stop flight?"
    "Feel disillusioned?  I've got some great new illusions, right here!"
    "Good day to avoid cops.  Crawl to work."
    "If it's worth doing, it's worth doing for money."
    "If you suspect a man, don't employ him."
    "No one gets sick on Wednesdays."
    "The trouble with money is it costs too much!"
    "There are worse things in life than death.  Have you ever spent an evening with an insurance salesman?"
    "There's no such thing as a free lunch."
    "A grammarian's life is always in tense."
    "A pencil with no point needs no eraser."
    "A tautology is a thing which is tautological."
    "Artistic ventures highlighted.  Rob a museum."
    "Are you sure the back door is locked?"
    "Beware of Bigfoot!"
    "Beware the one behind you."
    "Questionable day. Ask somebody something."
    "Snow Day -- stay home."
    "Slow day.  Practice crawling."
    "Someone is speaking well of you. How unusual!"
    "You should go home."
    "Chemist who falls in acid is absorbed in work."
    "The reason computer chips are so small is computers don't eat much."
)
  FORTUNE=${fortunes[$RANDOM % ${#fortunes[@]} ]}
  echo "$FORTUNE"
}

emoji() {
emojis=("👾" "🌐" "🎲" "🌍" "🐉" "🌵")

EMOJI=${emojis[$RANDOM % ${#emojis[@]} ]}
printf "$EMOJI \n"
}

# cowsay -f tux "$(fortune)"

# cowsay -f small $(fortune)
# cowsay -f bunny $(fortune)
# cowsay -f vader-koala $(fortune)

export PS1='\[\033]0;Bash \007\]'
# export PS1='\[\e[01;32m\]dg@pc:\[\e[01;35m\] \W\[\e[00;33m\] `echo $(__git_ps1 "(%s)")`\[\e[01;00m\] \n$ '
# 🡢
# export PS1='\[\e[01;32m\]dg@pc\[\e[01;00m\]:\[\e[01;36m\]\W\[\e[00;33m\] `echo $(__git_ps1 "(%s)")` \n\[\e[01;00m\]$ '

## Current PS1 Set , before starship (via scoop on windows git bash)
export PS1='\[\e[00;36m\][\A]\[\e[01;32m\][dg@titan]\[\e[01;00m\]:\[\e[01;36m\][\w]\[\e[00;32m\]`echo $(__git_ps1 "[%s]")` \n\[\e[01;33m\]❯\[\e[01;00m\] '

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
alias cat='bat' # bat is a rust utility similar to the cat(1) command. install via scoop or other package manager

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

~/blocks1
printf "\n $(fortune) \n \n"
