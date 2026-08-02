{ config, ... }:

{
  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.graphics.enable = true;

  hardware.nvidia = {
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;

    open = false;
    modesetting.enable = true;
    nvidiaSettings = false;
  };
}
