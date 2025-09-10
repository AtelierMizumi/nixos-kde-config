{ pkgs, ... }:

{
  programs.appimage = {
    enable = true;
    binfmt = true;
    package = pkgs.appimage-run.override {
      extraPkgs = pkgs: [
        pkgs.icu
        pkgs.libxcrypt-legacy
      ];
    };
  };
  environment.systemPackages = with pkgs; [
    pkgs.appimage-run
  ];
}
