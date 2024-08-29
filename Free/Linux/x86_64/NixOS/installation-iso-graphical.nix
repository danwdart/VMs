{ config, pkgs, ... }:
{
  imports = [
    <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-graphical-plasma5.nix>

    # Provide an initial copy of the NixOS channel so that the user
    # doesn't need to run "nix-channel --update" first.
    <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
  ];
  # not 6.9 because build fails saying zfs is broken even though I don't care about zfs
  boot.supportedFilesystems = [ "ext4" ];
  boot.kernelModules = [ "vfat" "ext4" "uas" "usb-storage" ];
  environment.systemPackages = with pkgs; [
    vim
  ];
  system.stateVersion = "24.11";
}