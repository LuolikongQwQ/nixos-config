{ pkgs, ... }: {
  home.packages = with pkgs; [
    wget
    curl
    zip
    unzip
    xz
    ripgrep
    bat
    tree
    pciutils
    file
    nil
    nixfmt
    btop
    nvtop
    iotop
  ];
}