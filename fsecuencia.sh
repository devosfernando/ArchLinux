# DevosFernando 2022-05 config arch
#
# Para montar la usb
mkdir /mnt/usb 
# Obligatorio: Montar la memoria mount /dev/sdb1 /mnt/usb
# Para el Wifi despues de instalar netctl ejecuta wifi-menu
#
#   Actualizamos los paquetes de dependencia
sudo pacman -Syy
sudo pacman --noconfirm -Sy bat lsd networkmanager curl feh nano git netctl dialog dhclient git vlc xterm firefox rofi which nitrogen picom gvfs ttf-dejavu ttf-liberation noto-fonts geeqie pavucontrol pamixer ranger glib2 arandr udiskie ntfs-3g network-manager-applet volumeicon cbatticon xorg-xinit base-devel thunar gvfs lxappearance alacritty neofetch htop unzip alsa-utils keepass opera code rofi
systemctl enable NetworkManager
#   Copiamos y damos permisos a los archivos de Qtile
rm ~/.config/qtile/config.py
cp ./file/config.py ~/.config/qtile/
cp ./file/autostart.sh ~/.config/qtile/
cp ./file/wall* ~/.config/qtile/
cp ./file/subirBrillo.sh ~/.config/qtile/
cp ./file/bajarBrillo.sh ~/.config/qtile/
chmod +x ~/.config/qtile/autostart.sh
chmod +x ~/.config/qtile/bajarBrillo.sh
chmod +x ~/.config/qtile/subirBrillo.sh
#   Copiamos Archivos de trabajo
cp -r ./file/.na* ~/
#   Thema Dracula
unzip ./file/theme/gtk-master.zip -d /usr/share/themes/
unzip ./file/theme/Dracula.zip -d /usr/share/icons/
unzip ./file/theme/alacritty-master.zip -d ~/.config/alacritty/alacritty.yml
#   Install oh-My-bash
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"
cp /file/.bashrc ~/.bashrc
#   Teclado en español
setxkbmap es
#   FIN.
reboot

# NOTA:
# - Wallpaper: nitrogen ~/.config/qtile/
# - Customize look and fell: wiget and icon theme
# - Usuario debe estar en /etc/sudoers -> katarsi ALL=(ALL:ALL) ALL
# - Usuario debe estar en /etc/passwd -> katarsi:x:1001:1001::/home/katarsi:/bin/bash
# - windows + f = Firefox
# - windows + 1 = Pantalla 1
# - windows + intro = Terminal
# - ctrl + shift + c = Copiar 

# git clone git@github.com:valerie-makes/nano-highlight.git
#  cd .nano-highlight/
#  314  2022-05-27 14:19:13 make install
#  315  2022-05-27 14:20:21 echo "include ~/.nano/syntax/ALL.nanorc" >> ~/.nanorc
#  316  2022-05-27 14:21:51 rm info3.txt 
#  317  2022-05-27 14:21:53 cd ..
#y3  318  2022-05-27 14:21:55 history > info3.txt
