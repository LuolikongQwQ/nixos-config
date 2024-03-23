{ config, pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    zplug = {
      enable = true;
      zplugHome = "~/.zplug"
      plugins = [
        zplugin/zsh-exa
      ];
    };
  };
}
