{ pkgs, ... }:

let
  inherit (pkgs)
    callPackage
    ;
  causal-source = pkgs.callPackage ./causal-source { };
in
{

  ptee = callPackage ./ptee { inherit causal-source; };

}
