{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enableZshIntegration = true;
    #enableNushellIntegration = false;
    #settings = {};
  };
}
