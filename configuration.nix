{ config, pkgs, ... }:

{
  system.stateVersion = "18.03";
  system.autoUpgrade.enable = true;

  imports = [
    ./boot.nix
    ./environment.nix
    ./fonts.nix
    ./hardware.nix
    ./hardware-configuration.nix
    ./i18n.nix
    ./networking.nix
    ./nix.nix
    ./nixpkgs.nix
    ./programs.nix
    ./services.nix
    ./sound.nix
    ./users.nix
    ./virtualisation.nix
  ];
}
