{ stdenv, lib, fetchurl, perlPackages, shortenPerlShebang }:

perlPackages.buildPerlModule rec {
  pname = "App-PerlCalc";
  version = "1.2.0";
  src = fetchurl {
    url = "mirror://cpan/authors/id/D/DA/DAVID/${pname}-v${version}.tar.gz";
    hash = "sha256-R9kK6JrAtLsp9DmNSle+W0o/aw82hQs4h6LpU2FlSaY=";
  };
  buildInputs = [ perlPackages.TestScriptRun ];
  nativeBuildInputs = lib.optional stdenv.isDarwin shortenPerlShebang;
  postInstall = lib.optionalString stdenv.isDarwin ''
    shortenPerlShebang $out/bin/pc
  '';
  meta = {
    description = "A simple but feature filled command line Perl calculator";
    license = with lib.licenses; [ artistic1 gpl1Plus ];
  };
}
