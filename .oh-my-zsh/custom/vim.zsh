function vim {
  nvim $argv && \
  echo -ne '\e[5 q'
}
