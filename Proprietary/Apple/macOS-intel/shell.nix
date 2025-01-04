with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        python314
        #python314Packages.internetarchive
        #python314Packages.pip
        #python314Packages.click
        qemu
    ] ++ (if builtins.currentSystem == "aarch64-darwin" then [

    ] else [
        libguestfs-with-appliance
    ]);
} ""
