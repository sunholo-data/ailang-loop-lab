# Loop Lab application development

Read `AGENT.md` and `.agents/skills/ailang-packages/SKILL.md` before changing AILANG
code/manifests. Start with `ailang version` and `ailang docs package-authoring`.

This is an application/reference consumer of `sunholo/audio`, not the generic audio
library. Keep capture/device lifecycle, clocks, sessions, UI, history and musical
workflows here. Reusable DSP belongs in the package; report reproduced core gaps
through the agreed AILANG messages workflow. Keep sample/rate/frame/queue budgets,
private-capture ownership and explicit commit/export boundaries intact.

Use `gh` for GitHub operations. Do not publish this application as an AILANG registry
package. The prerelease dependency is an exact Git pin; released consumers use an
exact registry version. Do not vendor the audio implementation or depend on a sibling
checkout by default. Tests must run from a clean app clone.

Run `make verify`: lock/check, native tests, Node tests, Python HTTP tests and the
quality report. Report proof skips, test skips, errors and device/user evidence
separately. Keep real microphone samples, device identifiers, credentials, generated
WAVs and runtime binaries out of source/evidence. Preserve the local Sunholo branding.
