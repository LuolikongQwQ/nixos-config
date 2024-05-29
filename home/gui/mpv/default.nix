{ pkgs, ... }: {
  programs.mpv = {
    enable = true;
    defaultProfiles = [ "gpu-hq" ];
    config = {
      autofit-smaller = "600x100";
      force-window-position = true;
      ao = "alsa";
      gpu-api = "opengl";
    };
  };
}
