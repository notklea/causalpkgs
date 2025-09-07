{
  stdenv,
  lib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "enc";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^enc\\.sh$" "^man1$" "^man1/enc\\.1$" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=enc" ];
})
