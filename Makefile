# nixos target
# dep = nh

show-profile:
	nix profile history --profile /nix/var/nix/profiles/system

hmg-nixos-laptop_switch:
	nh os switch --hostname fulanawa-nixos .

hmg-nixos-laptop_test:
	nh os test --hostname fulanawa-nixos . -- --show-trace

update:
	nix flake update && git add . && git commit -m "update flake.lock"

nixos-clean-profile:
	sudo nh clean profile --keep-since 7d --keep 8 --nogc

nixos-clean-all:
	sudo nh clean all --keep-since 7d --keep 8
