{ config, pkgs, ... }:

{
  imports = [
    ./modules
  ];

  home.username = "fulanawa";
  home.homeDirectory = "/home/fulanawa";
  home.packages = with pkgs; [
    firefox
    google-chrome

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

    bat
    tree
    pciutils
    file
    
    telegram-desktop
    #_64gram

  ];
  services.ssh-agent.enable = true;
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
