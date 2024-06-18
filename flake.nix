{
  description = "simple NixOS flakes";
  nixConfig = {
    extra-substituters = [
      "https://nix-community.cachix.org"
      "https://ryan4yin.cachix.org"
    ];
    extra-trusted-public-keys = [
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
      "ryan4yin.cachix.org-1:Gbk27ZU5AYpGS9i3ssoLlwdvMIh0NxG0w8it/cv9kbU="
    ];
  };

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    # daeuniverse.url = "github:luolikongQwQ/flake.nix";
    daeuniverse-master.url = "github:daeuniverse/flake.nix/unstable";
    nh = {
      url = "github:viperML/nh";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    nur-ryan4yin = {
      url = "github:ryan4yin/nur-packages";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, home-manager, nh, nur-ryan4yin, daeuniverse-master, ... }@inputs: {
    nixosConfigurations.fulanawa-nixos = nixpkgs.lib.nixosSystem rec {
      system = "x86_64-linux";
      modules = [
        ./hosts/fulan0leval
        home-manager.nixosModules.home-manager
        {
          _module.args = { inherit inputs; };
          home-manager.useGlobalPkgs = true;
          home-manager.useUserPackages = true;
          home-manager.users.fulanawa = import ./hosts/fulan0leval/home.nix;
          home-manager.extraSpecialArgs = inputs;
        }
      ];
    };
  };
}
