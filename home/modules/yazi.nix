{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enablebBashIntegration = true;
    
    #enableNushellIntegration = false;
    #settings = {};
  };
}
