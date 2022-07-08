# kubectl aliases
alias k=kubectl

# airflow aliases
alias kl="kubectl logs -n airflow"
alias kgp="kubectl get pods -n airflow"
alias kdp="kubectl describe pod -n airflow"
alias kdlp="kubectl delete pod -n airflow"
alias ke="kubectl exec -n airflow -it"

# other tools
alias ls="lsd -l"
alias tree="lsd --tree"
alias dc="docker-compose"

# man page coloring
export LESS_TERMCAP_mb=$'\e[1;32m'
export LESS_TERMCAP_md=$'\e[1;32m'
export LESS_TERMCAP_me=$'\e[0m'
export LESS_TERMCAP_se=$'\e[0m'
export LESS_TERMCAP_so=$'\e[01;33m'
export LESS_TERMCAP_ue=$'\e[0m'
export LESS_TERMCAP_us=$'\e[1;4;31m'

# zsh autosuggestions style
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=241'

# zsh syntax highlighting style
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[comment]='fg=012'

function termcolors() {
  for i in {0..255}; do print -Pn "%K{$i}  %k%F{$i}${(l:3::0:)i}%f " ${${(M)$((i%6)):#3}:+$'\n'}; done
}
