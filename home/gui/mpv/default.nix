{ pkgs, ... }: {
  programs.mpv = {
    enable = true;
    defaultProfiles = [ "gpu-hq" ];
    config = {
      autofit-smaller = "1280x720";
      force-window-position = true;
      ao = "alsa";
      gpu-api = "opengl";
    };
  };
}
