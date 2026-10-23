# Loop Lab 0.2.0 release verification

2026-10-23, AILANG v0.54.18. Fresh clone of release commit
`a270a3b05fe2f67153a0a90b8b93353a8ff93ba5`, with no sibling producer checkout.
The manifest/portable lock consume the published registry `sunholo/audio@0.3.0`.
`ailang lock --check`, `make verify` and `server.fixtures()` all completed successfully.
This subsequent evidence-only commit changes no application code or manifest.

| Check / quality section | Observed result |
|---|---|
| Compile | 5 files pass |
| Contracts | 3/6 verified, 3 unsupported-encoding skips, 0 refuted/errors, 1 uncontracted generator |
| Interface | 11 signatures, v2 `9bab335ab4070639a5303dcef2a337045b6d91b389c4b9b70fe9710efa82ddce` |
| Effects | Declared max [FS, IO], rank FS |
| Release | Feature, nonempty 0.2.0 changelog |
| Docs | AGENT.md and ai_summary present; 2 exports covered |
| Style | 6/7 exports pure |
| Native tests / smoke | 10/10 tests, 0 skipped; smoke passes |
| Node tests | 45/45, 0 skipped |
| Python HTTP/planner tests | 6/6 pass |
| Fixtures | Four original mono PCM16 WAVs, each 16 kHz, 128,000 frames, 256,044 bytes |
| Gates / badges | No gates; PUB016 (3 unproved), PUB011 (1 uncontracted) |

[quality.json](quality.json) is the actual fresh-clone quality report. Proofs use
mathematical Real/Int; machine arithmetic equivalence is not established. Generator
uses the evaluator with FS/IO budgets. Raw/private recordings and generated WAVs
are excluded from the repository.

Hosted Actions run 40021055803 did not start any steps: GitHub reported failed
account payments or an insufficient spending limit. This is local release evidence,
not a hosted CI pass. Browser fakes/software tests are not physical audio evidence.
The prior runner-v2 Firefox 100-handoff/30-minute soak remains historical; this
release does not claim a new runner-v3 soak or physical latency measurement.
