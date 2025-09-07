{
  stdenv,
  lib,
  gcc,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "dtch";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^dtch\\.c$" "^man1$" "^man1/dtch\\.1$" ];
  buildInputs = [ gcc ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=dtch" ];
})
