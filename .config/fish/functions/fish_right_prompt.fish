function fish_right_prompt
  # fetch the exit code of most recent command
  # color the segment green if the code is 0, red otherwise
  set -l exitcode $status
  set -l statuscolor green
  if test $exitcode -ne 0
    set statuscolor red
  end

  # pretty-print the duration of most recent command
  set -l minutes (math -s0 $CMD_DURATION / 60000.0)
  set -l seconds (math -s0 $CMD_DURATION % 60000.0 / 1000.0)
  set -l millis (math $CMD_DURATION % 1000.0)
  set -l duration ''
  if test $minutes -gt 0
    set duration "$minutes:"
  end
  set duration (printf '%s%d.%03d' $duration $seconds $millis)

  # output the prompt
  ## Powerline left arrow/triangle
  set -l ARROW \ue0b2
  echo -ens \
    (set_color $ALT_BLUE) $ARROW (set_color --background $ALT_BLUE black) \
    " $duration " \
    (set_color $statuscolor) $ARROW (set_color --background $statuscolor black) \
    " $exitcode " (set_color normal)
end

