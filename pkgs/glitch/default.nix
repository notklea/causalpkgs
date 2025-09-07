{
  stdenv,
  lib,
  gcc,
  zlib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "glitch";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^glitch\\.c$" "^man1$" "^man1/glitch\\.1$" ];
  buildInputs = [
    gcc
    zlib
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=glitch" ];
})
