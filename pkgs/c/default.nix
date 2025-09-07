{
  stdenv,
  lib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "c";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^c\\.sh$" "^man1$" "^man1/c\\.1$" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=c" ];
})
