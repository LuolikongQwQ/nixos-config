{ pkgs, ... }:

{
  users.users = {
    fulanawa = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };
  environment.shells = with pkgs; [
    bashInteractive
    zsh
  ];
}

