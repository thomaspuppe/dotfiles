# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/Users/puppe/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
#ZSH_THEME="robbyrussell"
ZSH_THEME=""
#ZSH_THEME="simple" # before PURE
#ZSH_THEME=random
#ZSH_THEME_RANDOM_IGNORED=(3den adben amuse arrow aussiegeek bira blinks crunch cypher dallas daveverwer dogenpunk duellj essembeh evan fino fino-time funky fwalch gallois garyblessington gianu gnzh humza imajes josh jreese jtriley kafeitu kphoen lukerandall miloshadzic mira mlh nanotech re5et rkj robbyrussell sammy smt sonicradish sorin terminalparty theunraveler tjkirch_mod trapd00r wedisagree tonotdo wezm wuffers ys)
# okay themes:
# - avit: nice und simpel. zu simpel?
# - kolo: entspannt, gute git Ansicht. Pfad zu kurz und % als Bang-Zeichen. Und schlimme Farben (alles pink)
# - macovsky-ruby okay, unaufgeregt, git fehlt.
# - pygmalion okay, user und host müssen weg
# - simple nur leichte tweaks nötig
# - strug: zeigt auch den Remote tracking Branch
# - sunaku: hübsch und simpel, nur die Reihenfolge falsch
# - sunrise: git-prompt vielversprechend. Farben schimm.
# Bedingungen: git prompt,

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in $ZSH/themes/
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
# DISABLE_MAGIC_FUNCTIONS="true"

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# Caution: this setting can cause issues with multiline prompts (zsh 5.7.1 and newer seem to work)
# See https://github.com/ohmyzsh/ohmyzsh/issues/5765
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

export HISTFILE=~/.zsh_history
export HISTFILESIZE=1000000000
export HISTSIZE=1000000000
setopt INC_APPEND_HISTORY
export HISTTIMEFORMAT="[%F %T] "

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git npm z zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

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


# Display execution time in prompt
# function preexec() {
#   timer=${timer:-$SECONDS}
# }
# function precmd() {
#   if [ $timer ]; then
#     timer_show=$(($SECONDS - $timer))
#     export RPROMPT="%F{blue}[ ${timer_show}s | %T ]%{$reset_color%}"
#     unset timer
#   fi
# }

# Aliases

alias zshr="source ~/.zshrc" # reload zsh config

alias ll="ls -lah"
alias ..="cd .."
alias ..2="cd ../.."
alias ..3="cd ../../.."

# https://github.com/banga/git-split-diffs
alias gd="git diff | git-split-diffs --color"
alias gc="git commit"
alias gl="git log --graph --decorate --pretty=oneline --abbrev-commit"
alias gs="git status"
alias gfb="git fetch --all && git branch --all"

alias zonroot="cd /Users/puppe/Code/zon/friedbert-deployment"
alias zoncode="zonroot; cd ./work/source/zeit.web"
alias zonbuild="zonroot; batou/deploy local"
alias zonserve="zonroot; bin/serve --reload"
alias zonserve-staging="zonroot; bin/serve staging --reload"
alias zonserve-production="zonroot; bin/serve production --reload"
alias zontest="zonroot; bin/test"

alias excuse='wget -q -O - programmerexcuses.com | grep "center" | sed "s|</b>|-|g" | sed "s|<[^>]*>||g"'
alias co='ssh -p 2222 ssh.caarlos0.dev' # https://github.com/maaslalani/confetty
alias localserver='python -m http.server 8000'

# Config the prompt
# https://github.com/ohmyzsh/ohmyzsh/issues/5068 , alternative: https://github.com/ohmyzsh/ohmyzsh/tree/master/plugins/shrink-path
shpwd() {
  echo ${${:-/${(j:/:)${(M)${(s:/:)${(D)PWD:h}}#(|.)[^.]}}/${PWD:t}}//\/~/\~}
}
#PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})%~%{$fg_bold[blue]%}$(git_super_status)%{$reset_color%} $(shpwd)'
# PROMPT='%(!.%{$fg[red]%}.%{$fg[green]%})$(shpwd) $fg_bold[blue]%}$(git_super_status)%{$reset_color%} $ '
# https://github.com/woefe/git-prompt.zsh
# ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg_bold[green]%}✔"
# ZSH_GIT_PROMPT_SHOW_UPSTREAM="full"
# ZSH_THEME_GIT_PROMPT_UPSTREAM_SYMBOL="%{$fg_bold[yellow]%}⟳ "
# ZSH_THEME_GIT_PROMPT_UPSTREAM_PREFIX="%{$fg[yellow]%} ⤳ "
# ZSH_THEME_GIT_PROMPT_UPSTREAM_SUFFIX=""

# optimize: make it more like fish
# - ls: files white, directories blue, executables red
# - autosuggest in grau vorschagen für eindeutige Eingaben (https://github.com/zsh-users/zsh-autosuggestions ?)

# For manually installed software like kustomize
export PATH="/usr/local/sbin:$PATH"
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/bit bit

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/puppe/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/puppe/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/puppe/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/puppe/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

autoload -U promptinit; promptinit
prompt pure
