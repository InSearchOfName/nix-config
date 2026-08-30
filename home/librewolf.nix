{ config, pkgs, ... }:

{
  programs.firefox = {
    enable = true;
    package = pkgs.librewolf;

    policies = {
      DisableTelemetry = true;
      DisableFirefoxStudies = true;

      Cookies = {
        Behavior = "allow";
        Allow = [
          "https://discord.com"
          "https://github.com"
          "https://pass.proton.me"
          "https://proton.me"
        ];
      };

      ExtensionSettings = {
        # uBlock Origin
        "uBlock0@raymondhill.net" = {
          installation_mode = "force_installed";
          install_url = "https://addons.mozilla.org/firefox/downloads/latest/ublock-origin/latest.xpi";
        };

        # Proton Pass (No solution for now) 
        "78272b6fa58f4a1abaac99321d503a20@proton.me" = {
          installation_mode = "force_installed";
        };
      };

      Preferences = {
        "browser.startup.homepage" = "about:home";

        "browser.preferences.defaultPerformanceSettings.enabled" = false;

        "browser.urlbar.suggest.bookmark" = false;
        "browser.urlbar.suggest.engines" = false;
        "browser.urlbar.suggest.history" = false;
        "browser.urlbar.suggest.openpage" = false;
        "browser.urlbar.suggest.recentsearches" = false;
        "browser.urlbar.suggest.topsites" = false;

        "browser.warnOnQuit" = false;
        "browser.warnOnQuitShortcut" = false;

        "places.history.enabled" = false;

        "privacy.resistFingerprinting" = true;
        "privacy.resistFingerprinting.autoDeclineNoUserInputCanvasPrompts" = true;
      };
    };
  };
}
