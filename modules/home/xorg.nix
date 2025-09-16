{ pkgs, ... }:
{
  home.packages = with pkgs; [
    bibata-cursors
    whitesur-icon-theme
    # Add X11 libraries for JavaFX and GUI applications
    xorg.libX11
    xorg.libXext
    xorg.libXrender
    xorg.libXtst
    xorg.libXi
    xorg.libXrandr
    xorg.libXcursor
    xorg.libXinerama
    xorg.libXxf86vm
    # Additional libraries that JavaFX might need
    freetype
    fontconfig
    alsa-lib
    cairo
    glib
    gtk3
    pango
    zlib
  ];

  # Alternative xorg cursor configuration if needed
  home.pointerCursor = {
    name = "Bibata-Modern-Ice";
    package = pkgs.bibata-cursors;
    size = 32;
    x11.enable = true;
  };

  # Set environment variables for JavaFX to find X11 libraries
  home.sessionVariables = {
    LD_LIBRARY_PATH = "${pkgs.xorg.libX11}/lib:${pkgs.xorg.libXext}/lib:${pkgs.xorg.libXrender}/lib:${pkgs.xorg.libXtst}/lib:${pkgs.xorg.libXi}/lib:${pkgs.xorg.libXrandr}/lib:${pkgs.xorg.libXcursor}/lib:${pkgs.xorg.libXinerama}/lib:${pkgs.xorg.libXxf86vm}/lib:${pkgs.freetype}/lib:${pkgs.fontconfig.lib}/lib:${pkgs.alsa-lib}/lib:${pkgs.cairo}/lib:${pkgs.glib.out}/lib:${pkgs.gtk3}/lib:${pkgs.pango}/lib:${pkgs.zlib}/lib";
    JAVA_LIBRARY_PATH = "${pkgs.xorg.libX11}/lib:${pkgs.xorg.libXext}/lib:${pkgs.xorg.libXrender}/lib";
  };
}
