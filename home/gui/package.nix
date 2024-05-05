{ pkgs, ... }: {
  home.packages = with pkgs; [
    wl-clipboard
    mpv
    vlc
    _64gram
  ];
}
