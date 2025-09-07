{
  stdenv,
  lib,
  causal-source,
}:

stdenv.mkDerivation(finalAttrs: {
  pname = "git-comment";
  version = causal-source.version;

  src = lib.sources.sourceByRegex causal-source [ "^Makefile$" "^git-comment\\.pl$" "^man1$" "^man1/git-comment\\.1$" ];

  makeFlags = [ "PREFIX=${placeholder "out"}" "BINS=git-comment" ];
})
