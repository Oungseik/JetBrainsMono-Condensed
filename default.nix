{ lib, stdenv }:

stdenv.mkDerivation {
  pname = "jetbrains-mono-condensed";
  version = "1.0";

  src = ./.;

  installPhase = ''
    install -d $out/share/fonts/truetype/NerdFonts/JetBrainsMonoCondensed
    cp $src/*.ttf $out/share/fonts/truetype/NerdFonts/JetBrainsMonoCondensed
  '';

  meta = with lib; {
    description = "88% condensed version of JetBrains Mono Nerd Font";
    homepage = "https://github.com/oungseik/jetbrains-mono-condensed";
    license = licenses.ofl;
    platforms = platforms.all;
  };
}
