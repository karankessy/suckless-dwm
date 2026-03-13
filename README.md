# suckless-dwm

A customized [dwm](https://dwm.suckless.org/) (Dynamic Window Manager) setup featuring the Dracula color scheme, patched with gaps, bar padding, underline tags, per-tag layouts, movestack, cycle layouts, and an auto-start hook. Bundled with matching configs for **st**, **dmenu**, **slstatus**, **kitty**, **rofi**, **picom**, **dunst**, and more.

## Features

- **Dracula theme** across dwm, st, dmenu, and rofi
- **Window gaps** with adjustable size (`Super+-`/`Super+=`)
- **Bar padding** (vertical + horizontal)
- **Underline indicators** on active tags
- **Per-tag layouts** (tile, float, monocle, cycle)
- **Movestack patch** to reorder windows in the stack
- **Autostart** script with duplicate-process prevention
- **slstatus** bar showing CPU, RAM, disk usage, and date/time
- **st terminal** with alpha transparency and Dracula colors
- **Nerd Font icons** on all 9 workspace tags

## Included Components

| Component   | Version | Description                        |
|-------------|---------|------------------------------------|
| dwm         | 6.3     | Dynamic window manager             |
| st          | 0.8.5   | Simple terminal with alpha patch   |
| dmenu       | 5.1     | Dynamic menu (centered, grid mode) |
| slstatus    | -       | Status bar for dwm                 |

## Keybindings

`Super` is the main modifier key (Mod4/Windows key).

### Launchers

| Keybinding             | Action                   |
|------------------------|--------------------------|
| `Super + Return`       | Open kitty terminal      |
| `Super + Shift + Return` | Open st (floating)    |
| `Super + a`            | Rofi app launcher        |
| `Super + e`            | Rofi emoji picker        |
| `Alt + Tab`            | Rofi window switcher     |
| `Super + p`            | dmenu_run                |
| `Super + r`            | dmenu_term               |
| `Print`                | Flameshot screenshot     |

### Window Management

| Keybinding             | Action                   |
|------------------------|--------------------------|
| `Super + q`            | Kill focused window      |
| `Super + Left/Right`   | Focus next/prev window   |
| `Super + Shift + Left/Right` | Move window in stack |
| `Ctrl + Left/Right`    | Resize master area       |
| `Super + Space`        | Toggle layout            |
| `Super + Shift + Space`| Toggle floating          |
| `Super + b`            | Toggle status bar        |
| `Super + t`            | Tiled layout             |
| `Super + f`            | Floating layout          |
| `Super + m`            | Monocle layout           |
| `Super + Ctrl + ,/.`   | Cycle layouts            |

### Gaps

| Keybinding             | Action                   |
|------------------------|--------------------------|
| `Super + -`            | Decrease gaps            |
| `Super + =`            | Increase gaps            |
| `Super + Shift + =`    | Reset gaps               |

### Utilities

| Keybinding             | Action                   |
|------------------------|--------------------------|
| `Super + l`            | Lock screen              |
| `Super + n`            | WiFi menu                |
| `Super + v`            | PulseAudio volume control|
| `Super + Shift + v`    | ALSA mixer               |
| `Ctrl + Alt + h`       | htop                     |
| `Ctrl + Alt + b`       | btop                     |
| `Ctrl + Alt + d`       | ncdu disk analyzer       |
| `Ctrl + Alt + f`       | fzf finder               |
| `Super + Shift + s`    | ranger file manager      |
| `Alt + F4`             | Power menu               |

### Tags / Workspaces

| Keybinding             | Action                   |
|------------------------|--------------------------|
| `Super + 1-9`          | Switch to tag            |
| `Super + Shift + 1-9`  | Move window to tag       |
| `Super + 0`            | View all tags            |
| `Super + Shift + q`    | Quit dwm                 |

## Dependencies

### Build Dependencies

```
gcc make libx11-dev libxft-dev libxinerama-dev
```

### Arch Linux

```bash
sudo pacman -S rofi pcmanfm ranger kitty flameshot ncdu picom feh btop \
    alsa-utils xfce4-power-manager dunst pavucontrol betterlockscreen imwheel
```

### Debian / Ubuntu

```bash
sudo apt install rofi pcmanfm ranger kitty flameshot ncdu picom feh btop \
    alsa-utils xfce4-power-manager dunst pavucontrol betterlockscreen imwheel \
    gcc make libx11-dev libxft-dev libxinerama-dev
```

## Installation

```bash
git clone https://github.com/karankessy/suckless-dwm.git
cd suckless-dwm
chmod +x install.sh
./install.sh
```

The install script will:
1. Copy fonts to `~/.fonts`
2. Copy config files to `~/.config`
3. Set up the autostart script
4. Install xinitrc and imwheelrc
5. Build and install dwm, dmenu, slstatus, and st

## Project Structure

```
suckless-dwm/
  dwm-6.3/          # dwm source with patches
  st-0.8.5/         # st terminal source
  dmenu-5.1/        # dmenu source
  slstatus/          # status bar source
  autostart/         # autostart script (runs on dwm start)
  bin/               # helper scripts (powermenu, rofi-network-manager, etc.)
  config/            # app configs (kitty, picom, rofi, ranger, htop, etc.)
  fonts/             # Nerd Fonts (JetBrains Mono, Iosevka, MesloLGS, etc.)
  install.sh         # automated installer
  mydwm              # dwm session launcher with restart loop
  xinitrc            # X init configuration
  dwm.desktop        # display manager desktop entry
```

## License

dwm is developed by [suckless.org](https://suckless.org/) and released under the MIT license. Hobby Project. Use it as you like.
