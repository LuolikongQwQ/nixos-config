{
  description = "simple NixOS flakes";
  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    daeuniverse.url = "github:daeuniverse/flake.nix";
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
        ./hosts/r720-hardware.nix
	./system/base-desktop.nix
	./modules/base/nix.nix
	home-manager.nixosModules.home-manager
	inputs.nh.nixosModules.default
	{
	  _module.args = { inherit inputs; };
	  
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
          home-manager.users.fulanawa = import ./home/fulanawa.nix;
          home-manager.extraSpecialArgs = inputs;
	  nh = {
            enable = true;
	    clean.enable = true;
	    clean.extraArgs = "--keep-since 7d --keep 6";
          };
        }
      ];
    };
  };
}
