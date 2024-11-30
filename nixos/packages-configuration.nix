{ config, pkgs, ... }:

{
  # System-wide packages to be installed
  # nix.settings.experimental-features = [
  #   "nix-command"
  #   "flakes"
  # ];
  environment.systemPackages = with pkgs; [
    # Nix utilities
    home-manager

    # Basic utilities
    extundelete
    xdg-user-dirs
    xdotool
    xclip
    wget
    xss-lock
    unzip
    unrar
    ffmpegthumbnailer
    gnumake
    rofi
    dunst
    firefox
    neovim
    nodejs
    alacritty
    nitrogen
    jq
    lsd
    xfce.tumbler
    xfce.ristretto
    gpick
    polkit
    polkit_gnome
    gnome3.gnome-disk-utility
    lxappearance
    tree
    eww
    apvlv

    # Docker
    #docker

    # Latex
    texliveMedium

    # Calculator cli
    bc

    # i3 - sway acommodate windows
    autotiling

    # For trash alias for rm
    trash-cli

    # Video
    yt-dlp
    ffmpeg
    obs-studio
    mpv

    # Archiver utilities
    unzip
    gnutar
    xarchiver

    # Offimatic Suit
    libreoffice-qt

    # Vectorr Edit
    inkscape

    # Screen Capture
    maim

    # Audio Utilities
    alsa-utils
    pulseaudio
    gettext

    # Music Player
    mpd
    ncmpcpp
    mpc-cli

    # Extra utilities
    btop
    cava
    peaclock

    # Read and edit disck with Windows
    ntfs3g

    # Videocalls
    zoom-us

    # Code programing relationated
    vscodium
    git
    git-lfs

    # C++ Development
    gcc

    # Java Development
    jdk
    gradle
    maven

    # Python Development
    python3
    python312Packages.pygments

    # Chat
    telegram-desktop
    vesktop
  ];

  # MYSQL
  # Configura MySQL
  services.mysql = {
    enable = true;
    package = pkgs.mysql80;
  };
}
