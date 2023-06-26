with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "blog-delagnier";
    inherit ruby;
    gemfile = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "blog-delagnier";
  buildInputs = [env ruby bundler];
}


# source : https://matthewrhone.dev/jekyll-in-nixos