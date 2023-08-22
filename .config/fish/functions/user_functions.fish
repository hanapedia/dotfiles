function user_functions
end

function sshhome
  if ifconfig | grep -e 192.168.1.101 -e 192.168.1.3
    ssh HomeLan
    return
  end
  ssh HomeWan
end

function restart --wraps=exec\ \'/opt/homebrew/bin/fish\' --description alias\ restart=exec\ \'/opt/homebrew/bin/fish\'
  set -l fish_path (which fish)
  exec $fish_path $argv; 
end

function grips --wraps='grip summery.md --export summery.html' --description 'alias grips=grip summery.md --export summery.html'
  grip summery.md --export summery.html $argv; 
end

function conf
  set -l nvim_path (which nvim)
  switch $argv[1]
  case n nvim
    exec $nvim_path ~/.config/nvim
  case f fish
    exec $nvim_path ~/.config/fish
  case fc fishconf
    exec $nvim_path ~/.config/fish/config.fish
  case '*'
    echo Enter valid argument. n, f, or fc
  end
end

function load_env
    if test -n "$argv[1]" -a -f "$argv[1]"
        while read -l line
            set key (echo $line | awk -F= '{print $1}')
            set value (echo $line | awk -F= '{for (i=2; i<=NF; i++) printf $i (i==NF ? "" : "=")}')
            if test -n "$key" -a -n "$value"
                set -xg $key $value
            end
        end < $argv[1]
        echo "Environment variables loaded from $argv[1]."
    else
        echo "Please provide a valid .env file as an argument."
    end
end
