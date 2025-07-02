{ pkgs, ... }:
{
  home.sessionVariables = {
    # fcitx5
    QT_IM_MODULE = "fcitx5";
    GTK_IM_MODULE = "fcitx5";
    SDL_IM_MODULE = "fcitx";
  };

  # environment.systemPackages = with pkgs; [
  #   fcitx5
  #   fcitx5-gtk
  #   fcitx5-qt
  #   fcitx5-unikey
  #   fcitx5-anthy
  #   fcitx5-configtool
  # ];

  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    # Unfortunately there is a current bug that makes fcitx5 using the wrong QT library version
    # temporarily fix by running this command to configure fcitx5
    # $ nix run nixpkgs#fcitx5-configtool
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-skk-qt
        fcitx5-unikey
        fcitx5-anthy
        fcitx5-configtool
        qt5.qtbase
        qt5.qttools
      ];
    };
  };
}
