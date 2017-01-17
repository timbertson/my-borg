{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let py = python3Packages; in
py.buildPythonPackage {
	name = "my-borg";
	buildInputs = [ borgbackup ];
}
