{ pkgs, config, ... }:

{
  programs.ssh = {
    extraConfig = "
      Host github.com
          Hostname ssh.github.com
	  Port 443
	  IdentityFile ~/.ssh/github
          IdentitiesOnly yes
    ";
  };
}
