{
  stdenv,
  lib,
  gcc,
  zlib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "pngo";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^pngo\\.c$" "^man1$" "^man1/pngo\\.1$" ];
  buildInputs = [
    gcc
    zlib
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=pngo" ];
})
