{ pkgs,
  config,
  nur-ryan4yin,
  ...
}: {  
  programs.eza = {
    enable = true;
    git = true;
    icons = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
  };
 
  programs.starship = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
    settings = {
      character = {
        success_symbol = "[›](bold green)";
        error_symbol = "[›](bold red)";
      };
      palette = "catppuccin_mocha"; 
    }
     // builtins.fromTOML (builtins.readFile "${nur-ryan4yin.packages.${pkgs.system}.catppuccin-starship}/palettes/mocha.toml");
  };

  programs.atuin = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
  };

  programs.zoxide = {
    enable = true;
    enableBashIntegration = true;
    enableNushellIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableBashIntegration = true;
    historyWidgetOptions = [
      "--sort"
      "--exact"
    ];
  };
}
