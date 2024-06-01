{ configs, pkgs, ... }:
{
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    qtwebview
  ];
  environment.systemPackages = with pkgs.kdePackages = [
    kdeconnect-kde
    yakuake
    qtwebview
    qtwebengine
  ];  
  
  services.displayManager.sddm.enable = true;
  services.displayManager.sddm.wayland = {
    enable = true;
    compositor = "kwin";
  };
  services.displayManager.defaultSession = "plasma";
  services.displayManager.sddm.settings = {
    Autologin = {
      Session = "plasma.desktop";
      User = "fulanawa";
    };
  };
  
  services.desktopManager.plasma6.enable = true;
}
