{ pkgs, ... }:

let
  inherit (pkgs)
    callPackage
    ;
  causal-source = pkgs.callPackage ./causal-source { };
in
{

  beef = callPackage ./beef { inherit causal-source; };
  bibsort = callPackage ./bibsort { inherit causal-source; };
  bit = callPackage ./bit { inherit causal-source; };
  c = callPackage ./c { inherit causal-source; };
  dehtml = callPackage ./dehtml { inherit causal-source; };
  dtch = callPackage ./dtch { inherit causal-source; };
  enc = callPackage ./enc { inherit causal-source; };
  git-comment = callPackage ./git-comment { inherit causal-source; };
  glitch = callPackage ./glitch { inherit causal-source; };
  hilex = callPackage ./hilex { inherit causal-source; };
  htagml = callPackage ./htagml { inherit causal-source; };
  modem = callPackage ./modem { inherit causal-source; };
  mtags = callPackage ./mtags { inherit causal-source; };
  nudge = callPackage ./nudge { inherit causal-source; };
  order = callPackage ./order { inherit causal-source; };
  pbd = callPackage ./pbd { inherit causal-source; };
  pngo = callPackage ./pngo { inherit causal-source; };
  psf2png = callPackage ./psf2png { inherit causal-source; };
  ptee = callPackage ./ptee { inherit causal-source; };
  qf = callPackage ./qf { inherit causal-source; };
  quick = callPackage ./quick { inherit causal-source; };
  scheme = callPackage ./scheme { inherit causal-source; };
  shotty = callPackage ./shotty { inherit causal-source; };
  sup = callPackage ./sup { inherit causal-source; };
  title = callPackage ./title { inherit causal-source; };
  up = callPackage ./up { inherit causal-source; };
  when = callPackage ./when { inherit causal-source; };
  xx = callPackage ./xx { inherit causal-source; };

}
