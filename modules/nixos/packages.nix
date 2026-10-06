{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
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
    gcc
    gdb
    gnumake
    zig    
    SDL2   
    typst    
    simple-scan
    sane-backends
    racket
    gimp

    vscode
    discord
  ];

  fonts.enableDefaultPackages = true;
  fonts.packages = with pkgs; [
    corefonts
    cascadia-code
  ];
}
