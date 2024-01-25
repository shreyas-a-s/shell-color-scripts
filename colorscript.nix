with import <nixpkgs> {};

runCommand "colorscript" {
  src = ./colorscript.sh;
  buildInputs = [ bash makeWrapper ];
} ''
  mkdir -p $out/bin
  cp $src $out/bin/colorscript
  chmod +x $out/bin/colorscript
''
# Source: https://discourse.nixos.org/t/usr-local-bin-equivalent-in-nixos-filesystem/3776/7
