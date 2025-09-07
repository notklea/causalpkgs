{
  stdenv,
  fetchzip,
}:

stdenv.mkDerivation (finalAttrs:{
  pname = "causal-source";
  version = "72558d92df1934a64533812d6db9e5e419dfb61c";

  src = fetchzip {
    url = "https://git.causal.agency/src/snapshot/src-${finalAttrs.version}.tar.gz";
    sha256 = "sha256-La2UzNWtkW7oJi/7ggLRebIT8/KrBBhrZw8AHtQV5HA=";
  };

  dontUnpack = false;

  installPhase = ''
    sed -e '/^include/d' -e 's/^meta: .*$/meta: /' bin/Makefile -i
    substituteInPlace bin/Makefile \
      --replace-fail "-lcurses" "-lncurses"
    cp -r bin/ $out/
  '';
})
