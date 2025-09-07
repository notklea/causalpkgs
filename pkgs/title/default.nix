{
  stdenv,
  lib,
  gcc,
  curl,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "title";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^title\\.c$" "^man1$" "^man1/title\\.1$" ];
  buildInputs = [
    gcc
    curl
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=title" ];
})
