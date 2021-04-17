# Set keybinds
xbindkeys -f $HOME/.config/xbindkeys.conf

# Set background
feh --bg-fill --no-fehbg $HOME/images/bg.jpg

# Set xresources
xrdb $HOME/.config/Xresources

# Start programs
openbox-session
