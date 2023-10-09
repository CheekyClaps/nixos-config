{ inputs, config, pkgs, ... }:

{
  imports =
    [
      ./hardware-configuration.nix
      ./networking.nix
      ./packages.nix
      ./base.nix
    ];
 
  system.stateVersion = "23.05"; # Did you read the comment?
}
