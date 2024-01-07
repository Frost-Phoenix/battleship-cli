{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
  buildInputs = [ pkgs.ncurses ];

  shellHook = ''
    export PKG_CONFIG_PATH="${pkgs.ncurses.dev}/lib/pkgconfig:$PKG_CONFIG_PATH"
  '';
}
