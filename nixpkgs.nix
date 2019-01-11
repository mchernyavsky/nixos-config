{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;

    chromium = {
      enablePepperPDF       = true;
      enableGnomeExtensions = true;
    };
  };
}
