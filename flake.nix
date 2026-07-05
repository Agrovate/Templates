{
  description = "My Nix templates";

  outputs = { self, ... }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Simple Rust template";
      };
      fenix = {
        path = ./fenix;
        description = "Simple Fenix a Rust toolchain template";
      };
      uv = {
        path = ./uv;
        description = "Simple Python flake with uv template";
      };
      c = {
        path = ./c;
        description = "Simple C flake";
      };
    };
  };
}
