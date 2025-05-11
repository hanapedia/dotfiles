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
else if test -e /usr/local/bin/brew
  eval (/usr/local/bin/brew shellenv)
end

# brew diable auto-update
set -gx HOMEBREW_NO_AUTO_UPDATE "1"

# kubectl cluster contexts
set -gx KUBECONFIG "$HOME/.kube/configs/default:$HOME/.kube/configs/minikube:$HOME/.kube/configs/home:$HOME/.kube/configs/lab:$HOME/.kube/configs/labver2"

set --universal nvm_default_version latest

# load aliases
user_functions 
user_functions_alias

# default editor
set -gx EDITOR "nvim"

# bun
set --export BUN_INSTALL "$HOME/.bun"

### MANAGED BY RANCHER DESKTOP START (DO NOT EDIT)
set --export --prepend PATH "/Users/hanapedia/.rd/bin"
### MANAGED BY RANCHER DESKTOP END (DO NOT EDIT)
