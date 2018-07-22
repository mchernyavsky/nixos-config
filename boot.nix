{ ... }:

{
  boot.loader = {
    grub = {
      enable      = true;
      version     = 2;
      device      = "nodev";
      efiSupport  = true;
      useOSProber = true;
    };
    efi = {
      canTouchEfiVariables = true;
      efiSysMountPoint     = "/boot";
    };
  };
}
