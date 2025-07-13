{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bibata-cursors
    whitesur-icon-theme
  ];

  # Alternative xorg cursor configuration if needed
  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 32;
    x11.enable = true;
  };
}
