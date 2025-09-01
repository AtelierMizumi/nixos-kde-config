{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qtcreator
    libGL
    cmake
    gcc
    libigl
    qt6.qtbase
    qt6.qtdeclarative
  ];
}
