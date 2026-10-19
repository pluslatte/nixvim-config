{ lib, ... }:
let
  files = builtins.attrNames (builtins.readDir ./.);
  nixFiles = builtins.filter (
    name: name != "default.nix" && lib.hasSuffix ".nix" name
  ) files;
in
{
  imports = map (name: ./. + "/${name}") nixFiles;
}
