{
  pkgs,
  config,
  ...
}: {
  environment.systemPackages = with pkgs; [
    git
    zip
    xz
    zstd
    unzipNLS
    p7zip
    gnugrep # GNU grep, provides `grep`/`egrep`/`fgrep`
    gnused # GNU sed, very powerful(mainly for replacing text in files)
    gawk # GNU awk, a pattern scanning and processing language
    jq # A lightweight and flexible command-line JSON processor
    
    dnsutils
    wget
    curl
    nmap
    
    file
    findutils
    which
    tree
    gnutar
    rsync
  ];  
}
