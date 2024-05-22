{ pkgs, ... }: {
  programs.mpv = {
    enable = true;
    defaultProfiles = [ "gpu-hq" ];
    config = {
      force-window = true;
    };
  };
}
