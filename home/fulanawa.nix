{ config, pkgs, ... }:

{
  imports = [
    ./modules/lazygit.nix
    ./modules/yazi.nix
    ./modules/shell/bash.nix
  ];

  home.username = "fulanawa";
  home.homeDirectory = "/home/fulanawa";
  home.packages = with pkgs; [
    firefox
    neovim
    btop
    
    aria2
    wget
    curl
    
    zip
    unzip
    p7zip
    xz
    ripgrep
    eza
    bat
    tree
    pciutils
    file
    telegram-desktop

    #inputs.nh.packages."${pkgs.system}".default
  ];

  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
