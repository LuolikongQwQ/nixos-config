{ 
  pkgs,
  config,
  ...
}: {
  imports = [
    ./desktop
    ./nixos
    ./base
  ];
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-kde
      xdg-desktop-portal-gtk
      # xdg-desktop-portal-wlr
    ];
  };
  services.displayManager.sddm.enable = true;
  services.xserver.enable = false;

}
