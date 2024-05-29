{ config, inputs, pkgs, ... }:

{
  services.dae = {
    enable = true;
    package = inputs.daeuniverse.packages.x86_64-linux.dae;
    configFile = "/etc/dae/config.dae";
    assets = with pkgs; [ v2ray-geoip v2ray-domain-list-community ];
    openFirewall = {
      enable = true;
      port = 10000;
    };
  };
}
