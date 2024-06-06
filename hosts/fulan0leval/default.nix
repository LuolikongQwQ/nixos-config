{ configs, pkgs, lib, inputs, ... }:

{
  imports = [
    ./r720-hardware.nix
    ../../modules/desktop.nix
    ../../modules/base.nix
    ./ssh.nix
  ];
 
  programs.nh = {
    enable = true;
    package = inputs.nh.packages.x86_64-linux.default;
    # clean.enable = true;
    # clean.extraArgs = "--keep-since 7d --keep 6";
  };

  networking = {
    useDHCP = lib.mkDefault true;
    hostName = "fulanawa-nixos";
    networkmanager.enable = true;
    nftables.enable = true;
    firewall.trustedInterfaces = [
      "incusbr0"
      "virbr0"
      "wlp3s0"
    ];
  };
  system.stateVersion = "23.11";
}
