{ pkgs, lib, ... }:

{
  users.users.fulanawa = {
    isNormalUser = true;
    initialPassword = "123456";
  };

  environment.systemPackages = with pkgs; [ hello ];
  system.stateVersion = "23.11";
}
