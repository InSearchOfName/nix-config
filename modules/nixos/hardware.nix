{ pkgs, ... }:

{
  # Printing and scanning
  services.printing.enable = true;
  hardware.sane.enable = true;

  # PlatformIO udev rules for microcontroller boards
  services.udev.packages = [ pkgs.platformio-core.udev ];
}
