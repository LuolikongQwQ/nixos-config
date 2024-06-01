# nixos target
# dep = nh

show-profile:
	nix profile history --profile /nix/var/nix/profiles/system

hmg-nixos-laptop_switch:
	nh os switch --hostname fulanawa-nixos ./flake.nix

hmg-nixos-laptop_test:
	nh os test --hostname fulanawa-nixos ./flake.nix -- --show-trace

nixos-clean-profile:
	sudo nh clean profile --keep-since 7d --keep 8 --nogc

nixos-clean-all:
	sudo nh clean all --keep-since 7d --keep 8
