{ config, lib, inputs, pkgs, ... }:

{
  services.dae = {
    enable = true;
    configFile = "/etc/dae/config.dae";
    assets = with pkgs; [ v2ray-geoip v2ray-domain-list-community ];
    openFirewall = {
      enable = true;
      port = 10000;
    };
  };
}
