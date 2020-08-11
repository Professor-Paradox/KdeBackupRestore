echo "restoring my config files"

echo "restoring individual files"
cp ./backup_files/.TalkingClockCron.sh ~/
cp ./backup_files/.bashrc ~/
cp ./backup_files/Clementine.conf ~/.config/Clementine/
cp ./backup_files/copyq.conf ~/.config/copyq/
cp ./backup_files/dolphinrc ~/.config/
cp ./backup_files/gtkrc ~/.config/
cp ./backup_files/gtkrc-2.0 ~/.config/
cp ./backup_files/kaccessrc ~/.config/
cp ./backup_files/kcminputrc ~/.config/
cp ./backup_files/kcmshell5rc ~/.config/
cp ./backup_files/kdeconnect.apprc ~/.config/
cp ./backup_files/kdeglobals ~/.config/
cp ./backup_files/kglobalshortcutsrc ~/.config/
cp ./backup_files/kmenueditrc ~/.config/
cp ./backup_files/krunnerrc ~/.config/
cp ./backup_files/kwinrc ~/.config/
cp ./backup_files/lattedockrc ~/.config/
cp ./backup_files/pavucontrol.ini ~/.config/
cp ./backup_files/plasma-nm ~/.config/
cp ./backup_files/plasmanotifyrc ~/.config/
cp ./backup_files/plasmarc ~/.config/
cp ./backup_files/plasmashellrc ~/.config/
cp ./backup_files/qBittorrent.conf ~/.config/qBittorrent/
cp ./backup_files/qBittorrentrc ~/.config/
cp ./backup_files/systemsettingsrc ~/.config/
cp ./backup_files/smplayer.ini ~/.config/smplayer/
cp ./backup_files/smplayerrc ~/.config/
cp ./backup_files/yakuakerc ~/.config/
cp ./backup_files/.conkyrc ~/

echo "restoring config directories"
cp -r ./backup_files/.icons/  ~/ 
cp -r ./backup_files/.kde/ ~/
cp -r ./backup_files/.kdeAutoThemeSwitch/  ~/
cp -r ./backup_files/.themes/ ~/

cp -r ./backup_files/aurorae/ ~/.local/share/
cp -r ./backup_files/color-schemes/  ~/.local/share/
cp -r ./backup_files/gtk-3.0/ ~/.config/
cp -r ./backup_files/konsole/ ~/.local/share/
cp -r ./backup_files/Kvantum/  ~/.config/
cp -r ./backup_files/kwin/ ~/.local/share/
cp -r ./backup_files/latte/  ~/.config/
cp -r ./backup_files/plasma/ ~/.local/share/
cp -r ./backup_files/sublime-text-3/ ~/.config/




