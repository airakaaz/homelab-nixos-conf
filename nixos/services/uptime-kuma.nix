{ ... }:

{
  services.uptime-kuma = {
    enable = true;
    settings = {
      PORT = "3001";
      HOST = "localhost";
    };
  };
}
