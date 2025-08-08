{
  config,
  lib,
  pkgs,
  ...
}:
{
  # Enable OpenTabletDriver
  hardware.opentabletdriver.enable = true;

  # If the cursor is not moving in osu! on Absolute Mode
  # This is a temporary fix to disable tablet smoothing on Artist Mode
  #
  environment.etc."libinput/30-vendor-opentabletdriver.quirks".text = pkgs.lib.mkForce ''
    [OpenTabletDriver Virtual Tablets]
    MatchName=OpenTabletDriver*
    AttrTabletSmoothing=0
  '';
}

# If your cursor is teleporting, disable the wacom module to run entirely on OpenTabletDriver.
# run sudo rmmod wacom
