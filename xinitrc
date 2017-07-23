compton &
xrdb -merge .Xresources
setxkbmap it
xbindkeys
synclient HorizTwoFingerScroll=1
feh --randomize --bg-fill ~/Images
nm-applet &
exec ck-launch-session i3
