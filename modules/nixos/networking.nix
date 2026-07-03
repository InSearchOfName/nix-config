{ ... }:

{
  networking.networkmanager.enable = true;

  services.openssh = {
    enable = true;
    settings = {
      PasswordAuthentication = false;
      PermitRootLogin = "no";
      AllowUsers = [ "insearchofname" ];
      MaxAuthTries = 3;
    };
  };
}
