# Audio dependency during extraction

The application currently consumes the audio 0.3 candidate at immutable revision
`93314fc581a7ee2fefdc82392a92228f8b01a2dd` from the public ailang-packages Git
repository. The manifest/lock resolve a package under `packages/audio`; they do not
require an application developer to check out that repository as a sibling.

This is prerelease integration, not a claim that audio 0.3 is registry-published.
Before a released application build, replace that Git dependency with the exact
published registry version, regenerate the lock and run `make verify` from a fresh
clone. Keep the candidate producer revision reachable until that switch is complete.

Local co-development may explicitly use a path dependency in a temporary developer
checkout. Do not commit machine-specific paths or vendor the audio package here.
Generic source changes belong upstream in ailang-packages; consume a new pin/version
and rerun the application compatibility tests.
