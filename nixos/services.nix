{ ... }:

{
  imports = [
    # connection
    ./services/openssh.nix
    ./services/tailscale.nix

    # monitoring
    ./services/uptime-kuma.nix
    ./services/prometheus.nix
    ./services/grafana.nix

    # services
    ./services/adguardhome.nix
    ./services/immich.nix
    ./services/jellyfin.nix
    ./services/n8n.nix
    ./services/qbittorrent.nix

    # backup
    ./services/restic.nix

    # local
    ./services/keyd.nix
    ./services/logind.nix
  ];
}
