{ pkgs, ... }:

{
  users.users = {
    fulanawa = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
      shell = programs.zsh;
    };
  };
}
