{ pkgs, ... }:

let
  intero-neovim = pkgs.vimUtils.buildVimPlugin {
    name = "intero-neovim";
    src  = pkgs.fetchFromGitHub {
      owner  = "parsonsmatt";
      repo   = "intero-neovim";
      rev    = "26d340ab0d6e8d40cbafaf72dac0588ae901c117";
      sha256 = "0y4bbbj6v9jq825ffpdx03hi6ldszqh2zxasc6h1b0vkpjmdc8y3";
    };
    dependencies = [ ];
  };
in {
  nixpkgs.config = {
    allowUnfree = true;

    chromium = {
      enablePepperFlash     = true;
      enablePepperPDF       = true;
      enableGnomeExtensions = true;
    };

    packageOverrides = pkgs: with pkgs; {
      neovim = neovim.override {
        configure = {
          packages.hsvim = with vimPlugins; {
            start = [
              intero-neovim
              neomake
              ctrlp
            ];
            opt = [ ];
          };
        };
      };
    };
  };
}
