# Base Install Packages [pacman]
base base-devel linux linux-firmware grub grub-btrfs efibootmgr os-prober reflector vim nvidia nvidia-utils xorg-server xorg-apps xorg-xinit i3-gaps noto-fonts ttf-font-awesome ttf-dejavu ttf-ubuntu-font-family ranger rofi alacritty w3m ffmpegthumbnailer ffmpeg chromium firefox mpv mplayer alsa-utils pulsemixer pulseaudio pulseaudio-alsa python python-pip nodejs npm yarn deno feh git i3lock code arandr ttf-hack noto-fonts-emoji openssl cmake discord curl wget ntfs-3g man mlocate ueberzug gnome-keyring zip unzip deluge deluge-gtk docker fpc-src fpc papirus-icon-theme imagemagick slop maim xclip htop

# Networking
DHCP = dhcpd
STATIC = systemd-resolved + systemd-networkd *included in base*

# Python Packages [pip]
youtube_dl docker-compose

# Node Packages [yarn]
serve

# AUR [yay]
picom-git chromium-widevine spotify polybar

# Build from source
yay 	- https://aur.archlinux.org/yay.git [mkpkg]

qjs	- https://github.com/bellard/quickjs.git [unix make]

# VS Code Extensions
The important ones are indented
```
    C/C++ ~ Microsoft
    CMake Tooks ~ ms-vscode
    CMake ~ twxs
    Deno ~ denoland
Discord Presence 
    Docker ~ ms-azuretools
    Espressif IDE ~ Espressif Systems
    Hex Editor ~ ms-vscode
    Live Server ~ ritwickdey
    Markdown PDF ~ yzane
    Firebase ~ toba
    OmniPascal ~ Wosi
    Python ~ ms-python
Native Debug ~ webfreak
Prettier
ESlint
```

# Aditional

## Runtimes
python2

## Dev
firebase-tools google-cloud-sdk android-tools scrcpy usbutils gdb valgrind nmap clang

## Computer Vision
cuda opencv

## Art
krita inkscape gimp xf86-input-wacom
