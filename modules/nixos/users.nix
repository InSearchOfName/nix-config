{ ... }:

{
  users.users.insearchofname = {
    isNormalUser = true;
    extraGroups = [ "wheel" "docker" ];
    openssh.authorizedKeys.keys = [
      "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAILvV6m3GVXnXsGxc5CJf54NJT8oywAnUmE1PBnujRnwo tommy@Holo"
    ];
  };

  security.sudo.enable = true;
}
