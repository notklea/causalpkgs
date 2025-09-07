{
  stdenv,
  lib,
  gcc,
  flex,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "dehtml";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^dehtml\\.l$" "^man1$" "^man1/dehtml\\.1$" ];
  buildInputs = [
    gcc
    flex
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=dehtml" ];
})
