{ pkgs, ... }:

{
  # https://github.com/nix-community/home-manager/pull/2408
  environment.pathsToLink = [ "/share/fish" ];

  users.users.luke = {
    isNormalUser = true;
    home = "/home/luke";
    extraGroups = [ "docker" "wheel" ];
    shell = pkgs.fish;
    hashedPassword = "$5$gu2xyWl14uxrbfNd$/NhZFhYSe6jlymIcFBhkC.55uMqCxx29rOqMhLRDl94";
  };

  nixpkgs.overlays = import ../../lib/overlays.nix;
}
