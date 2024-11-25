nix-build '<nixpkgs/nixos>' -A config.system.build.isoImage -I nixos-config=installation-iso.nix -o iso
ln -sv iso/iso/nixos-*.iso .