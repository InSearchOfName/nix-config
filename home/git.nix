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
}
