{ pkgs, ... }:

{
  fonts = {
    enableFontDir          = true;
    enableGhostscriptFonts = true;

    fonts = with pkgs;  [
      fira-mono
      hack-font
      dejavu_fonts
      font-awesome-ttf
      terminus_font
      libertine
      liberation_ttf_v2_binary
    ];
  };
}
