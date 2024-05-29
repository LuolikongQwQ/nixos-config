{ config, pkgs, ... }:

{
  # 时区 & i18n
  i18n.defaultLocale = "en_US.UTF-8";
  time.timeZone = "Asia/Shanghai";
  
  # 默认服务设置
  services = {
    openssh = {
      enable = true;
      settings = {
        PassworldAuthentication = false;
	      PermitRootLogin = false;
      };
    };
  };
  
  console = { keyMap = "us" };
}
