{
  pkgs,
  nur-ryan4yin,
  ...
}: {
  programs.yazi = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = false;
  };
  
  xdg.configFile."yazi/theme.toml".source = "${nur-ryan4yin.packages.${pkgs.system}.catppuccin-yazi}/mocha.toml";

}
