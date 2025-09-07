{
  stdenv,
  lib,
  gcc,
  bison,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "bit";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^bit\\.y$" "^man1$" "^man1/bit\\.1$" ];
  buildInputs = [
    gcc
    bison
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=bit" ];
})
