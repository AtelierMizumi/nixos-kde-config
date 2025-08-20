{ pkgs, ... }:
{
  home.packages = with pkgs; [
    qtcreator
    cmake
    qt6
  ];
}
