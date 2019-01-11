{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;

    chromium = {
      enablePepperFlash     = true;
      enablePepperPDF       = true;
      enableGnomeExtensions = true;
    };
  };
}
