{ config, pkgs, ... }:

{   
  networking = {
    hostName = "nixos";
    networkmanager = {
      enable = true;
      wifi.macAddress = "random";
    };
    firewall = {
      enable = true;
      checkReversePath = false;
      allowedTCPPorts = [ ]; 
    };
    nameservers = [
      "1.1.1.1#one.one.one.one"
      "1.0.0.1#one.one.one.one"
    ];

  };

  services.resolved = {
    enable = true;
    dnssec = "true";
    domains = [ "~." ];
    fallbackDns = [
      "1.1.1.1#one.one.one.one"
      "1.0.0.1#one.one.one.one"
    ];
    extraConfig = ''
      DNSOverTLS=yes
    '';
  };

  # Start networkmanager anyway..
  #systemd.services.NetworkManager-wait-online.enable = false;
}
