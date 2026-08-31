{ lib, ... }:

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

  programs.dconf.enable = true;

  programs.dconf.profiles.user.databases = [
    {
      settings = {
        "org/gnome/settings-daemon/plugins/power" = {
          sleep-inactive-ac-type = "nothing";
          sleep-inactive-ac-timeout = lib.gvariant.mkUint32 0;
          sleep-inactive-battery-type = "suspend";
          sleep-inactive-battery-timeout = lib.gvariant.mkUint32 1800;
        };
      };
    }
  ];

  services.logind.settings.Login = {
    HandleLidSwitchExternalPower = "ignore";
  };

  networking.hostName = "nixos";
  system.stateVersion = "26.05";
}
