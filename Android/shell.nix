with import (builtins.fetchTarball "https://github.com/NixOS/nixpkgs/archive/master.tar.gz") {
    config.android_sdk.accept_license = true;
    config.allowUnfree = true;
};
let
    android = pkgs.androidenv.composeAndroidPackages {
        includeEmulator = true;
        platformVersions = [ "31" ];
        includeSources = false;
        includeSystemImages = true;
        systemImageTypes = [ "google_apis_playstore" ];
        abiVersions = [ "arm64-v8a" ];
        includeNDK = false;
        useGoogleAPIs = true;
        useGoogleTVAddOns = false;
        includeExtras = [
            "extras;google;gcm"
        ];
    };
    androidSdk = android.androidsdk;
in
runCommand "Android" rec {
    shellHook = ''
    '';
    nativeBuildInputs = [
    ];
    buildInputs = [
        androidSdk
    ];
    # GRADLE_OPTS = "-Dorg.gradle.project.android.aapt2FromMavenOverride=${androidSdk}/libexec/android-sdk/build-tools/${buildToolsVersion}/aapt2";
    # ANDROID_SDK_ROOT="${androidSdk}";
    ANDROID_SDK_ROOT = "${androidSdk}/libexec/android-sdk";
    # Set emulator root to be emulator instead of tools?
    ANDROID_NDK_ROOT = "${ANDROID_SDK_ROOT}/ndk-bundle";
    REACT_TERMINAL="konsole";
    # ANDROID_JAVA_HOME="${jdk8.home}";
} ""
