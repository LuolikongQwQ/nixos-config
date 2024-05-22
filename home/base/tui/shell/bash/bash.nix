{ pkgs, lib, ... }: 

let
  Alias = {
    cd = "__zoxide_z";
    lygit = "lazygit";
  };
  
in {
  programs.bash = {
    enable = true;
    shellAlias = { inherit Alias; };
  };
}
