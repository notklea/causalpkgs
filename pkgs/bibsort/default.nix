{
  stdenv,
  lib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "bibsort";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^bibsort\\.pl$" "^man1$" "^man1/bibsort\\.1$" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=bibsort" ];
})
