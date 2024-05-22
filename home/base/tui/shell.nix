{ pkgs, config, inputs, ... }:

{
  catppuccin.flavour = "mocha";
  programs.bash = {
    enable = true;
    enableCompletion = true;
  };

  programs.eza = {
    enable = true;
    git = true;
    icons = true;
    enableBashIntegration = true;
  };
 
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    catppuccin.enable = true;
  };

  programs.atuin = {
    enable = true;
    enableBashIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
  };
}
