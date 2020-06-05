#!/bin/bash

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


