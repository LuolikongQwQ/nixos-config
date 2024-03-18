{ pkgs, ... }:

{
  programs.git = {
    enable = true;
    userName = "LuolikongQwQ";
    userEmail = "qq7731660@gmail.com"
  };

  programs.lazygit = {
    enable  = true;
    #settings = {};
  };
}
