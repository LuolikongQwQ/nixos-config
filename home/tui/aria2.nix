{ pkgs, ... }: {
  programs.aria2 = {
    enable = true;
    settings = {
      file-allocation = "falloc";
      max-connection-per-server = 4;
      min-sqlit-size = "20M";
    };
  };
}
