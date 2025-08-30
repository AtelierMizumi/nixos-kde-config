{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qtcreator
    libGL
    libsForQt5.qwt
    libsForQt5.qt3d
    libsForQt5.qtbase
  ];
}
