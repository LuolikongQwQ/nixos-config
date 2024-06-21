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
    
    _64gram
    discord

    yesplaymusic
    prismlauncher
    
    qbittorrent
    filezilla
  ];

  services.kdeconnect.enable = true;
  services.kdeconnect.indicator = true;
  services.kdeconnect.package = pkgs.kdePackages.kdeconnect-kde;
}
