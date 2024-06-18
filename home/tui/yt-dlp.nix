{
  pkgs,
  ...
}: {
  programs.yt-dlp = {
    enable = true;
    
    # settings args
    # https://github.com/yt-dlp/yt-dlp/blob/master/README.md#configuration 
    # https://wiki.archlinux.org/title/Yt-dlp
    settings = {
      ignore-errors = true;
      continue = true;
      downloader = "aria2c";
      downloader-args = ''
        aria2c:'--continue --min-split-size=5M' --max-connection-per-server=4
      '';
      write-sub = true;
      write-auto-sub = true;
      # sub-lang = "zh-CN";
    };
  };

  home.packages = with pkgs; [ ffmpeg-full ];
}
