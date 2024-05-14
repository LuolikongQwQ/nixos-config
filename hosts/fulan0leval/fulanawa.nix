{ config, pkgs, ... }:

{
  imports = [
    ../../home/gui
    ../../home/tui
  ];

  home.username = "fulanawa";
  home.homeDirectory = "/home/fulanawa";
  home.packages = with pkgs; [
    btop
    
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
  ];
  services.ssh-agent.enable = true;
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
