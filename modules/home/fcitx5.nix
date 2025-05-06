{ pkgs, ... }:
{
  environment.sessionVariables = {
    # fcitx5
    XMODIFIERS = "@im=fcitx5";
    QT_IM_MODULE = "fcitx5";
    GTK_IM_MODULE = "fcitx5";
    SDL_IM_MODULE=fcitx
    XMODIFIERS=@im=fcitx
  };

  i18n.inputMethod = {
    type = "fcitx5";
    enable = true;
    fcitx5 = {
      waylandFrontend = true;
      addons = with pkgs; [
        fcitx5-unikey
        fcitx5-anthy
        fcitx5-configtool
      ];
    };
  };
}
