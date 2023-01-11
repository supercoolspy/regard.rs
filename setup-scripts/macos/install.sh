#!/bin/bash

chmod +x uninstall.sh
./uninstall.sh

sudo mv regard /usr/local/bin

mkdir ~/.regard_config

chmod +x openGUI.sh
mv regard.dmg openGUI.sh uninstall.sh watcher server ~/.regard_config

cd ~/.regard_config

nohup server &
nohup watcher 120 &

echo 'nohup ~/.regard_config/server & nohup ~/.regard_config/watcher 120' >>~/.bash_profile

rm install.sh