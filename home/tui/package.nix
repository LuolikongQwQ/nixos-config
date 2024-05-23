{ pkgs, ... }: {
  home.packages = with pkgs; [
    wget
    curl

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
  
    zip
    unzip
    xz
    7zip
  ];
}
