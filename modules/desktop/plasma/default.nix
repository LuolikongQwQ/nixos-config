{ configs, pkgs, ... }:
{
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    qtwebview
  ];
  services.diskplayManager.sddm.wayland.enable = true;
  services.desktopManager.plasma6.enable = true;
}
