{ ... }:

{
  services.jellyfin = {
    enable = true;
    hardwareAcceleration = {
      enable = true;
      device = "/dev/dri/renderD129";
    };
  };
}
