{ pkgs, ... }:

{
  nixpkgs.config = {
    allowUnfree = true;
    oraclejdk.accept_license = true;
  };
}
