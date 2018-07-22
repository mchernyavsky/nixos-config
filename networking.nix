{ ... }:

{
  networking = {
    hostName              = "nixos";
    firewall.allowPing    = true;
    networkmanager.enable = true;
  };
}
