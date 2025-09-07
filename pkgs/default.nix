{ pkgs, ... }:

let
  inherit (pkgs)
    callPackage
    ;
  causal-source = pkgs.callPackage ./causal-source { };
in
{

  beef = callPackage ./beef { inherit causal-source; };
  ptee = callPackage ./ptee { inherit causal-source; };

}
