#!/bin/bash
set -e

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

echo "==> Installing suckless-dwm configuration..."

mkdir -p ~/.fonts ~/.config ~/.autostart ~/bin

echo "==> Copying fonts..."
cp -rv "$SCRIPT_DIR/fonts/"* ~/.fonts/

echo "==> Copying config files..."
cp -rv "$SCRIPT_DIR/config/"* ~/.config/

echo "==> Copying bin scripts..."
cp -rv "$SCRIPT_DIR/bin/"* ~/bin/

echo "==> Setting up autostart..."
cp -v "$SCRIPT_DIR/autostart/autostart.sh" ~/.autostart/
chmod u+x ~/.autostart/autostart.sh

echo "==> Installing xinitrc..."
cp -v "$SCRIPT_DIR/xinitrc" ~/.xinitrc
chmod u+x ~/.xinitrc

echo "==> Installing imwheelrc..."
cp -v "$SCRIPT_DIR/imwheelrc" ~/.imwheelrc

echo "==> Installing mydwm launcher..."
sudo cp -v "$SCRIPT_DIR/mydwm" /usr/local/bin/mydwm
sudo chmod +x /usr/local/bin/mydwm

echo "==> Installing dwm.desktop..."
sudo cp -v "$SCRIPT_DIR/dwm.desktop" /usr/share/xsessions/dwm.desktop

echo "==> Building dwm..."
cd "$SCRIPT_DIR/dwm-6.3" && sudo make clean install

echo "==> Building dmenu..."
cd "$SCRIPT_DIR/dmenu-5.1" && sudo make clean install

echo "==> Building slstatus..."
cd "$SCRIPT_DIR/slstatus" && sudo make clean install

echo "==> Building st..."
cd "$SCRIPT_DIR/st-0.8.5" && sudo make clean install

echo "==> Done! Log out and select DWM from your display manager."


