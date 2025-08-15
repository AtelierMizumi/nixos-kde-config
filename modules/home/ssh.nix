{ config, pkgs, ... }:
{
  programs.ssh = {
    enable = true;
    # Vô hiệu hóa cấu hình mặc định Host *
    enableDefaultConfig = false;

    # Xóa cấu hình cũ không hợp lệ
    # addKeysToAgent = "1h";
    # controlMaster = "auto";
    # controlPath = "~/.ssh/control-%r@%h:%p";
    # controlPersist = "10m";

    # Định nghĩa khối cấu hình chung cho mọi Host (*)
    matchBlocks = {
      "*" = {
        addKeysToAgent = "1h";
        controlMaster = "auto";
        controlPath = "~/.ssh/control-%r@%h:%p";
        controlPersist = "10m";
      };
      github = {
        host = "github.com";
        hostname = "ssh.github.com";
        user = "AtelierMizumi";
        port = 443;
        identityFile = "~/.ssh/id_github";
        identitiesOnly = true;
      };
    };
  };

  services.ssh-agent.enable = true;
}
