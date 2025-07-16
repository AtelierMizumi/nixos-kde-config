{ pkgs, inputs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with pkgs; [
    nerd-fonts.noto
    noto-fonts-cjk-serif
    noto-fonts-cjk-sans
    texlivePackages.symbol
  ];
}
