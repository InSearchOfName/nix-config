{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    # Core utilities
    vim
    wget
    curl
    git
    htop
    btop
    unzip
    zip
    fastfetch
    tree
    eza
    wireguard-tools

    # Development
    gcc
    gdb
    gnumake
    zig
    SDL2
    typst
    racket
    nodejs_latest
    python3
    python3Packages.virtualenv

    # Desktop apps
    discord
    gimp
    simple-scan
    sane-backends
  ];

  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
    corefonts
    cascadia-code
  ];
}
