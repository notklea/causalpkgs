{
  stdenv,
  lib,
  gcc,
  flex,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "hilex";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^hilex\\.[ch]$"  "^c11.l$" "^make.l$" "^mdoc.l$" "^sh.l$" "^man1$" "^man1/hilex\\.1$" ];
  buildInputs = [
    gcc
    flex
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=hilex" ];
})
