# Theme
if status is-interactive
    # Commands to run in interactive sessions can go here
    # Theme
    # set -g theme_color_scheme nord
    set -g theme_color_scheme terminal2
    set -g theme_display_date no
    set -g theme_display_git_default_branch yes
    set -g theme_display_k8s_context yes
    set -g theme_newline_cursor yes
    set -g theme_newline_prompt '$ '
end

# Path

if test (uname -m) = "arm64"
  eval (/opt/homebrew/bin/brew shellenv)
  set -x PATH /opt/homebrew/bin:$PATH
else
  eval (/usr/local/bin/brew shellenv)
end

fish_add_path $HOME/.cargo/bin

# brew diable auto-update
set -gx HOMEBREW_NO_AUTO_UPDATE "1"

# kubectl cluster contexts
# set -gx KUBECONFIG "$HOME/.kube/configs/default:$HOME/.kube/configs/minikube:$HOME/.kube/configs/home:$HOME/.kube/configs/lab:$HOME/.kube/configs/eks"


# load aliases
user_functions 
user_functions_alias

# default editor
set -gx EDITOR "nvim"

## config git alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'
