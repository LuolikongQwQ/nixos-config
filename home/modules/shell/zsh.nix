{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    zplug = {
      enable = true;
      plugins = [
        zplugin/zsh-exa
      ];
    };
  };
}
