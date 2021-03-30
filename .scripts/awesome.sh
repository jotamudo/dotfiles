wal --theme solarized
feh --bg-fill "/home/j_mudo/Downloads/minimalism-simple-background-solarized-colorscheme-palette-swap-1597903-wallhere.com (1).jpg"
setxkbmap -layout br -model pc105 -variant abnt2 -option "ctrl:swapcaps"
xset r rate 200 40

killall -q picom
picom &

killall -q xsettingsd
xsettingsd &

killall -q nm-applet
nm-applet &
