with import <nixpkgs> {
  config.android_sdk.accept_license = true;
  config.allowUnfree = true;
};

let apkFile = builtins.fetchurl "https://archive.org/download/com.teleca.jamendo_35/com.teleca.jamendo_35.apk";
in androidenv.emulateApp {
  name = "";
  app = apkFile;
  platformVersion = "31";
  # useGoogleAPIs = false;
  enableGPU = true;
  abiVersion = "x86_64";

  package = "";
  activity = "";

  avdHomeDir = ./avd;
}
