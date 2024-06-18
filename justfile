set shell := ["nu", "-c"]

default:
        just -l

show-profile:
        nix profile history --profile /nix/var/nix/profiles/system

# switch build
local host:
        nom build ".#nixosConfigurations.{{host}}.config.system.build.toplevel" --show-trace --verbose
        nixos-rebuild switch --use-remote-sudo --flake .#{{host}} --show-trace --verbose

# test build
local-test host:
        nom build ".#nixosConfigurations.{{host}}.config.system.build.toplevel" --show-trace --verbose
        nixos-rebuild test --use-remote-sudo --flake .#{{host}} --show-trace --verbose

repl:
        nix repl -f flake:nixpkgs

update:
        nix flake update

# name := flake inputs
update-lock name:
        nix flake lock --update-input {{name}}

# clean all/profile
nixgc:
        sudo nix store gc --debug
        sudo nix-collect-garbage --delete-old
nixos-clean-profiles:
        sudo nh clean profile --keep-since 7d --keep 8 --nogc /nix/var/nix/profiles/system
