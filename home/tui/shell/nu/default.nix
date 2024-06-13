let
  shellAliases = {
    g = "lazygit";
    y = "yazi";
  };
in {
  programs.nushell = {
    enable = true;
    configFile.source = ./utils.nu;
    
    inherit shellAliases;
  };
}
