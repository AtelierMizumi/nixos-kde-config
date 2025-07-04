{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ## Video Editing, DaVinci Resolve Free Edition
    davinci-resolve

    ## Audio Editing
    davinci-audio
  ];
}
