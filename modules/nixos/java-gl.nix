{ lib, pkgs, ... }:

{
  # LWJGL (Minecraft / Fabric dev runs) dlopen()s libGL and X11 libraries from
  # a Nix-built JVM, which cannot find them on its own. nix-ld does not apply
  # to Nix-built binaries, so expose them through LD_LIBRARY_PATH.
  # Needs a re-login to reach IntelliJ and Gradle.
  environment.sessionVariables.LD_LIBRARY_PATH = lib.makeLibraryPath (with pkgs; [
    libglvnd
    libx11
    libxcursor
    libxrandr
    libxxf86vm
    libxi
    libxext
    libxrender
    libxkbcommon
    openal
    alsa-lib
    libpulseaudio
  ]) + ":/run/opengl-driver/lib";
}
