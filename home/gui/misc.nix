{ pkgs, ... }: {
  home.packages = with pkgs; [
    ventoy
    filezilla

    spice
    spice-gtk
  ];
}
