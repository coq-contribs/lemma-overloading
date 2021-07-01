# This file was generated from `meta.yml`, please do not edit manually.
# Follow the instructions on https://github.com/coq-community/templates to regenerate.

# *However*, you may copy paste it to `config.nix`
# in the same subdirectory .nix and extend it as needed.
# Note that this would completely deactivate this file.

{
  ## DO NOT CHANGE THE format
  format = "1.0.0";
  ## unless you made an automated or manual update
  ## to another supported format.

  ## The attribute to build, either from nixpkgs
  ## of from the overlays located in `.nix/coq-overlays`
  attribute = "lemma-overloading";

  ## If you want to select a different attribute
  ## to serve as a basis for nix-shell edit this
  # shell-attribute = "lemma-overloading";

  ## Maybe the shortname of the library is different from
  ## the name of the nixpkgs attribute, if so, set it here:
  pname = "lemma-overloading";

  ## Lists the dependencies, phrased in terms of nix attributes.
  ## No need to list Coq, it is already included.
  ## These dependencies will systematically be added to the currently
  ## known dependencies, if any more than Coq.
  ## /!\ Remove this field as soon as the package is available on nixpkgs.
  ## /!\ Manual overlays in `.nix/coq-overlays` should be preferred then.
  buildInputs = [ "mathcomp-ssreflect" ];

  ## Indicate the relative location of your _CoqProject
  ## If not specified, it defaults to "_CoqProject"
  coqproject = "_CoqProject";

  ## Select a bundle to build by default in the following `bundles` set
  ## It will be used when typing nix-shell or nix-build without argument
  ## defaults to "default"
  default-bundle = "default";
  bundles."default" = {};

  ## write one `bundles.name` attribute set per
  ## alternative configuration, they can be used to
  ## compute several ci jobs as well
  bundles.default = {

  ## You can override Coq and other Coq coqPackages
  ## through the following attribute
  # coqPackages.coq.override.version = "8.11";

  ## In some cases, light overrides are not available/enough
  ## in which case you can use either
  # coqPackages.<coq-pkg>.overrideAttrs = o: <overrides>;
  ## or a "long" overlay to put in `.nix/coq-overlays
  ## you may use `nix-shell --run fetchOverlay <coq-pkg>`
  ## to automatically retrieve the one from nixpkgs
  ## if it exists and is correctly named/located

  ## You can override Coq and other Coq coqPackages
  ## throught the following attribute
  ## If <ocaml-pkg> does not support lights overrides,
  ## you may use `overrideAttrs` or long overlays
  ## located in `.nix/ocaml-overlays`
  ## (there is no automation for this one)
  #  ocamlPackages.<ocaml-pkg>.override.version = "x.xx";

  ## You can also override packages from the nixpkgs toplevel
  # <nix-pkg>.override.overrideAttrs = o: <overrides>;
  ## Or put an overlay in `.nix/overlays`

  ## you may mark a package as a CI job as follows
  #  coqPackages.<another-pkg>.ci.job = "test";
  ## It can then be built throught
  ## nix-build --argstr ci "default" --arg ci-job "test";

  };
}
