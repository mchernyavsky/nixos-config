{ pkgs, ... }:

{
  fonts = {
    enableFontDir          = true;
    enableGhostscriptFonts = true;

    fonts = with pkgs;  [
      hack-font
      fira-mono
      ubuntu_font_family
    ];
  };
}
