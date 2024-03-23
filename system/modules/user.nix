{ pkgs, ... }:

{
  users.users = {
    fulanawa = {
      isNormalUser = true;
      extraGroups = [ "wheel" "networkmanager" ];
      extraUsers.fulanawa.shell = pkgs.zshInteractive;
    };
  };
}
