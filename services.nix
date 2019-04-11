{ pkgs, ... }:

{
  services = {
    nixosManual.showManual = true;

    openssh = {
      enable = true;
      passwordAuthentication = false;
    };

    xserver = {
      enable = true;
      layout = "us,ru(winkeys)";
      xkbOptions = "grp:alt_shift_toggle";
      xkbVariant = "winkeys";

      displayManager.sddm = {
        enable = true;
        autoLogin = {
          enable = true;
          user = "misha";
        };
      };

      desktopManager = {
        plasma5.enable = true;
        xterm.enable = false;
      };

      videoDrivers = [ "nvidia" ];
    };
  };
}
