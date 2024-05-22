{ pkgs, lib, ... }:   
{
  programs.bash = {
    enable = true;
    shellAliases = {
      cd = "__zoxide_z";
      lygit = "lazygit";
    };
  };
}
