{
  lib,
  stdenv,
  pkgs,
}:

stdenv.mkDerivation {
  pname = "jetbrains-mono-condensed";
  version = "1.0";

  src = pkgs.fetchFromGitHub {
    owner = "Oungseik";
    repo = "JetBrainsMono-Condensed";
    rev = "68bc38b1d4c1035589996d7c725d988dbaa667de";
    sha256 = "1b5k56qa9bw3fid3zynjm6yi9gd0sm9xz1zdms50bb86ri8c8jjb";
  };

  installPhase = ''
    runHook preInstall
    install -Dm644 -t $out/share/fonts/truetype/NerdFonts/JetBrainsMonoCondensed *.ttf
    runHook postInstall
  '';

  meta = with lib; {
    description = "88% condensed version of JetBrains Mono Nerd Font";
    homepage = "https://github.com/oungseik/jetbrains-mono-condensed";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
