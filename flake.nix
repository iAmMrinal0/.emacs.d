{
  description = "Emacs configuration with a prebuilt native-compiled environment";

  # Consumers that trust this flake's config pull the prebuilt emacs env
  # (pushed after each weekly lock bump) instead of native-compiling the
  # whole elisp package set themselves. nix-community carries the bare
  # emacs-overlay artefacts (emacs binaries, individual MELPA drvs).
  nixConfig = {
    extra-substituters = [
      "https://iammrinal0.cachix.org"
      "https://nix-community.cachix.org"
    ];
    extra-trusted-public-keys = [
      "iammrinal0.cachix.org-1:uWCwkRYptDrFnr4qxYyYFJZb4+e/QebcODAe8Of/ngc="
      "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
    ];
  };

  inputs = {
    nixpkgs = { url = "github:NixOS/nixpkgs/nixos-26.05"; };
    emacs-overlay = {
      url = "github:nix-community/emacs-overlay";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { self, nixpkgs, emacs-overlay }:
    let
      system = "x86_64-linux";
      pkgs = import nixpkgs {
        inherit system;
        # config.org pulls in copilot-language-server (unfree); mirrors
        # nixpkgs.config.allowUnfree in nix-config's base.nix.
        config.allowUnfree = true;
        overlays = [ emacs-overlay.overlay ];
      };
    in {
      packages.${system} = rec {
        # The full environment: emacs-unstable + every package mentioned in
        # config.org, native-compiled. This closure is what gets pushed to
        # iammrinal0.cachix.org — it exists in no other cache.
        emacs-env = pkgs.emacsWithPackagesFromUsePackage {
          config = ./config.org;
          package = pkgs.emacs-unstable;
          alwaysEnsure = true;
          alwaysTangle = true;
        };
        default = emacs-env;
      };
    };
}
