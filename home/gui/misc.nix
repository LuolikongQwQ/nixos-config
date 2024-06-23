{ pkgs, ... }: {
  home.packages = with pkgs; [
    ventoy
    filezilla
     
    virt-viewer
    spice
    spice-gtk
    
    rdesktop
  ];
}
