{pkgs, ... }:
# Declarition for reproducible dev environment

{
  packages = with pkgs; [
    poetry
    terraform
    docker-compose
    kubernetes
    htop
    unixtools.ifconfig
    unixtools.ping
    dnslookup
    nmap
    traceroute
  ];
  virtualisation = {
    podman.enable = true;
    storage-driver="overlay2";
    docker = { 
      enable = true; 
      data-route = builtins.getEnv "DATA_ROUTE"
      deamon.settings {
        experimental = true;
      }
    }
  }
  user.extraGroups.docker.members ["miro"];
  languages.python.enable = true;
  languages.python.version = "3.12";
  enterShell = ''
    cd ../
  '';
}
