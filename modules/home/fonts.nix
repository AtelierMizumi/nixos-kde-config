{ pkgs, inputs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs;
    [
      noto-fonts
      noto-fonts-cjk-sans
      noto-fonts-cjk-serif
    ];
}