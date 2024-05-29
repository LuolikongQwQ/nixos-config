{ pkgs, ... }: {
  programs.mpv = {
    enable = true;
    defaultProfiles = [ "gpu-hq" "gpu-hq-enhance" ];
    config = {
      autofit-larger = "x80%";
      autofit-smaller = "1280x720";
      osd-on-seek = "msg-bar";
      title = "\${?media-title: \${media-title} - }\${mpv-version}";
      force-window-position = false;
      ao = "alsa";
      gpu-api = "opengl";

      alang = "chi,zho,zh,zh-hans,zh-hant,chs,cht,sc,tc,jpn,jp,eng,en";
      slang = "chi,zho,zh,zh-hans,zh-hant,chs,cht,sc,tc,jpn,jp,eng,en";
      subs-with-matching-audio = "yes";
      subs-match-os-language = "no";
      
      cache = true;
      cache-pause-wait = 10;
      cache-pause-initial = true;
      demuxer-max-bytes = "128M";
      demuxer-max-back-bytes = "128M";
      demuxer-hysteresis-secs = 60;
      prefetch-playlist = true;

      volume = 100;
      volume-max = 100;

    };
  };
}
