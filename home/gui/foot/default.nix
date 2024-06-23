{ pkgs, ... }: {
  programs.foot = {
    enable = true;
    server.enable = false;
    settings = {
      # See <https://codeberg.org/dnkl/foot/src/branch/master/foot.ini>
      main = {
        shell = "nu";
	term = "xterm-256color";
        font = "JetBrainsMono Nerd Font Mono:size=12";
        dpi-aware = "yes";
      };
      environment = {
        LANG="C.utf8";
      };
      url = {
        launch = "xdg-open";
        label-letters = "sadfjklewcmpgh";
        protocols = "https, http, ftps, file";
        uri-characters = ''
          abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789-_.,~:;/?#@!$&%*+="'()[]
        '';
      };
      cursor = {
        style = "underline";
        blink = "yes";
      };
      mouse = {
        hide-when-typing = "yes";
      };
      touch = { long-press-delay = 200; };
    };
  };
}
