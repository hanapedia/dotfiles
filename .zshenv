# system-wide configs

# editor
export EDITOR="nvim"

# kubeconfig
export KUBECONFIG="$HOME/.kube/configs/default:$HOME/.kube/configs/minikube:$HOME/.kube/configs/home:$HOME/.kube/configs/lab:$HOME/.kube/configs/eks"

# homebrew update
export HOMEBREW_NO_AUTO_UPDATE="1"
. "$HOME/.cargo/env"
