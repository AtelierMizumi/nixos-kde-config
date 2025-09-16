{ pkgs, ... }:
{
  home.packages = with pkgs; [
    code-cursor
    netcat
    jetbrains.idea-ultimate
    openjdk17
    mariadb
    jetbrains.rider
    github-copilot-intellij-agent
    dotnet-sdk_9
    libcutl
    mono
    wasm-tools
    android-tools
    # Required for SkiaSharp and Avalonia on Linux
    fontconfig
    freetype
    icu.dev
  ];
}
