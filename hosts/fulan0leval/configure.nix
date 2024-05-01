{ configs, pkgs, lib, inputs, ... }:

{
  imports = [
    ./r720-hardware.nix
    ../../modules/nixos
    ../../modules/desktop
    ../../modules/base
  ];

  sound.enable = true;
  hardware.pulseaudio.enable = true;

  programs.nh = {
    enable = true;
    package = inputs.nh.packages.x86_64-linux.default;
    clean.enable = true;
    clean.extraArgs = "--keep-since 7d --keep 6";
  };

  networking = {
    useDHCP = lib.mkDefault true;
    hostName = "fulanawa-nixos";
    networkmanager.enable = true;
    nftables.enable = true;
    firewall.trustedInterfaces = [
      "incusbr0"
    ];
  };
  system.stateVersion = "23.11";
}
