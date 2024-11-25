nix-build '<nixpkgs/nixos>' -A config.system.build.isoImage -I nixos-config=installation-iso-graphical.nix -o iso-graphical
ln -sv iso-graphical/iso/nixos-*.iso .