# Aliases.

# Git commands
alias grao='git remote add origin'
alias grso='git remote show origin'
alias gs='git status'
alias gl='git log'
alias ga='git add'
alias gp='git push'
alias gpl='git pull'

# Data visualization
alias diff='diff -u --color'

# pipes
alias hl='rg --passthru'

# python3
alias py='python3'

# ls
alias ls='eza'
alias la='eza -a'
alias ll='eza -lh'
alias lla='eza -lah'

# navigation
alias ..='cd ..'
alias ...='cd ../..'

# apt
alias inst='sudo apt install'
alias remv='sudo apt remove'
alias auin='sudo apt install --mark-auto'
alias aurm='sudo apt autoremove'

# upload/download
alias curl='if [ ! -f ~/.netrc ]; then touch ~/.netrc; chmod 700 ~/.netrc; fi; curl -L --netrc'
alias dl='curl -O'
alias uplo='curl -T'

# misc
alias plz='sudo $(echo `history |tail -n2 |head -n1` | sed "s/[0-9]* //")'
alias run='make run'
alias clean='make clean'
alias rb='systemctl reboot'
alias reboot='systemctl reboot'
alias restart='systemctl restart'
