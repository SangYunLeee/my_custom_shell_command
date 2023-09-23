# Kubectl

source <(kubectl completion zsh)

export KUBECONFIG=$(find ~/.kube -type f -name '*config' | tr '\n' ':')
alias k="kubectl"
alias kk="kubectl krew"

alias ka='kubectl apply --recursive -f'
alias kgp='kubectl get pods -o wide'
alias kgd='kubectl get deploy -o wide'
alias kgs='kubectl get service -o wide'
alias kgn='kubectl get nodes -o wide'
alias kge='kubectl get events -w --field-selector type=Warning'
alias kgv='kubectl get pvc -o wide'
alias kgpa='kubectl get pods -o wide -A'
alias kgpw='kubectl get pods -o wide -w'
alias kgpaw='kubectl get pods -o wide -A -w'

alias krn='kubectl run nginx --image=nginx --restart=Never'
alias kcn='kubectl create deployment nginx --image=nginx'
alias krb='kubectl run busybox --image=busybox --restart=Never -- sleep 1d'

# KREW
export PATH="${KREW_ROOT:-$HOME/.krew}/bin:$PATH"
PROMPT='$(kube_ps1)'$PROMPT
