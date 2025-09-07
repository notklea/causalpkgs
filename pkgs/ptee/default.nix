{
  stdenv,
  gcc,
  lib,
  fetchzip,
}:

stdenv.mkDerivation {
  pname = "ptee";
  version = "0-unstable-2025-07-01";

  src = import ../causal-source.nix { inherit fetchzip lib; fileset = [ ./ptee.c ]; };
  buildInputs = [ gcc ];

  #patchPhase = ''
  #  substituteInPlace bin/expdays --replace-fail \
  #    openssl ${openssl}/bin/openssl
  #'';

  #installPhase = ''
  #  install -Dt $out/bin bin/*
  #'';
}
