{
  inputs,
  pkgs,
  host,
  ...
}:
let
  ghostty = inputs.ghostty.packages.${pkgs.system}.default;
in
{
  home.packages = [ ghostty ];

  xdg.configFile."ghostty/config".text = ''
    # Font
    font-family = "SFMono Nerd Font"
    font-size = ${if (host == "laptop") then "16" else "17"}
    font-feature = calt
    font-feature = ss03

    bold-is-bright = false
    selection-invert-fg-bg = true

    # Theme
    theme = "catppuccin-mocha"
    background-opacity = 0.85

    cursor-style = bar
    cursor-style-blink = true
    adjust-cursor-thickness = 1

    resize-overlay = never
    copy-on-select = false
    confirm-close-surface = false
    mouse-hide-while-typing = true

    window-theme = ghostty
    # window-padding-x = 4
    # window-padding-y = 6
    window-padding-balance = true
    window-padding-color = background
    window-inherit-working-directory = true
    window-inherit-font-size = true
    window-decoration = true

    gtk-titlebar = true
    gtk-single-instance = false
    gtk-tabs-location = bottom
    gtk-wide-tabs = false

    auto-update = off
    term = ghostty
    clipboard-paste-protection = false

    keybind = shift+end=unbind
    keybind = shift+home=unbind
    keybind = ctrl+shift+left=unbind
    keybind = ctrl+shift+right=unbind
    keybind = shift+enter=text:\n
  '';
  xdg.configFile."ghostty/themes/gruvbox".text = ''
    background = #1d2021
    foreground = #fbf1c7

    palette = 0=#32302f
    palette = 1=#cc241d
    palette = 2=#98971a
    palette = 3=#d79921
    palette = 4=#458588
    palette = 5=#b16286
    palette = 6=#689d6a
    palette = 7=#ebdbb2

    palette = 8=#928374
    palette = 9=#fb4934
    palette = 10=#b8bb26
    palette = 11=#fabd2f
    palette = 12=#83a598
    palette = 13=#d3869b
    palette = 14=#8ec07c
    palette = 15=#fbf1c7

    cursor-color = #D5C4A1

    selection-foreground = #282828
    selection-background = #98971A
  '';

  xdg.configFile."ghostty/themes/catppuccin-mocha".text = ''
    background = #1e1e2e
    foreground = #cdd6f4

    palette = 0=#45475a
    palette = 1=#f38ba8
    palette = 2=#a6e3a1
    palette = 3=#f9e2af
    palette = 4=#89b4fa
    palette = 5=#f5c2e7
    palette = 6=#94e2d5
    palette = 7=#bac2de

    palette = 8=#585b70
    palette = 9=#f38ba8
    palette = 10=#a6e3a1
    palette = 11=#f9e2af
    palette = 12=#89b4fa
    palette = 13=#f5c2e7
    palette = 14=#94e2d5
    palette = 15=#a6adc8

    cursor-color = #f5e0dc

    selection-foreground = #1e1e2e
    selection-background = #f5e0dc
  '';
}
