{ pkgs, ... }: {
  programs = {
    firefox = {
      enable = true;
      enableGnomeExtensions = false;
      
      # override options
      # github:nixpkgs/pkgs/applications/networking/browsers/firefox/wrapper.nix
      # github:nixpkgs/pkgs/applications/networking/browsers/firefox
    
      package = pkgs.firefox.override {
        nativeMessagingHosts = [
          pkgs.ff2mpv
        ];
        # languagePacks = [ "en-US" "zh-CN" ];
      };
    };

    google-chrome = {
      enable = true;
      commandLineArgs = [
        "--ozone-platform-hint=auto"
        "--ozone-platform=wayland"
        # make it use GTK_IM_MODULE if it runs with Gtk4, so fcitx5 can work with it.
        # (only supported by chromium/chrome at this time, not electron)
        "--gtk-version=4"
        # make it use text-input-v1, which works for kwin 5.27 and weston
        "--enable-wayland-ime"
      ];
    };
  };
}
