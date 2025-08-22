{
  config,
  lib,
  pkgs,
  username,
  ...
}:

{
  # Cloudfare WARP
  # PR: https://github.com/NixOS/nixpkgs/pull/168092
  # Issue: https://discourse.nixos.org/t/cant-start-cloudflare-warp-cli/23267
  # imports = [
  #   ./sub/cloudflare-warp.nix
  # ];
  services = {
    cloudflare-warp = {
      enable = true;

      # @TODO - Need a better way to handle this
      # generate directory and add the cert
      # https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/user-side-certificates/#generate-a-cloudflare-root-certificate

      # For some reason its not working so I have to comment out
      # certificate = "/home/${username}/.config/cloudflare/warp/certificate.crt";

      # General setup, commands to setup your Cloudflare Warp
      # warp-cli registration
      # warp-cli connect
      # warp-cli mode warp+doh
      # warp-cli status
    };
  };

  # System Services
  # https://search.nixos.org/options?channel=unstable&show=services
  # services = {

  #   # Netbird (https://netbird.io)
  #   # Open source VPN solution
  #   # After installation you need to run $ netbird up
  #   # And link your account on the browser through login in
  #   # https://search.nixos.org/options?channel=unstable&show=services.netbird
  #   netbird = {

  #     # Netbird - Enable
  #     # https://search.nixos.org/options?channel=unstable&show=services.netbird.enable
  #     enable = true;

  #     # Netbird - Package
  #     # https://search.nixos.org/options?channel=unstable&show=services.netbird.package
  #     package = pkgs.netbird;
  #   };
  # };
}
