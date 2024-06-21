# by ryan
# https://github.com/fufexan/dotfiles/blob/483680e/system/programs/steam.nix
{ pkgs, ... }: {
  programs.steam = {
    # https://wiki.archlinux.org/title/steam
    
    # Some location that should be persistent:
    #   ~/.local/share/Steam - The default Steam install location
    #   ~/.local/share/Steam/steamapps/common - The default Game install location
    #   ~/.steam/root        - A symlink to ~/.local/share/Steam
    #   ~/.steam             - Some Symlinks & user info
    enable = true;
    
    # 开启远程娱乐，steam 服务器等...
    remotePlay.openFirewall = true;
    dedicatedServer.openFirewall = true;
    localNetworkGameTransfers.openFirewall = true;
  
    # https://wiki.archlinux.org/title/Gamescope
    gamescopeSession = {
      enable = true;
      args = [
        "--expose-wayland"
	"-f"
	"-W 1920"
	"-H 1080"
	"-r 60"
      ];
    };

    package = pkgs.steam.override {
      extraPkgs = pkgs:
        with pkgs; [
          keyutils
          libkrb5
          libpng
          libpulseaudio
          libvorbis
          stdenv.cc.cc.lib
          xorg.libXcursor
          xorg.libXi
          xorg.libXinerama
          xorg.libXScrnSaver

          # fix CJK fonts
          source-sans
          source-serif
          source-han-sans
          source-han-serif
	];
    };
    
    # proton 兼容层
    protontricks.enable = true;
    extraCompatPackages = with pkgs; [ proton-ge-bin ];

    # 设置中文字体
    fontPackages = with pkgs; [
      wqy_zenhei
    ];
  };

  fonts.packages = with pkgs; [
    wqy_zenhei
  ];
}
