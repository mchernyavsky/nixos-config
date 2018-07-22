{ pkgs, ... }:

{
  users.extraUsers = {
    misha = {
      uid          = 1000;
      description  = "Mikhail Chernyavsky";
      isNormalUser = true;
      home         = "/home/misha";
      createHome   = true;
      extraGroups  = [
        "audio"
        "video"
        "wheel"
        "networkmanager"
        "vboxusers"
        "docker"
      ];
    };
  };
}
