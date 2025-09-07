{
  stdenv,
  lib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "sup";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^sup\\.sh$" "^man1$" "^man1/sup\\.1$" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=sup" ];
})
