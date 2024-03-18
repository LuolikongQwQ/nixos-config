{ config, pkgs, ... }:

{
  imports = [
    ./modules/lazygit.nix
  ];

  home.username = "fulanawa";
  home.homeDirectory = "/home/fulanawa";
  home.packages = with pkgs; [
    firefox
    neovim
    btop
    aria2
    wget
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
  
  programs.git = {
    enable = true;
    userName = "LuolikongQwQ";
    userEmail = "qq7731660@gmail.com";
  };
  
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
