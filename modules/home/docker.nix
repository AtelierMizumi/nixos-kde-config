{
  pkgs,
  lib,
  ...
}:
{
  # Enable Docker in Home Manager
  home.packages = with pkgs; [
    docker
    docker-compose
    docker-client
  ];

  # Add user to the Docker group
  # Note: This only works if Docker is also enabled at the system level
  home.activation.dockerSetup = lib.hm.dag.entryAfter [ "writeBoundary" ] ''
    if command -v docker >/dev/null 2>&1 && getent group docker >/dev/null; then
      if ! groups | grep -q '\bdocker\b'; then
        echo "NOTE: You may need to add your user to the docker group:"
        echo "sudo usermod -aG docker $USER"
        echo "Then log out and back in for the changes to take effect."
      fi
    fi
  '';
}
