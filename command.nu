export def nixos-switch [
  name: string
  build_log_level: string
] {

  # output build debug log
  if "debug" == $build_log_level {
    # show details via nix-output-monitor
    nom build $".#nixosConfigurations.($name).config.system.build.toplevel" --show-trace --verbose
    nixos-rebuild switch --use-remote-sudo --flake $".#($name)" --show-trace --verbose
  } else {
    nixos-rebuild switch --use-remote-sudo --flake $".#($name)"
  }
}
