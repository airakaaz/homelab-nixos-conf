{ ... }:

{
  services.prometheus = {
    enable = true;
    # listenAddress = "localhost";
    port = 9090;

    exporters = {
      node = {
        enable = true;
        listenAddress = "localhost";
        port = 9100;
        enabledCollectors = [
          "systemd"
          "processes"
        ];
      };
    };

    scrapeConfigs = [
      {
        job_name = "node";
        static_configs = [
          { targets = [ "localhost:9100" ]; }
        ];
      }
    ];
  };
}
