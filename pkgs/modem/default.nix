{
  stdenv,
  lib,
  gcc,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "modem";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^modem\\.c$" "^man1$" "^man1/modem\\.1$" ];
  buildInputs = [ gcc ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=modem" ];
})
