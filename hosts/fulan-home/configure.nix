{ configs, pkgs, ... }:

{
  imports = [
    ./r720-hardware.nix
    ../../system/base-desktop.nix
  ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  networking = {
    useDHCP = lib.mkDefault true;
    hostName = "fulanawa-nixos";
    networkmanager.enable = true;
  };
}
