{
  stdenv,
  lib,
  gcc,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "htagml";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^htagml\\.c$" "^man1$" "^man1/htagml\\.1$" ];
  buildInputs = [ gcc ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=htagml" ];
})
