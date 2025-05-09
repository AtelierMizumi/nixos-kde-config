{ lib, ... }:
with lib;
let
  defaultApps = {
    browser = [ "zen-beta.desktop" ];
    text = [ "kate.desktop" ];
    image = [ "imv-dir.desktop" ];
    audio = [ "mpv.desktop" ];
    video = [ "mpv.desktop" ];
    directory = [ "nautilus.desktop" ];
    office = [ "libreoffice.desktop" ];
    pdf = [ "org.gnome.Evince.desktop" ];
    terminal = [ "ghostty.desktop" ];
    archive = [ "org.gnome.FileRoller.desktop" ];
    discord = [ "vesktop.desktop" ];
  };

  mimeMap = {
    text = [
      "text/plain"
      "text/html"
      "text/css"
      "text/xml"
      "text/markdown"
      "text/x-shellscript"
      "text/x-python"
      "text/x-csrc"
      "text/json"
    ];
    image = [
      "image/bmp"
      "image/gif"
      "image/jpeg"
      "image/jpg"
      "image/png"
      "image/svg+xml"
      "image/tiff"
      "image/vnd.microsoft.icon"
      "image/webp"
    ];
    audio = [
      "audio/aac"
      "audio/mpeg"
      "audio/ogg"
      "audio/opus"
      "audio/wav"
      "audio/webm"
      "audio/x-matroska"
    ];
    video = [
      "video/mp2t"
      "video/mp4"
      "video/mpeg"
      "video/ogg"
      "video/webm"
      "video/x-flv"
      "video/x-matroska"
      "video/x-msvideo"
    ];
    directory = [ "inode/directory" ];
    browser = [
      "text/html"
      "x-scheme-handler/about"
      "x-scheme-handler/http"
      "x-scheme-handler/https"
      "x-scheme-handler/unknown"
    ];
    office = [
      "application/vnd.oasis.opendocument.text"
      "application/vnd.oasis.opendocument.spreadsheet"
      "application/vnd.oasis.opendocument.presentation"
      "application/vnd.openxmlformats-officedocument.wordprocessingml.document"
      "application/vnd.openxmlformats-officedocument.spreadsheetml.sheet"
      "application/vnd.openxmlformats-officedocument.presentationml.presentation"
      "application/msword"
      "application/vnd.ms-excel"
      "application/vnd.ms-powerpoint"
      "application/rtf"
    ];
    pdf = [ "application/pdf" ];
    terminal = [ "terminal" ];
    archive = [
      "application/zip"
      "application/rar"
      "application/7z"
      "application/*tar"
    ];
    discord = [ "x-scheme-handler/discord" ];
  };

  associations =
    with lists;
    listToAttrs (
      flatten (mapAttrsToList (key: map (type: attrsets.nameValuePair type defaultApps."${key}")) mimeMap)
    );
in
{
  xdg.configFile."mimeapps.list".force = true;
  xdg.mimeApps.enable = true;
  xdg.mimeApps.associations.added = associations;
  xdg.mimeApps.defaultApplications = associations;

  home.sessionVariables = {
    # prevent wine from creating file associations
    WINEDLLOVERRIDES = "winemenubuilder.exe=d";
    # optimizations
    # Wine optimizations
    DXVK_ASYNC = "1";
    WINE_FULLSCREEN_FSR = "1";
    WINE_LARGE_ADDRESS_AWARE = "1";
    vblank_mode = "0";
    __GL_THREADED_OPTIMIZATIONS = "1";
    mesa_glthread = "true";

    # Proton optimizations
    PROTON_HIDE_NVIDIA_GPU = "0";
    PROTON_ENABLE_NVAPI = "1";
    PROTON_FORCE_LARGE_ADDRESS_AWARE = "1";
    PROTON_NO_ESYNC = "0";
    PROTON_NO_FSYNC = "0";
    PROTON_USE_WINED3D = "0";
    STEAM_RUNTIME_HEAVY_PIN = "0";
  };
}
