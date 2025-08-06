{ pkgs, ... }:

{
  home.packages = with pkgs; [
    android-studio
  ];

  # # Set environment variables for Android development
  # home.sessionVariables = {
  #   ANDROID_HOME = "${config.home.homeDirectory}/.android/sdk";
  #   ANDROID_SDK_ROOT = "${config.home.homeDirectory}/.android/sdk";
  # };
}
