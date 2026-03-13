#!/usr/bin/bash

run() {
    if ! pgrep -f "$1" > /dev/null 2>&1; then
        "$@" &
    fi
}

run imwheel
~/.fehbg &
run slstatus
run dunst
run picom --experimental-backends
run xfce4-power-manager
run /usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1


