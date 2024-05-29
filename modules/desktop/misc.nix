{
  pkgs,
  config,
  ...
}: {
  environment.shells = with pkgs; [
    bashInteractive
    nushellFull
    zsh
  ];
  
  environment.systemPackages = with pkgs; [
    htop
    btop
    android-tools
    gnumake
    yakuake
    qtwebview
  ];

  users.defaultUserShell = pkgs.bashInteractive;
  security.sudo.keepTerminfo = true;
  
  environment.variables = {
    EDITOR = "nvim";
  };
  
  programs = {
    ssh-agent = true;
  };
}
