{ config, pkgs, inputs, lib, ... }:

{
  imports = [
    ./fonts.nix
    ./fcitx5.nix
    ./plasma.nix
  ];
}
