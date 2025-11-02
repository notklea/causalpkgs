{
  stdenv,
  lib,
  gcc,
  libretls,
  openssl,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "downgrade";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^downgrade\\.c$"  "^man1$" "^man1/downgrade\\.1$" ];
  buildInputs = [
    libretls
    openssl
    gcc
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=downgrade" ];
})
