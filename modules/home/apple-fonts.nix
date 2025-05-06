{ inputs, pkgs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages = with inputs.apple-fonts.packages.${pkgs.system}; [
    sf-pro-nerd
    sf-mono-nerd
    sf-compact-nerd
    ny-nerd
  ];
}
