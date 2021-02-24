# xsetroot -bitmap $HOME/.config/spectrwm/bg

# Set keybinds
xbindkeys -f $HOME/.config/xbindkeys.conf

# Set background
xsetroot -solid rgb:00/00/00

# Set xresources
xrdb $HOME/.config/Xresources

# Start programs
spectrwm
