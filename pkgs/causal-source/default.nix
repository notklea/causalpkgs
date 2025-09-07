{ fetchzip, lib, fileset }:

lib.fileset.toSource {
  root = (fetchzip {
    url = "https://git.causal.agency/src/snapshot/src-72558d92df1934a64533812d6db9e5e419dfb61c.tar.gz";
    sha256 = "sha256-La2UzNWtkW7oJi/7ggLRebIT8/KrBBhrZw8AHtQV5HA=";
  });
  fileset = fileset;
} + "/src"
