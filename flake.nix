{
  description = "simple NixOS flakes";
  
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    daeuniverse.url = "github:daeuniverse/flake.nix";
    #nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
  };

  outputs = { self, nixpkgs, ... }@inputs: {
    nixosConfigurations.fulanawa-nixos = nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ./system/config/configuration.nix
	{
	  _module.args = { inherit inputs };
        }
	#inputs.daeuniverse.nixosModules.dae
      ];
    };
  };
}
