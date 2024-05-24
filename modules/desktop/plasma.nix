{ configs, pkgs, ... }:

{
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    sddm-kcm
    qtwebview
  ];
  services.xserver.enable = true;
  displayManager.sddm.enable = true;
  desktopManager.plasma6.enable = true;
}
