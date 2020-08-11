echo "backing up my config files"
mkdir ./backup_files

echo "copying individual files"
cp ~/.TalkingClockCron.sh ./backup_files/
cp ~/.bashrc ./backup_files/
cp ~/.config/Clementine/Clementine.conf ./backup_files/
cp ~/.config/copyq/copyq.conf ./backup_files/
cp ~/.config/dolphinrc ./backup_files/
cp ~/.config/gtkrc ./backup_files/
cp ~/.config/gtkrc-2.0 ./backup_files/
cp ~/.config/kaccessrc ./backup_files/
cp ~/.config/kcminputrc ./backup_files/
cp ~/.config/kcmshell5rc ./backup_files/
cp ~/.config/kdeconnect.apprc ./backup_files/
cp ~/.config/kdeglobals ./backup_files/
cp ~/.config/kglobalshortcutsrc ./backup_files/
cp ~/.config/kmenueditrc ./backup_files/
cp ~/.config/krunnerrc ./backup_files/
cp ~/.config/kwinrc ./backup_files/
cp ~/.config/lattedockrc ./backup_files/
cp ~/.config/pavucontrol.ini ./backup_files/
cp ~/.config/plasma-nm ./backup_files/
cp ~/.config/plasmanotifyrc ./backup_files/
cp ~/.config/plasmarc ./backup_files/
cp ~/.config/plasmashellrc ./backup_files/
cp ~/.config/qBittorrent/qBittorrent.conf ./backup_files/
cp ~/.config/qBittorrentrc ./backup_files/
cp ~/.config/systemsettingsrc ./backup_files/
cp ~/.config/smplayer/smplayer.ini ./backup_files/
cp ~/.config/smplayerrc ./backup_files/
cp ~/.config/yakuakerc ./backup_files/
cp ~/.conkyrc ./backup_files/

echo "copying config directories"
cp -r ~/.icons/ ./backup_files/
cp -r ~/.kde/ ./backup_files/
cp -r ~/.kdeAutoThemeSwitch/ ./backup_files/
cp -r ~/.themes/ ./backup_files/

cp -r ~/.local/share/aurorae/ ./backup_files/
cp -r ~/.local/share/color-schemes/ ./backup_files/
cp -r ~/.config/gtk-3.0/ ./backup_files/
cp -r ~/.local/share/konsole/ ./backup_files/
cp -r ~/.config/Kvantum/ ./backup_files/
cp -r ~/.local/share/kwin/ ./backup_files/
cp -r ~/.config/latte/ ./backup_files/
cp -r ~/.local/share/plasma/ ./backup_files/
cp -r ~/.config/sublime-text-3/ ./backup_files/




