function reload! --wraps='. $ZDOTDIR/config.fish' --wraps='. $XDG_CONFIG_HOME/fish/config.fish' --description 'alias reload!=. $XDG_CONFIG_HOME/fish/config.fish'
  . $XDG_CONFIG_HOME/fish/config.fish $argv
        
end
