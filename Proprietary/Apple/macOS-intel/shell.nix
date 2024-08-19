with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        python313
        #python313Packages.internetarchive
        #python313Packages.pip
        #python313Packages.click
        qemu
    ] ++ (if builtins.currentSystem == "aarch64-darwin" then [

    ] else [
        libguestfs-with-appliance
    ]);
} ""
