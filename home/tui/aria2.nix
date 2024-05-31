{ pkgs, ... }: {
  programs.aria2 = {
    enable = true;
    settings = {
      file-allocation = "falloc";
      max-connection-per-server = 4;
      min-split-size = "20M";
      enable-rpc = true;
      continue = true;
    };
  };
}
