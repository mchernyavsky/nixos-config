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
      simplescreenrecorder
      spectacle
      okular
      git

      # JVM
      jdk
      oraclejdk8
      gradle
      visualvm

      # Native
      gcc
      gdb
      cmake
      gnumake
      rustup
      valgrind
      linuxPackages.perf

      # Editors
      vscode
      jetbrains.idea-ultimate
      jetbrains.clion
    ];

    shellAliases = {
      build = ''sudo -E nixos-rebuild build'';
      switch = ''sudo -E nixos-rebuild switch'';
      upgrade = ''sudo -E nixos-rebuild switch --upgrade'';
    };

    variables = rec {
      BROWSER = "chromium-browser";
    };
  };
}
