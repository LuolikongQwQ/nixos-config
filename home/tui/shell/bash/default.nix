let
  shellAliases = {
    cd = "__zoxide_z";
    g = "lazygit";
    y = "yazi";
    j = "just";
    lxcrun = "incus exec";
    lxclist = "incus list";
  };

in {
  home.shellAliases = shellAliases;
  programs.bash = {
    enable = true;
    enableCompletion = true;
    bashrcExtra = ''
      export PATH="${HOME}/.local/bin:${PATH}"
    '';
  };
}

