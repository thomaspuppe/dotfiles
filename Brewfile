# Taps
tap "homebrew/bundle"
#no longer needed#tap "homebrew/cask"
#no longer needed#tap "homebrew/cask-versions"
# tap "homebrew/core"

# Due to reduced admin privileges, the default install location for casks
# is set to ~/Applications
cask_args appdir: "~/Applications"

# Brew extensions and helper
# Install applications from Mac App Store
brew "mas"

# Python
# This will create binaries with the suffix 3.12, e.g. python3.12 and pip3.12
# in order to avoid conflicts with any other installed python version
# You can create an alias in your shell configuration to use python3.12 as default
# e.g. in your .zshrc or .bashrc:
# alias python=python3.12
brew "python@3.12"

# ZON dev environment
brew "graphviz"
brew "nginx"
brew "libevent"
brew "libjpg"
brew "libmagic"
brew "libffi"
brew "libmemcached"
brew "webp"
brew "node"
brew "pkg-config"
brew "wget"
brew "kustomize"
brew "pre-commit"

# Browsers
# already-preinstalled# cask "firefox"
cask "firefox@nightly"
# cask "firefox@developer-edition"
# already-preinstalled# cask "google-chrome"
cask "google-chrome@canary"
# cask "opera"
# cask "brave-browser"

# chromium is mandatory for testing purposes
cask "chromium", args: {'no-quarantine': true}
brew "geckodriver"
# cask "chromedriver" # Installed by selenium itself!?

# IDE/Editors
cask "sublime-text"
cask "visual-studio-code"
cask "cursor"
cask "obsidian"

# Version Control
brew "git"
#brew "git-trim"
#brew "gh" # https://cli.github.com/
#brew "git-quick-stats"

# Documentation
brew "sphinx-doc"

# password managers
cask "keepassxc"

# useful mac software
cask "iterm2"
#cask "warp" # an AI-enabled terminal
cask "alfred"
#cask "spotify"
cask "spectacle"
#cask "glyphfinder"
#cask "thunderbird"
#cask "keybase"
#cask "stretchly"
#cask "numi"
#cask "notion"
#cask "kap"
cask "slack"
#cask "appcleaner"
#cask "colour-contrast-analyser"
#cask "free-ruler"
#cask "moom"
#cask "the-unarchiver"
#cask "openoffice"
#cask "postgres"
#cask "zoom" # needs sudo; available from ZEIT IT store

# useful shell tools
#brew "ack"
brew "bat"
#brew "bit-git"
#brew "cheat"
brew "httpie"
#brew "autojump"#comes via zsh "z" plugin
#brew "ssh-copy-id"
#cask "ngrok"
brew "ffmpeg"
brew "imagemagick"
brew "pipenv"
#cask "docker" # needs sudo; available from ZEIT IT store
brew "kubernetes-cli"
brew "tfenv"
brew "vault"
#brew "kustomize" # :-( https://github.com/ZeitOnline/zeit.web/commit/069b233
cask "pgadmin4"

#cask "insomnia"
#cask "insomnia-designer"
#cask "responsively"
brew "bruno"

# zsh shell
brew "zsh"
brew "zsh-completions"
brew "zsh-syntax-highlighting"
brew "pure" # pure shell https://github.com/sindresorhus/pure

# Coding fonts
cask "font-ibm-plex-mono"
cask "font-input"
cask "font-fira-code"

