# kubectl aliases
alias k=kubectl

# airflow aliases
alias kl="kubectl logs -n default"
alias kgp="kubectl get pods -n default"
alias kdp="kubectl describe pod -n default"
alias kdlp="kubectl delete pod -n default"
alias ke="kubectl exec -n default -it"

# other tools
alias ls="lsd -l"
alias tree="lsd --tree"
alias dc="docker-compose"
alias dotfiles="code ~/dotfiles"
alias vim="nvim"
alias vv="vim ~/.vimrc"
alias psql="sudo -u postgres psql"
alias jks="bundle exec jekyll serve --force-polling"
alias cat="batcat"

# advent of code
alias s1="g++ sol1.cpp -o sol1 && ./sol1 < input"
alias t1="g++ sol1.cpp -o sol1 && ./sol1 < test"
alias s2="g++ sol2.cpp -o sol2 && ./sol2 < input"
alias t2="g++ sol2.cpp -o sol2 && ./sol2 < test"
alias day='/mnt/c/Users/filbert/Documents/NUS/Year\ 2/aoc22/tool/setupDay.sh'

# haskell
alias gen-hie="/home/filbert/.local/bin/gen-hie"

# cs2103t
alias duke="javac -d bin src/main/**/*.java && java -cp bin duke.Duke"

# man page coloring
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# PATH modifications
export PATH="$PATH:/home/filbert/.local/bin" # for haskell packages

# zsh autosuggestions style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'

# zsh syntax highlighting style
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[comment]='fg=012'

function termcolors() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}

# run ssh-agent on boot
if [[ -z $SSH_AGENT_SOCK ]]; then
  eval "$(ssh-agent -s)" > /dev/null
  ssh-add ~/.ssh/github_rsa 2> /dev/null
fi

export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"