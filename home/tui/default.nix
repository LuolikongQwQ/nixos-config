{
  pkgs,
  ...
}: {
  imports = [
    ./yazi.nix
    ./shell
    ./shell-apps.nix
    ./aria2.nix
    ./editor/nvim
    ./gnupg.nix
    ./yt-dlp.nix
    ./direnv.nix
  ];

  home.packages = with pkgs; [
    ripgrep
    bat
    nil
    nixfmt-classic
    nvtopPackages.full
    _7zz

    # nix-build & nix build 输出可视化工具
    nix-output-monitor
  ];

  programs.git = {
    enable = true;
    userName = "LuolikongQwQ";
    userEmail = "qq7731660@gmail.com";
  };
  programs.gh = {
    enable = true;
    settings = {
      git_protocol = "https";
      editor = "nvim";
    };
  };
  programs.lazygit = {
    enable  = true;
  };
}
