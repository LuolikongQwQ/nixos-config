{ pkgs, ... }: {
  programs.mpv = {
    enable = true;
    defaultProfile = [ "gpu-hq" ];
    config = {
      force-window = true;
    };
  };
}
