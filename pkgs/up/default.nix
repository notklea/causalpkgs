{
  stdenv,
  lib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "up";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^up\\.sh$" "^man1$" "^man1/up\\.1$" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=up" ];
})
