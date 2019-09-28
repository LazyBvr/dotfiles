function fish_default_mode_prompt
  if test "$fish_key_bindings"
    switch $fish_bind_mode
      case default
        set color blue
        set symbol N
      case insert
        set color green
        set symbol I
      case replace_one
        set color green
        set symbol R
      case visual
        set color magenta
        set symbol V
    end
    set -l ARROW \ue0b0
    echo -ns \
      (set_color --background $color black) " $symbol " \
      (set_color --background $ALT_BLUE $color) $ARROW
  end
end

