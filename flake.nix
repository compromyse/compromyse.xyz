{
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    msgpkgs.url = "git+ssh://git@github.com/compromyse/msg.git";
    self.submodules = true;
  };

  outputs = { self, nixpkgs, msgpkgs, ... }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
      msg = msgpkgs.packages.x86_64-linux.default;
    in {
      devShells.x86_64-linux.default = pkgs.mkShell {
        buildInputs = [ msg ];
      };
    };
}
