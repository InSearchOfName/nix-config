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
    wireguard-tools

    vscode
    discord
  ];
}
