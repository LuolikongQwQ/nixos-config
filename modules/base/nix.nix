{ config, nixpkgs, ... }:

{
  nixpkgs.config.allowUnfree = true;
  nix = {
    settings = {
      auto-optimise-store = true;
      trusted-users = [ "fulanawa" ];
      substituters = [
        "https://cache.nixos.org"
        #"https://mirror.sjtu.edu.cn/nix-channels/store"
        "https://nix-community.cachix.org"
        "https://mirrors.tuna.tsinghua.edu.cn/nix-channels/store"
      ];
      trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
      ];
      experimental-features = [ "nix-command" "flakes" ];
    };
    
    gc = {
      automatic = true;
      dates = "weekly";
      options = "--delete-older-than 1w";
    };
  };
}
