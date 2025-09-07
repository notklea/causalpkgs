{
  stdenv,
  lib,
  gcc,
  bison,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "order";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^order\\.y$" "^man1$" "^man1/order\\.1$" ];
  buildInputs = [
    gcc
    bison
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=order" ];
})
