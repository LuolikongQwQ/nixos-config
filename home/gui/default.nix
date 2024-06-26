{ pkgs, ... }: {
  imports = [
    ./wayland-app.nix
    ./mpv
    ./wezterm
    ./foot
    ./misc.nix
  ];
  
  home.packages = with pkgs; [
    wl-clipboard 
    brave
    vlc
    
    telegram-desktop
    discord

    yesplaymusic
    prismlauncher
    
    qbittorrent
  ];

  services.kdeconnect.enable = true;
  services.kdeconnect.indicator = true;
  services.kdeconnect.package = pkgs.kdePackages.kdeconnect-kde;
}
