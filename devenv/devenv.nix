{pkgs, ... }:
# Declarition for reproducible dev environment

{
 packages = with pkgs; [
    #package managment & local runtime
    poetry
    nodejs
    yarn
    
    # Terminal Language processors
    jq # JSON
    yq # YAML

    # Search tools
    ripgrep # fast grep
    fd # faster find
    # fzf # search tool

    # Containerization & Orchestration
    # docker
    docker-compose
    kind # For running k8s clusters locally
    kubetui # k8s interface
    k9s # k8s TUI
    helm # Helm packagemanager

    # Networking & Debugging
    htop
    dnsutils # Tools like: dig, dnslookup, etc.
    nmap
    traceroute
    curl
    wget
    netcat
    socat

    # Infrastructure & Automation
    # terraform
    ansible
 #  packer # For creating VM & container images

    # Monitoring & Logging
    btop # Advanced system monitoring
    glances # System monitoring
    iftop # Network traffic monitoring
    sysstat # CPU/IO statistics
  ];
 languages.python.version = "3.12";
 languages.python.enable = true;
 enterShell = ''../..''
} 