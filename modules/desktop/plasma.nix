{ configs, pkgs, ... }:

{
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    sddm-kcm
    qtwebview
  ];
  services.xserver.enable = true;
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
}
