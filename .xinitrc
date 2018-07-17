[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
setxkbmap -option ctrl:nocaps
feh --bg-scale ~/.config/i3/wallhaven-490733.jpg
exec /usr/bin/i3 -V -d all > $HOME/\.i3/i3log-$(date +'%F-%k-%M-%S') 2>&1
pipenv shell
