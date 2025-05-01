function user_functions_alias
end

function bfg
  java -jar ~/code/src/github.com/hanapedia/bfg/bfg.jar $argv;
end

function repo
  cd ~/code/src/github.com/hanapedia/;
end

function vivi
  cd ~/code/src/github.com/vivianeinc/;
end

function lg
  lazygit
end

function k --wraps kubectl
  kubectl $argv
end

function g --wraps git
  git $argv
end

function n --wraps nvim
  nvim $argv
end

function rc
  nvim ~/.config/fish/
end

function o
  open -a "Google Chrome" $argv
end

function hexctl
  /Users/hirokihanada/code/src/github.com/hanapedia/hexagon/bin/hexctl $argv
end

function h
  /Users/hirokihanada/code/src/github.com/hanapedia/hexagon/bin/hexctl $argv
end
