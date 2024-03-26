{ pkgs, config, ... }:

{
  programs.bash = {
    enable = true;
    enableCompletion = true;
  };
  
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.atuin = {
    enable = true;
    enableBashIntegration = true;
  };
}
