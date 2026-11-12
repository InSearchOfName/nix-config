{ ... }:

{
  programs.git = {
    enable = true;

    settings = {
      user = {
        name = "InSearchOfName";
        email = "128755553+InSearchOfName@users.noreply.github.com";
      };

      init.defaultBranch = "main";
    };
  };

  programs.gh = {
    enable = true;
    gitCredentialHelper.enable = true;
    settings.git_protocol = "https";
  };
}
