{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    yakuake
    libsForQt5.sddm-kcm
    sddm-kcm
    kdePackages.qtwebview
  ];
}
