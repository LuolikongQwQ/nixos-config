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
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations.fulanawa-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./system/hardware/hardware-configuration.nix
        ./system/config/configuration.nix
        ./system/config/dae.nix
	home-manager.nixosModules.home-manager
	{
	  _module.args = { inherit inputs; };
	  
	  home-manager.useGlobalPkgs = true;
	  home-manager.useUserPackages = true;
          home-manager.users.fulanawa = import ./user/fulanawa.nix;

	  nix.settings.trusted-users = [ "fulanwa" ];
          nix.settings = {
            substituters = [
              "https://mirror.sjtu.edu.cn/nix-channels/store"
              "https://cache.nixos.org"
            ];
            trusted-public-keys = [
              "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
            ];
	  };
	}
      ];
    };
  };
}
