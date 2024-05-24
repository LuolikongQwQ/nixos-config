{ configs, pkgs, ... }:

{
  services = {
    xserver = {
      enable = true;
      displayManager.sddm.enable = true;
      displayManager.defaultSession = "plasma";
    };
    desktopManager.plasma6.enable = true;
  };
  
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    sddm-kcm
    qtwebview
  ];
}
