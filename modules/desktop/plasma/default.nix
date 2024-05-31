{ configs, pkgs, ... }:
{
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    qtwebview
    sddm-kcm
  ];
  services.displayManager.sddm.enable = true;
  services.desktopManager.plasma6.enable = true;
}
