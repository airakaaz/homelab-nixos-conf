{ ... }:

{
  services.immich = {
    enable = true;
    mediaLocation = "/media/storage/phantom/immich";
    accelerationDevices = [
      "/dev/dri/renderD128"
      "/dev/dri/renderD129"
    ];
  };
}
