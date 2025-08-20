{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    jetbrains.rider
    github-copilot-intellij-agent
  ];
}
