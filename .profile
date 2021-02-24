# Add local bin to PATH
PATH="$PATH:$HOME/.local/bin"

# MPD daemon start (if no other user instance exists)
[ ! -s ~/.config/mpd/pid ] && mpd
