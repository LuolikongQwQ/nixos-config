{
  pkgs,
  ...
}: {
  services.jellyfin = {
    # wiki: https://jellyfin.org/docs/
    enable = true;
    package = with pkgs; [ jellyfin jellyfin-ffmpeg ];
    openFirewall = true;
  };
}
