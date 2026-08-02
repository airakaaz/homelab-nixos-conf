{ pkgs, ... }:

{
  users.users."kaz" = {
    isNormalUser = true;
    createHome = true;
    extraGroups = [
      "networkmanager"
      "wheel"
      "docker"
      "jellyfin"
    ];
    shell = pkgs.fish;
    # packages = with pkgs; [ ];
  };
}
