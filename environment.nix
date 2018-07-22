{ pkgs, ... }:

{
  environment = {
    systemPackages = with pkgs; [
      vlc
      gimp
      wget
      p7zip
      pinta
      chromium
      tdesktop
      dropbox-cli
      libreoffice
      transmission
      unetbootin
      gparted

      docker
      docker_compose
      virtualbox

      neovim
      haskellPackages.stack
      haskellPackages.hlint
      haskellPackages.intero
      haskellPackages.hoogle
      haskellPackages.hindent
      haskellPackages.ShellCheck
      haskellPackages.apply-refact
      haskellPackages.cabal-install
      haskellPackages.stylish-haskell

      jdk
      git
      gradle
      visualvm
      oraclejdk8
      jetbrains.idea-community

      rustup
    ];

    shellAliases = {
      build   = ''sudo -E nixos-rebuild build'';
      switch  = ''sudo -E nixos-rebuild switch'';
      upgrade = ''sudo -E nixos-rebuild switch --upgrade'';
    };

    variables = rec {
      VISUAL  = "nvim";
      EDITOR  = VISUAL;
      BROWSER = "chromium-browser";
    };
  };
}
