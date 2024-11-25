{ config, pkgs, ... }:
{
  imports = [
    <nixpkgs/nixos/modules/installer/cd-dvd/installation-cd-graphical-calamares-plasma6.nix>

    # Provide an initial copy of the NixOS channel so that the user
    # doesn't need to run "nix-channel --update" first.
    <nixpkgs/nixos/modules/installer/cd-dvd/channel.nix>
  ];
  # boot.kernelPackages = pkgs.linuxPackages_latest;
  # boot.kernelPackages = pkgs.linuxKernel.packages.linux_latest;
  boot.supportedFilesystems = [ "ext4" ];
  boot.kernelModules = [ "vfat" "ext4" "uas" "usb-storage" ];
  environment.systemPackages = with pkgs; [
    vim
  ];
  system.stateVersion = "24.11";
}