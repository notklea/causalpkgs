{
  stdenv,
  lib,
  gcc,
  causal-source,
}:

stdenv.mkDerivation {
  pname = "ptee";
  version = "0-unstable-2025-07-01";

  #src = import ../causal-source.nix { inherit fetchzip lib; fileset = [ ./ptee.c ]; };
  src = lib.fileset.toSource {
    root = causal-source;
    fileset = [ ./ptee.c ./man1/ptee.1 ];
  };
  buildInputs = [ gcc ];

  #patchPhase = ''
  #  substituteInPlace bin/expdays --replace-fail \
  #    openssl ${openssl}/bin/openssl
  #'';

  #installPhase = ''
  #  install -Dt $out/bin bin/*
  #'';
}
