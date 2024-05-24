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
    nixfmt-classic

    btop
    nvtopPackages.full
    iotop
  
    zip
    unzip
    xz
    p7zip
    _7zz
  
  ];
}
