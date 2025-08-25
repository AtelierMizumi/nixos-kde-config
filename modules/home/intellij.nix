{ pkgs, ... }:
{
  home.packages = with pkgs; [
    jetbrains.idea-ultimate
    github-copilot-intellij-agent
  ];
}
