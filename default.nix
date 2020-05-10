{ pkgs ? import <nixpkgs> {} }:
with pkgs;
let py = python3Packages; in
py.buildPythonPackage {
	name = "my-borg";
	propagatedBuildInputs = [ borgbackup rclone.bin ];
	src = nix/local.tgz;
	# developmentPrefix = "nix/shell";
}
