{ config, pkgs, ... }:

{
  imports = [
    ./git.nix
    ./librewolf.nix
  ];

  home.username = "insearchofname";
  home.homeDirectory = "/home/insearchofname";

  home.stateVersion = "26.05";
}
