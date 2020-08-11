read -p "Is this Ubuntu Installation Dual booted with windows (Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then echo "modifying time for both Operating Systems" 
timedatectl set-local-rtc 1 --adjust-system-clock
fi

echo -e "\n==============================\ninstalling latest system updates\n=============================="
sudo apt update && apt upgrade && apt dist-upgrade && apt autoremove -y
echo -e "\n==============================\nUsers with root access\n=============================="
grep '^sudo:.*$' /etc/group | cut -d: -f4
echo -e "\n==============================\nLocated Desktop Environments\n=============================="
ls -l /usr/share/xsessions/

read -p "Install Kde Plasma Desktop Environment (Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt install kde-plasma-desktop -y
fi

echo -e "\n==============================\nLocated Desktop Environments\n=============================="
ls -l /usr/share/xsessions/

read -p "Install chrome,(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install ./google-chrome-stable_current_amd64.deb -y
fi

read -p "Install nvidia graphic card drivers(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
echo "installing nvidia driver,check manually for latest version"
yes | sudo add-apt-repository ppa:graphics-drivers/ppa
sudo apt update
sudo apt-get install nvidia-driver-450 -y
fi

read -p "Install smplayer(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
yes | sudo add-apt-repository ppa:rvm/smplayer 
sudo apt update
sudo apt-get install smplayer smplayer-themes smplayer-skins -y 
fi

read -p "Install unzip, software that unzips archive files(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install unzip -y
fi

read -p "Install samba, network share archive tool(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install samba -y
fi

read -p "Install clementine, Opensource music player(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install clementine -y
fi

read -p "Install yakuake, drop down terminal for KDE(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install yakuake -y
fi

read -p "Install copyq,clipboard manager for linux(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install copyq -y
fi

read -p "Install qbittorrent,open source torrent client(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install qbittorrent -y
fi

read -p "Install git,Git tool(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install git-all -y
fi

read -p "Install conky,a resource monitor for linux(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install conky-all -y
fi

read -p "Install plasma tools,multiple tools for kde(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install net-tools ifupdown plasma-widgets-addons plasma-nm libgtk2.0-0:i386 libgdk-pixbuf2.0-0:i386 ubuntu-restricted-extras libqt5svg5 gdebi synaptic qml-module-qtquick-controls -y
fi

read -p "Install android studio,android studio and needed tools(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo snap install android-studio 
sudo apt-get install cpu-checker qemu-kvm bridge-utils meld -y
fi

read -p "Install vscode,open source code editor(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo apt-get install conky-all -y
fi

read -p "Install spotify,spotify client for ubuntu(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo snap install spotify 
fi

read -p "Install sublime text,text editor for linux(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo snap install sublime-text --classic
fi

read -p "Install vlc,vlc media player for ubuntu(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
sudo snap install vlc
fi

read -p "Remove Ubuntu Desktop Environment(gnome)(Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
echo -e "\n==============================\nLocated Desktop Environments\n=============================="
ls -l /usr/share/xsessions/
sudo apt-get purge ubuntu-desktop ubuntu.desktop gnome-shell gnome-shell* gnome* gnome-* -y
sudo rm -rf /usr/share/xsessions/ubuntu.desktop
sudo rm -rf /usr/share/xsessions/ubuntu-communitheme-snap.desktop
echo -e "\n==============================\nLocated Desktop Environments\n=============================="
ls -l /usr/share/xsessions/
fi

read -p "setup My own configuration (Y/N)?" confirm
if [[ $confirm == [Yy] ]]; then 
echo -e "\n==============================\nediting system files\n=============================="
echo "Backing up the files for safety"
sudo cp /etc/samba/smb.conf /etc/samba/smb.conf.backup
sudo cp /etc/pulse/daemon.conf /etc/pulse/daemon.conf.backup
sudo cp /etc/asound.conf /etc/asound.conf.backup
sudo cp /etc/resolv.conf /etc/resolv.conf.backup
sudo cp /etc/network/interfaces /etc/network/interfaces.backup

# restarting samba service
sudo service smbd restart
sudo ufw allow samba

# editing individual files configuration
echo "changing samba permissions of D drive"
sudo tee -a /etc/samba/smb.conf > /dev/null <<EOT
[D-Drive ]
path = /mnt/D
writeable = yes
browseable = yes
comment = Sharing D drive
EOT

echo "editing pulse config"
sudo tee -a /etc/pulse/daemon.conf > /dev/null <<EOT
default-sample-format = float32le
default-sample-channels = 2
default-channel-map = front-left,front-right
default-fragments = 2
default-fragment-size-msec = 125
resample-method = speex-float-10
high-priority = yes
nice-level = -11
realtime-scheduling = yes
realtime-priority = 9
rlimit-rtprio = 9
daemonize = no
default-sample-rate = 48000
alternate-sample-rate = 44100
EOT

sudo tee -a /etc/asound.conf > /dev/null <<EOT
#Use PulseAudio plugin hw
pcm.!default {
type plug
slave.pcm hw
}
EOT

pulseaudio -k
sudo systemctl restart networking.service
fi


# sh ./Install_Files/FilesCopy.sh
sudo apt-get autoremove -y