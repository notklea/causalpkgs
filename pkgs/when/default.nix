{
  stdenv,
  lib,
  gcc,
  bison,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "when";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^when\\.y$" "^man1$" "^man1/when\\.1$" ];
  buildInputs = [
    gcc
    bison
  ];

  patches = [
    ./include-string-h.patch
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=when" ];
})
