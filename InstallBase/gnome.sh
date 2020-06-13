#!/bin/bash

# Disabling app shortcuts (Super + <number>)
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys false

gsettings set org.gnome.desktop.wm.keybindings close "['<Super>q'"]
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 "['<Super>1']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 "['<Super>2']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 "['<Super>3']"
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 "['<Super>4']"


gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 "['<Shift><Super>exclam']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 "['<Shift><Super>quotedbl']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 "['<Shift><Super>periodcentered']"
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 "['<Shift><Super>dollar']"

gsettings set org.gnome.settings-daemon.plugins.media-keys terminal "['<Super>Return']"

# Set up the desktop

BEGINNING="gsettings set org.gnome.settings-daemon.plugins.media-keys.custom-keybinding:/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"
KEY_PATH="/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings"

gsettings set org.gnome.settings-daemon.plugins.media-keys custom-keybindings \
"['$KEY_PATH/custom0/', '$KEY_PATH/custom1/', '$KEY_PATH/custom2/', '$KEY_PATH/custom3/','$KEY_PATH/custom4/']"


$BEGINNING/custom0/ name "Google Chrome"
$BEGINNING/custom0/ command "google-chrome"
$BEGINNING/custom0/ binding "<Primary><Alt>c"


$BEGINNING/custom1/ name "Firefox"
$BEGINNING/custom1/ command "firefox"
$BEGINNING/custom1/ binding "<Primary><Alt>f"

$BEGINNING/custom2/ name "QuteBrowser"
$BEGINNING/custom2/ command "qutebrowser"
$BEGINNING/custom2/ binding "<Primary><Alt>q"

$BEGINNING/custom3/ name "ncmpcpp"
$BEGINNING/custom3/ command "gnome-terminal --window --maximize -e ncmpcpp --hide-menubar"
$BEGINNING/custom3/ binding "<Primary><Alt>m"

$BEGINNING/custom4/ name "gnome-terminal"
$BEGINNING/custom4/ command "gnome-terminal --maximize --hide-menubar"
$BEGINNING/custom4/ binding "<Primary><Alt>g"


