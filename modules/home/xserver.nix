{
  services = {
    xserver = {
      enable = true;
      xkb.layout = "us";
    };
    libinput = {
      enable = true;
    };
  };
  # To prevent getting stuck at shutdown
  systemd.extraConfig = "DefaultTimeoutStopSec=10s";
}
