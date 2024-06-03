set shell := ["bash", "-c"]

show-profile:
        nix profile history --profile /nix/var/nix/profiles/system

# switch leven-r740
hmg-nixos-laptop_switch:
        nh os switch --hostname fulanawa-nixos .

hmg-nixos-laptop_test:
        nh os test --hostname fulanawa-nixos . -- --show-trace

repl:
        nix repl -f flake:nixpkgs

update:
        nix flake update

# name =: flake inputs
update-lock name:
        nix flake lock --update-input {{name}}

# clean all/profile
nixos-clean clean:
	sudo nh clean {{clean}} --keep-since 7d --keep 8
