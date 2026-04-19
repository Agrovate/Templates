{
  description = "My Nix templates";

  outputs = { self, ... }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Simple Rust template";
      };
      rust = {
        path = ./fenix;
        description = "Simple Fenix a Rust toolchain template";
      };
    };
  };
}
