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
fish_add_path /opt/homebrew/bin
fish_add_path $HOME/.cargo/bin
source /opt/homebrew/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.fish.inc

# brew diable auto-update
set -gx HOMEBREW_NO_AUTO_UPDATE "1"

# kubectl cluster contexts
set -gx KUBECONFIG "$HOME/.kube/configs/default:$HOME/.kube/configs/minikube:$HOME/.kube/configs/home:$HOME/.kube/configs/lab:$HOME/.kube/configs/eks"


# Language version managers
pyenv init - | source
set -gx nvm_default_version v19.3.0

# keybindings
function fish_user_key_bindings
  bind \cg __ghq_repository_search
end

# load aliases
user_functions 
user_functions_alias

# load secrets
secrets

# default editor
set -gx EDITOR "nvim"

# run neovim in ide mode
function nvi
  nvim $argv --cmd "lua vim.g.IDE=true";
end

# run neovim in regular mode
function nv
  nvim $argv;
end

# zk
set -gx ZK_EDITOR "nvim"

## llvm
set -gx LDFLAGS "-L/opt/homebrew/opt/llvm/lib"
set -gx CPPFLAGS "-I/opt/homebrew/opt/llvm/include"

## config git alias
alias config='/usr/bin/git --git-dir=$HOME/.cfg/.git --work-tree=$HOME'


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
