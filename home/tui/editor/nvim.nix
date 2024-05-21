{ pkgs, inputs, ... }:

{
  catppuccin.flavour = "mocha";
  programs.neovim = {
    enable = true;
    catppuccin.enable = true;
  };
}
