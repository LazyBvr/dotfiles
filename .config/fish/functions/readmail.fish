function readmail
  flock ~/.tray_state gawk -i inplace '/mail/ {$2 = 0} {print}' ~/.tray_state
  update_tray
end
