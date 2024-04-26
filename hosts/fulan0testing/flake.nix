{
  outputs = { ... }@inputs:
  {
    nixosConfigurations.nixos = inputs.nixpkgs.lib.nixosSystem {
      system = "x86_64-linux";
      modules = [
        ({ pkgs, ... }: {
	    users.users.fulanawa = {
              isNormalUser = true;
	      initialPassword = "123456";
            };
	    environment.systemPackages = with pkgs; [ hello ];
	    system.stateVersion = "23.11";
	})
      ];
    };
  };
  
  inputs = {
    nixpkgs-stable.url = "github:nixos/nixpkgs/23.11";
    nixpkgs-unstable.url = "github:nixos/nixpkgs/master";
    nixpkgs.follows = "nixpkgs-unstable";
  };
}
