{ config, pkgs, ... }:

{
  program.zsh = {
    enable = true;
    dotDir = "config/zshrc";
  };
}
