{ lib, ... }:

{
  services.xserver.enable = true;
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  programs.dconf.enable = true;
  programs.dconf.profiles.user.databases = [
    {
      settings."org/gnome/settings-daemon/plugins/power" = {
        sleep-inactive-ac-type = "nothing";
        sleep-inactive-ac-timeout = lib.gvariant.mkUint32 0;
        sleep-inactive-battery-type = "suspend";
        sleep-inactive-battery-timeout = lib.gvariant.mkUint32 1800;
      };
    }
  ];

  services.logind.settings.Login.HandleLidSwitchExternalPower = "ignore";
}
