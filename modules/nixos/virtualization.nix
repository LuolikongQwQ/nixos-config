{ config, pkgs, ... }:

{
  virtualisation.libvirtd = {
    enable = true;
    onBoot = "start";
    onShutdown = "suspend";
    qemu.package = pkgs.qemu_kvm;
  };
  programs.virt-manager.enable = true;

  virtualisation.incus = {
    enable = true;
    socketActivation = false;
  };

  virtualisation.podman = {
    enable = true;
  };
}
