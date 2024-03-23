{ pkgs, ... }:

{
  programs.yazi = {
    enable = true;
    enablebashIntegration = true;
    #enableNushellIntegration = false;
    #settings = {};
  };
}
