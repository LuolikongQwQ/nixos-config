{ pkgs, ... }: {
  imports = [
    ./wayland-app.nix
    ./mpv
    ./wezterm
    ./foot
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
  ];

  services.kdeconnect.enable = true;
  services.kdeconnect.indicator = true;

}
