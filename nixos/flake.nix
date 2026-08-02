{
  description = "phantom nix config";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      ...
    }:
    let
      system = "x86_64-linux";
    in
    {
      nixosConfigurations.phantom = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          ./configuration.nix
          # ./desktop.nix
          home-manager.nixosModules.home-manager
        ];
      };
    };
}
