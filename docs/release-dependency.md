# Released audio dependency

Loop Lab 0.2.0 consumes the published `sunholo/audio@0.3.0` registry package through
an exact manifest/portable-lock pin. Neither a sibling producer checkout nor a
prerelease Git reference is required for normal builds.

Audio content identity:
`sha256:a39b7372488e4fe9881f065efcd1a97594d6d6f1b2f36f98e569c0cd0f1f6874`.
The package's interface-v2 is
`e323556e6a947daaa5af0d4dfd9474b06bc84a041ba381803affb10d587cc730`.

The extraction bootstrap previously used producer revision
`93314fc581a7ee2fefdc82392a92228f8b01a2dd`. That is historical provenance;
the committed release manifest/lock no longer depend on it.

Run `ailang lock` and `make verify` from a clean clone to resolve and validate the
registry consumer. Local co-development may explicitly use a temporary path
dependency; do not commit machine-specific paths or vendor the library here.
Generic DSP changes belong upstream in ailang-packages.
