{ ... }:

{
  services.tailscale = {
    enable = true;
    serve = {
      enable = true;
      services = {
        grafana = {
          endpoints = {
            "tcp:80" = "http://localhost:3002";
          };
          advertised = true;
        };

        immich = {
          endpoints = {
            "tcp:80" = "http://localhost:2283";
          };
          advertised = true;
        };

        jellyfin = {
          endpoints = {
            "tcp:80" = "http://localhost:8096";
          };
          advertised = true;
        };

        adguard = {
          endpoints = {
            "tcp:80" = "http://localhost:3000";
          };
          advertised = true;
        };

        n8n = {
          endpoints = {
            "tcp:80" = "http://localhost:5678";
          };
          advertised = true;
        };

        torrent = {
          endpoints = {
            "tcp:80" = "http://localhost:8070";
          };
          advertised = true;
        };

        kuma = {
          endpoints = {
            "tcp:80" = "http://localhost:3001";
          };
          advertised = true;
        };
      };
    };
  };
}
