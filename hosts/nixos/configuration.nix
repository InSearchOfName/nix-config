{ ... }:

{
  imports = [
    ./hardware-configuration.nix
    ../../modules/nixos/boot.nix
    ../../modules/nixos/nix-core.nix
    ../../modules/nixos/locale-time.nix
    ../../modules/nixos/desktop-gnome.nix
    ../../modules/nixos/networking.nix
    ../../modules/nixos/virtualisation.nix
    ../../modules/nixos/users.nix
    ../../modules/nixos/packages.nix
  ];

  networking.hostName = "nixos";
  system.stateVersion = "26.05";
}
