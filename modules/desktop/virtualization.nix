{ config, pkgs, ... }:

{
  # Enable nested virsualization, required by security containers and nested vm.
  # This should be set per host in /hosts, not here.
  #
  ## For AMD CPU, add "kvm-amd" to kernelModules.
  # boot.kernelModules = ["kvm-amd"];
  # boot.extraModprobeConfig = "options kvm_amd nested=1";  # for amd cpu
  #
  ## For Intel CPU, add "kvm-intel" to kernelModules.
  # boot.kernelModules = ["kvm-intel"];
  # boot.extraModprobeConfig = "options kvm_intel nested=1"; # for intel cpu

  boot.kernelModule = [ "vfio-pci" ];

  virtualisation.libvirtd = {
    enable = true;
    onBoot = "start";
    onShutdown = "suspend";
  };

  virtualisation.incus = {
    enable = true;
    startTimeout = 50;
  };

  virtualisation.podman = {
    enable = true;
  };

  environment.systemPackages = with pkgs; [
    virt-manager
    qemu
    qemu_kvm
  ];
}
