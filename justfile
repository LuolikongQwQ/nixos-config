set shell := ["bash", "-c"]

show-profile:
        nix profile history --profile /nix/var/nix/profiles/system

hmg-nixos-laptop_switch:
        nh os switch --hostname fulanawa-nixos .

hmg-nixos-laptop_test:
        nh os test --hostname fulanawa-nixos . -- --show-trace

update:
        nix flake update

update-lock name:
        nix flake lock --update-input {{name}}

nixos-clean clean:
	sudo nh clean {{clean}} --keep-since 7d --keep 8
