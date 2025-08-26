{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jetbrains.idea-ultimate
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
