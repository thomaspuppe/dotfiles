# ######################################
# Basics
# ######################################
export INPUTRC=~/.inputrc

# ######################################
# Functions and Parameters for Own Aliases
# ######################################

function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"


# ######################################
# Own Aliases
# ######################################

# alias finder
alf()
{
    alias | grep "$1"
    declare -F | grep "$1"
}

# notes finder
notes()
{
    grep -iR "$1" ~/Dropbox/notes
}

alias cdnotes='cd ~/Dropbox/notes'

alias restartalfred='open -n -a "Alfred 3"'

## git shortcuts
alias gs='git status'
alias gpullom='git pull origin master'
alias gpullzonm='git pull zeitonline master'
alias gpushom='git push origin master'
alias gc='git commit'
alias gbranch='git branch -a'
alias glog='git log --graph --decorate --pretty=oneline --abbrev-commit'


## quick ways to get out of current directory
alias cd..='cd ..'
alias ..='cd ..'
alias ..2='cd ../../'
alias ..3='cd ../../../'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'

alias ll='ls -alh'

## open file manager on current directory
alias x='open -a finder $PWD'

# opens file in textedit (´textedit theFiletoEdit.txt´)
alias textedit='open -a TextEdit'

# opens bash config file in gedit (terminal can be closed without closing gedit)
alias bashconf='subl ~/.bashrc'

# start local HTTP server from current directory
alias localserver='python -m SimpleHTTPServer 8080'

# For using Chrome Headless
alias chrome="/Applications/Google\ Chrome.app/Contents/MacOS/Google\ Chrome"
alias chrome-canary="/Applications/Google\ Chrome\ Canary.app/Contents/MacOS/Google\ Chrome\ Canary"

# ######################################
# Bash Completion: show current branch in bash
# ######################################
#export PS1='\[\033[01;32m\]\u@\h\[\033[01;34m\] \w\[\033[01;33m\]$(__git_ps1)\[\033[01;34m\] \$\[\033[00m\] '
#export PS1="\[${BOLD}${MAGENTA}\]\u\[$WHITE\]@\[$ORANGE\]\h\[$WHITE\]: [\[$GREEN\]\w\[$WHITE\]\$([[ -n \$(git branch 2> /dev/null) ]] && echo \" - \")\[$PURPLE\]\$(parse_git_branch)\[$WHITE\]] \$ \[$RESET\]"
#export PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR \$ "
export PS1="$GREEN\u$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR \$ "

# ######################################
# Tools
# ######################################

## sudo the last command
alias fucksudo='sudo $(history -p \!\!)'

## find an excuse
#alias excuse='wget -q -O - programmerexcuses.com | grep "center" | sed "s/<[^>]\+>//g"'
alias excuse='wget -q -O - programmerexcuses.com | grep "center" | sed "s|</b>|-|g" | sed "s|<[^>]*>||g"'


# ######################################
# TODO: automatisiert installieren und nicht hier über die Checklist
# ######################################
# https://github.com/kamranahmedse/git-standup


# ######################################
# project specific aliases
# ######################################
alias cddch='cd ~/code/dch/dch-website/'
alias cdrec='cd ~/code/rec/magento_ce/'

scpdch1() { scp ./$1 bph_puppe@dev1:/var/www/website/$1; }
scprec1() { scp ./$1 bph_puppe@dev1:/var/www/shop/$1; }

scpdch2() { scp ./$1 bph_puppe@dev2:/var/www/website/$1; }
scprec2() { scp ./$1 bph_puppe@dev2:/var/www/shop/$1; }