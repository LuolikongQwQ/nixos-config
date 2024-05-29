{
  pkgs,
  ...
}: {
  imports = [
    ./lazygit.nix
    ./yazi.nix
    ./shell/bash
    ./shell-apps.nix
    ./aria2.nix
    ./editor/nvim
  ];

  home.packages = with pkgs; [
    ripgrep
    bat
    nil
    nixfmt-classic
    nvtopPackages.full
    _7zz
  ]

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
