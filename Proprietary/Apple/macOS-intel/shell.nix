with import <nixpkgs> {};
runCommand "macOS-intel" {
    buildInputs = [
        dmg2img
        python312
        #python312Packages.internetarchive
        #python312Packages.pip
        #python312Packages.click
        qemu
    ] ++ (if builtins.currentSystem == "aarch64-darwin" then [

    ] else [
        libguestfs-with-appliance
    ]);
} ""
