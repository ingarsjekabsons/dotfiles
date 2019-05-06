with import <nixpkgs> {};
stdenv.mkDerivation {
  name = "dev-env";
  buildInputs = [ 
    gcc
    neovim
    python3
    haskell.compiler.ghc863Binary
    haskellPackages.cabal-install
  ];
  shellHook = ''
    alias vim='nvim'
    alias vi='nvim'
   '';
}
