{
  stdenv,
  lib,
  gcc,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "psf2png";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^psf2png\\.c$" "^png.h$" "^man1$" "^man1/psf2png\\.1$" ];
  buildInputs = [ gcc ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=psf2png" ];
})
