{ config, pkgs, ... }:

{
  imports = [
    ../../home/gui
    ../../home/tui
    ../../home/base/gui
  ];

  home.username = "fulanawa";
  home.homeDirectory = "/home/fulanawa";
  
  services.ssh-agent.enable = true;
  home.stateVersion = "23.11";
  programs.home-manager.enable = true;
}
