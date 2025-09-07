{
  stdenv,
  lib,
  gcc,
  ncurses,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "qf";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^qf\\.c$" "^man1$" "^man1/qf\\.1$" ];
  buildInputs = [
    gcc
    ncurses
  ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=qf" ];
})
