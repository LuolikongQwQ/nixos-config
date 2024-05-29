{ pkgs, ... }: {
  programs.mpv = {
    enable = true;
    defaultProfiles = [ "gpu-hq" "gpu-hq-enhance" ];
    config = {
      autofit-larger = "x80%";
      autofit-smaller = "1280x720";
      title = "\${?media-title: \${media-title} - }\${mpv-version}";
      force-window-position = false;
      ao = "alsa";
      gpu-api = "opengl";
    };
  };
}
