{
  stdenv,
  lib,
  gcc,
  flex,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "shotty";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^shotty\\.l$" "^man1$" "^man1/shotty\\.1$" ];
  buildInputs = [
    gcc
    flex
  ];

  makeFlags = [ "CFLAGS+=-D_XOPEN_SOURCE=600" "PREFIX=${placeholder "out"}" "BINS=shotty" ];
})
