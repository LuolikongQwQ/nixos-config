{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    nil
    htop
    btop
  ];
}
