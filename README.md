# Naersk Doc Bug

To reproduce:

```
# Use old naersk to build documentation
% nix-build -A hello-good.doc

# Use newnaersk to build documentation
% nix-build -A hello-bad.doc
... fails ...

```
