{
  description = "simple NixOS flakes";
  nixConfig = {
    extra-substituters = [ "https://nix-community.cachix.org" ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    daeuniverse.url = "github:daeuniverse/flake.nix/unstable";
    nh = {
      url = "github:viperML/nh";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nh, ... }@inputs: {
    nixosConfigurations.fulanawa-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./hosts/fulan0leval/default.nix
        home-manager.nixosModules.home-manager
        {
          _module.args = { inherit inputs; };
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.fulanawa = {
            imports = [
              ./hosts/fulan0leval/fulanawa.nix
            ];
          };
          #home-manager.extraSpecialArgs = inputs;
        }
      ];
    };
  };
}
