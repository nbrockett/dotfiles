sv-enable(){
  sudo ln -s /etc/sv/$(ls /etc/sv/ | dmenu -l 20) /var/service/
}

sv-disable(){
  sudo rm /var/service/$(ls /var/service/ | dmenu -l 20)
}