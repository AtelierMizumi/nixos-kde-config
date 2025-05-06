{ config, ... }
{
  boot.kernel.sysctl = {
    "vm.swappiness" = 10;
  };

  zramSwap = {
    enable = true;
    memoryMax = 16 * 1024 * 1024 * 1024;
    writebackDevice = "/dev/nvme0n1p3"
  };
}