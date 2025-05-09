{ pkgs, inputs, ... }:
{
  fonts.fontconfig.enable = true;
  home.packages =
    with pkgs;
    [
      nerd-fonts.jetbrains-mono
      noto-fonts-emoji
    ]
    ++ (with inputs.apple-fonts.packages.${pkgs.system}; [
      sf-pro-nerd
      sf-mono-nerd
      sf-compact-nerd
      ny-nerd
    ]);

  gtk = {
    enable = true;
    font = {
      name = "SFProDisplay Nerd Font";
      size = 12;
    };
    theme = {
      name = "Catppuccin-GTK-Dark";
      package = pkgs.magnetic-catppuccin-gtk;
    };
    iconTheme = {
      name = "WhiteSur-dark";
      package = pkgs.whitesur-icon-theme;
    };
    cursorTheme = {
      name = "Bibata-Modern-Ice";
      package = pkgs.whitesur-cursors;
      size = 36;
    };
  };

  # Making QT applications looks like GTK
  # qt.enable = true;
  # qt.platformTheme = "gnome";
  # qt.style = "adwaita";

  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.whitesur-cursors;
    size = 36;
  };
}
