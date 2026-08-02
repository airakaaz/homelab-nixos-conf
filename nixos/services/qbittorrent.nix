{ ... }:

{
  services.qbittorrent = {
    # passowrd setup: check journald logs for the 1st time
    enable = true;
    webuiPort = 8070;
  };
}
