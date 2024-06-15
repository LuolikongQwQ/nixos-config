{ pkgs, ... }: {
  # https://wiki.archlinux.org/title/GnuPG
  programs.gpg = {
    enable = true;
    
    # https://help.riseup.net/en/security/message-security/openpgp/gpg-best-practices
    settings = { };  
  };

  home.packages = with pkgs; [ kdePackages.kleopatra ];
}
