{ config, pkgs, inputs, lib, ... }:

{
  fonts = {
    enableDefaultPackages = false;
    fontDir.enable = true;

    packages = with pkgs; [
      # icon fonts
      material-design-icons
      font-awesome

      # normal fonts
      noto-fonts
      noto-fonts-cjk # 汉字部分
      noto-fonts-emoji # 彩色表情字体
      #noto-fonts-extra
      
      source-sans
      source-serif
      source-han-sans
      source-han-serif

      # nerdfonts
      (nerdfonts.override {
        fonts = [
	  "NerdFontsSymbolsOnly"
	  "FiraCode"
	  "JetBrainsMono"
	];
      })
      joulia-mono
      dejavu_fonts
    ];

    # user defined fonts
    # the reason there's Noto Color Emoji everywhere is to override DejaVu's
    # B&W emojis that would sometimes show instead of some Color emojis
    fontconfig.defaultFonts = {
      serif = ["Source Han Serif SC" "Source Han Serif TC" "Noto Color Emoji"];
      sansSerif = ["Source Han Sans SC" "Source Han Sans TC" "Noto Color Emoji"];
      monospace = ["JetBrainsMono Nerd Font" "Noto Color Emoji"];
      emoji = ["Noto Color Emoji"];
    };
  };
}
