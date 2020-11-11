# live-build-interface
A build system interface for Debian Live Build.

The default system is designed to provide a number of useful packages from the Debian repository within a window manager (i3) with customized appearance settings to achieve a light-weight, conveinent, and efficient version of Debian Linux.

The build system interface allows ease of deployment across builds facilitating unit testing, and an organized development process.

## default system
os: Debian Buster (amd64)

gtk theme: Adawai Dark

packages:
> gimp
iotop
rfkill
ufw
apt-transport-https
ca-certificates
vnstat
vim
emacs
nano
gparted
lightdm
i3
i3blocks
tango-icon-theme
lxappearance
gtk-chtheme
deepin-screenshot
brasero
evolution
libreoffice
abook
thunar
arandr
rsync
qrencode
pandoc
pelican
apachetop
pavucontrol
feh
zathura
xpdf
xterm
zip
p7zip
firefox-esr
chromium
lynx

## configuring live builds
Changes made to the configurtion files within *Resources/Config-Templates/includes.chroot/* will become the corresponding `/opt`, `/etc`, and `/home` folders for newly created builds.

## dependencies

`live-build` # live-build-interface is an interface for this package

`terminator` # allows other terminals to be launched

`espeak` # used for announcing a completed build

## references

`https://www.debian.org/devel/debian-live/`

`https://manpages.debian.org/testing/live-build/live-build.7.en.html`

`https://live-team.pages.debian.net/live-manual/html/live-manual/index.en.html`
