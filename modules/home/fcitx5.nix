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
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-skk-qt
        fcitx5-unikey
        fcitx5-anthy
        fcitx5-configtool
        qt5.qtbase
        qt5.qttools
        libsForQt5.plasma-framework
      ];
    };
  };
}
