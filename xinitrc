# Set touchpad scrolling direction
xinput set-button-map 12 1 2 3 5 4 7 6

xrdb -merge ~/.Xresources
sh ~/.fehbg &
exec i3
