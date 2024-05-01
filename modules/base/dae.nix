{ config, lib, inputs, pkgs, ... }:

{
  services.dae = {
    enable = true;
    packages = inputs.daeuniverse.nixosModules.dae;
    configFile = "/etc/dae/config.dae";
    assets = with pkgs; [ v2ray-geoip v2ray-domain-list-community ];
    openFirewall = {
      enable = true;
      port = 10000;
    };
  };
}
