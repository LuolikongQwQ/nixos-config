{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    dotDir = "config/zsh";
  };
}
