{ pkgs, ... }: {
  environment.systemPackages = with pkgs; [
    yakuake
    sddm-kcm
    qtwebview
  ];
}
