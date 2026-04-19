{
    description = "Fenix Rust Flake";

    inputs = {
        nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
        fenix.url = "github:nix-community/fenix";
    };
    outputs = {self, nixpkgs, fenix, ...} @ inputs :
        let
            system  = "x86_64-linux";
            pkgs = import nixpkgs {inherit system;};
            rust = fenix.packages.${system}.stable.toolchain;
        in
        {
            devShells.${system}.default = pkgs.mkShell {
                    packages = [rust];
                };
        };
    }
