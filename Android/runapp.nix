with import <nixpkgs> {};

androidenv.emulateApp {
  name = "";
  app = ./app.apk;
  platformVersion = "21";
  useGoogleAPIs = false;
  enableGPU = true;
  abiVersion = "x86_64";
  
  package = "";
  activity = "";

  avdHomeDir = ./avd;
}
