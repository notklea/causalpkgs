{
  stdenv,
  lib,
  gcc,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "nudge";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^nudge\\.c$" "^man1$" "^man1/nudge\\.1$" ];
  buildInputs = [ gcc ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=nudge" ];
})
