# enable output through nvidia pci-e card and intel onboard graphics
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --auto

# hold caps lock for ctrl, tap for esc
setxkbmap -option "caps:ctrl_modifier" && xcape -e "Caps_Lock=Escape"
