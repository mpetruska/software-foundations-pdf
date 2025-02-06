{ pkgs ? import <nixpkgs> {} }:

with pkgs;
mkShell {
  buildInputs = [
    poppler_utils
    wkhtmltopdf
  ];
}
