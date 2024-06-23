{
  pkgs,
  config,
  ...
}: {
  environment.shells = with pkgs; [
    bashInteractive
    nushell
    zsh
  ];
  
  environment.systemPackages = with pkgs; [
    htop
    btop
    android-tools
    gnumake
    just
  ];

  users.defaultUserShell = pkgs.bashInteractive;
  security.sudo.keepTerminfo = true;
  
  environment.variables = {
    EDITOR = "nvim";
  };
  
  programs = {
    ssh.startAgent = true;
  };
}
