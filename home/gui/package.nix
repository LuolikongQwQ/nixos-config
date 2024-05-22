{ pkgs, ... }: {
  home.packages = with pkgs; [
    _64gram
    discord
    yesplaymusic
    qbittorrent
  ];
}
