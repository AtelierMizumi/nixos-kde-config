{
  pkgs,
  ...
}:
{
  # Enable Docker in Home Manager
  home.packages = with pkgs; [
    docker
    docker-buildx
  ];
}
