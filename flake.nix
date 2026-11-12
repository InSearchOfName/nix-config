{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";

    claude-code.url = "github:sadjow/claude-code-nix";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, nixpkgs-unstable, home-manager, claude-code, ... }:
  let
    unstable = import nixpkgs-unstable {
      system = "x86_64-linux";
      config.allowUnfreePredicate = pkg: (pkg.pname or "") == "jetbrains-toolbox";
    };
  in {
    nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";

      modules = [
        ./hosts/nixos/configuration.nix

        home-manager.nixosModules.home-manager

        {
          environment.systemPackages = [
            claude-code.packages.x86_64-linux.default
            # stable's jetbrains-toolbox tarball 404s upstream
            unstable.jetbrains-toolbox
          ];
        }

        {
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.backupFileExtension = "backup";

          home-manager.users.insearchofname =
            import ./home/home.nix;
        }
      ];
    };
  };
}
