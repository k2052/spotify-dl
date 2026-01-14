{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = with pkgs; [
    cargo
    rustc
    pkg-config
    openssl
    alsa-lib
  ];

  nativeBuildInputs = with pkgs; [
    pkg-config
  ];
}
