let
  shellAliases = {
    cd = "__zoxide_z";
    g = "lazygit";
    y = "yazi";
    j = "just";
  };

in { pkgs, ... }: {
  home.shellAliases = shellAliases;
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="$HOME/.local/bin:$PATH"
      # eval "$(${pkgs.direnv}/bin/direnv hook bash)"
    '';
  };
}

