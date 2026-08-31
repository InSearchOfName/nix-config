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
    gnumake
    zig    
    SDL2   
    typst    

    vscode
    discord
  ];
}
