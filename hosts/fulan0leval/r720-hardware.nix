# Do not modify this file!  It was generated by ‘nixos-generate-config’
# and may be overwritten by future invocations.  Please make changes
# to /etc/nixos/configuration.nix instead.
{ config, lib, pkgs, modulesPath, ... }:

{
  imports =
    [ (modulesPath + "/installer/scan/not-detected.nix")
    ];
  
  # TODO: 重构为"boot = {};"
  # boot command
  
  services.xserver.videoDrivers = [ "nvidia" ];

  boot = {    
    # initramfs
    initrd = {
      availableKernelModules = [ "xhci_pci" "ahci" "usb_storage" "sd_mod" "sdhci_pci" ];
      kernelModules = []; # import initramfs kernel modules
    };

    kernelPackages = pkgs.linuxPackages_latest;

    kernelModules = [ "kvm-intel" ]; # kernel modules
    extraModprobeConfig = "ooptions kvm_intel nested=1";

    kernelParams = [ "nvidia.NVreg_PreserveVideoMemoryAllocations=1" ]; # kernel args
    
    loader = {
      systemd-boot.enable = true;
      efi.canTouchEfiVariables = true;
    };
  
  };

  hardware = {
    opengl = {
      enable = true;
      driSupport = true;
      driSupport32Bit = true;
    };
    nvidia = {
      modesetting.enable = true;
      powerManagement.enable = true;
    };
  };

  hardware.nvidia.prime = {
    sync.enable = true;
    intelBusId = "PCI:0:2:0";
    nvidiaBusId = "PCI:1:0:0";
  };

  fileSystems."/" =
    { device = "/dev/disk/by-uuid/3eccdd46-7ea1-476f-bbb4-bad5b0728024";
      fsType = "btrfs";
      options = [ "subvol=@" "compress=zstd" ];
    };

  fileSystems."/nix" =
    { device = "/dev/disk/by-uuid/3eccdd46-7ea1-476f-bbb4-bad5b0728024";
      fsType = "btrfs";
      options = [ "subvol=@nix" "compress=zstd" "noatime" ];
    };

  fileSystems."/home" =
    { device = "/dev/disk/by-uuid/3eccdd46-7ea1-476f-bbb4-bad5b0728024";
      fsType = "btrfs";
      options = [ "subvol=@home" "compress=zstd" ];
    };

  fileSystems."/root" =
    { device = "/dev/disk/by-uuid/3eccdd46-7ea1-476f-bbb4-bad5b0728024";
      fsType = "btrfs";
      options = [ "subvol=@root" "compress=zstd" ];
    };

  fileSystems."/snapshots" =
    { device = "/dev/disk/by-uuid/3eccdd46-7ea1-476f-bbb4-bad5b0728024";
      fsType = "btrfs";
      options = [ "subvol=@snapshots" "compress=zstd" ];
    };

  fileSystems."/boot" =
    { device = "/dev/disk/by-uuid/F3DA-4C68";
      fsType = "vfat";
    };

  swapDevices =
    [ { device = "/dev/disk/by-uuid/c8aa25d0-8aee-4506-bb03-d9fb4ed81e5d"; }
    ];

  # Enables DHCP on each ethernet and wireless interface. In case of scripted networking
  # (the default) this is the recommended approach. When using systemd-networkd it's
  # still possible to use this option, but it's recommended to use it in conjunction
  # with explicit per-interface declarations with `networking.interfaces.<interface>.useDHCP`.


  # networking.interfaces.enp4s0.useDHCP = lib.mkDefault true;
  # networking.interfaces.wlp3s0.useDHCP = lib.mkDefault true;
  nixpkgs.hostPlatform = lib.mkDefault "x86_64-linux";
  hardware.cpu.intel.updateMicrocode = lib.mkDefault config.hardware.enableRedistributableFirmware;
}
