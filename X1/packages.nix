{ pkgs, ... }:

{
  home.packages = with pkgs;[
    mpv ffmpeg alsa-utils
    inconsolata-nerdfont
    gnome3.adwaita-icon-theme
    weechat xclip yubico-pam
    yubikey-personalization
    monero font-awesome
    firefox git exiftool
    mononoki dunst st dwm 
    python3 qemu nmap
    wireshark tor-browser-bundle-bin
    xss-lock i3lock
    toxic tor dmenu sxiv
    gimp tmux imagemagick
    unzip brightnessctl
    nheko libnotify
    keepassxc qbittorrent
    wireguard htop 
    xwallpaper youtube-dl
  ];
}
