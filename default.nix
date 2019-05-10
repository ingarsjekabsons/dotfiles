with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "dev-env";
  buildInputs = [
    gcc
    neovim
    python3
    haskell.compiler.ghc864
    haskellPackages.cabal-install
    oracle-instantclient
  ];
  shellHook = ''
    alias vim='nvim'
    alias vi='nvim'
   '';
}
