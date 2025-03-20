{pkgs, ... }:
# Declarition for reproducible dev environment

{
  packages = with pkgs; [
    poetry
    docker-compose
    kubernetes
    htop
    dnslookup
    nmap
    traceroute
  ];
  languages.python.enable = true;
  languages.python.version = "3.12";
}
