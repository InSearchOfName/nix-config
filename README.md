# nixos-config

Personal NixOS configuration (flake, GNOME, Home Manager).

## Layout

```
flake.nix                 inputs and the `nixos` system definition
hosts/nixos/              host-specific config and hardware scan
modules/nixos/            system modules (boot, desktop, networking, ...)
home/                     Home Manager config (shell, git, librewolf)
```

## Apply

```bash
sudo nixos-rebuild switch --flake .#nixos
```

## Secrets

Nothing secret lives in this repo. Do not commit passwords, tokens or
private keys; use `sops-nix` or `agenix` if secrets are ever needed.
