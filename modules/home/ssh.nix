{ ... }:
{
  # Generate ssh key using this command
  # ssh-keygen -t rsa -b 4096 -f ~/.ssh/id_github -C "thuanc177@gmail.com"
  # cat ~/.ssh/id_github.pub
  # This keey can then be uploaded to your Github in SSH and GPG keys and be used to access Github

  programs.ssh = {
    enable = true;

    addKeysToAgent = "1h";

    controlMaster = "auto";
    controlPath = "~/.ssh/control-%r@%h:%p";
    controlPersist = "10m";

    matchBlocks = {
      github = {
        host = "github.com";
        hostname = "ssh.github.com";
        user = "git";
        port = 443;
        identityFile = "~/.ssh/id_github";
        identitiesOnly = true;
      };
    };
  };

  services.ssh-agent.enable = true;
}
