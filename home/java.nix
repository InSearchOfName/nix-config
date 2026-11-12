{ pkgs, ... }:

{
  # Let Gradle toolchains find Nix-provided JDKs (they are not in standard paths).
  # JDK 25 is installed system-wide; older ones are referenced here so they
  # stay in the closure without clashing on bin/java.
  home.file.".gradle/gradle.properties".text = ''
    org.gradle.java.installations.auto-detect=false
    org.gradle.java.installations.auto-download=false
    org.gradle.java.installations.paths=${pkgs.jdk21}/lib/openjdk,${pkgs.jdk25}/lib/openjdk
  '';
}
