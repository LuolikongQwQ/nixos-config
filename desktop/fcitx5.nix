{ config, pkgs, inputs, lib, ... }:

{
  i18n.inputMethod = {
    enabled = "fcitx5";
    fcitx5.addons = with pkgs; [fcitx5-chinese-addons fcitx5-configtool];
    fcitx5.plasma6Support = true;
    fcitx5.waylandFrontend = true;
  };
}
