{ configs, pkgs, ... }:
{
  environment.plasma6.excludePackages = with pkgs.kdePackages; [
    yakuake
    qtwebview
    kdeconnect-kde
  ];
  environment.systemPackages = with pkgs.kdePackages; [
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
  programs.kdeconnect.enable = true;
  # programs.kdeconnect.package = pkgs.plasma5Packages.kdeconnect-kde;
}
