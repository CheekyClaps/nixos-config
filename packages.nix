{ inputs, config, pkgs, ... }:

{
  programs = {
    neovim = {
      enable = true;
      defaultEditor = true;
    };
    zsh = {
      enable = true;
    };
  };
  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  nixpkgs.config.permittedInsecurePackages = [
    "electron-12.2.3" # for etcher
  ];

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
    # Apps
    firefox
    kitty # Terminal emulator
    keepassxc # Password manager
    networkmanagerapplet
    obsidian # Notes
    pavucontrol # Pulse audio volume control
    signal-desktop
    vimiv-qt # Image viewer with Vim-like keybindings (Qt port)
    whatsapp-for-linux
    xfce.thunar

    # GUI
    dunst # Screenshot app
    libnotify # Desktop notifications
    hyprland
    rofi-wayland # Window switcher, run dialog and dmenu replacement for Wayland
    swww # Efficient animated wallpaper daemon
    waybar
    wayland-protocols
    wayland-utils
    wlroots # Modular Wayland compositor library
    xdg-desktop-portal-gtk
    xdg-desktop-portal-hyprland
    xdg-utils
    xwayland # Xserver for interfacing X11 apps

    # Screen shot & share
    ffmpeg_6-full
    gphoto2
    grim
    mpv
    slurp

    # CLI Utils
    bat # Syntax highlighting and Git integration
    busybox # Common UNIX utilities
    dmidecode # Reads information from BIOS (SMBIOS/DMI)
    docker
    docker-compose
    cmake # Make tools
    etcher # USB Flasher    
    git
    jq # JSON Processer
    killall # Stop processes
    kubectl # Kubernetes cluster control
    ncdu # Disk usage analyzer
    neofetch # System information display
    nmap # Network scanner/mapper
    neovim # CLI editor
    playerctl # Library for controlling media players
    polkit # Bring up authentication dialog
    python3Full
    stow
    v4l-utils
    wl-clipboard # Command-line copy/paste utilities for Wayland
  ];
  
  # Fonts
  fonts.fonts = with pkgs; [
    # Nerd fonts
    nerdfonts
    meslo-lgs-nf
  ];
}
