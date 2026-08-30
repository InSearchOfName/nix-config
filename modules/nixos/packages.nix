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

    vscode
    discord
  ];
}
