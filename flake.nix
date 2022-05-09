{
  description = "NixOS configuration";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = inputs @ { self, nixpkgs }:
    let system = "x86_64-linux"; in {
      nixosConfigurations = {
        fragile = nixpkgs.lib.nixosSystem {
          inherit system;
          specialArgs = { inherit inputs; };
          modules = [
            ./hardware-configuration.nix
            ./configuration.nix
          ];
        };
      };
    };
}
