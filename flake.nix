{
  description = "My Nix templates";

  outputs = { self, ... }: {
    templates = {
      rust = {
        path = ./rust;
        description = "Simple Rust template";
      };
    };
  };
}
