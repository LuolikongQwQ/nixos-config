{ config, pkgs, inputs, lib, ... }:

{
  imports = [
    ./modules/fonts.nix
    ./modules/fcitx5.nix
    ./modules/plasma.nix
  ];
}
