# mgz-tools

Small, self-contained utilities that MGZ uses in day-to-day engineering work — hardware bring-up, VM wrangling, document conversion, KiCad chores. They are published because they are useful to us and might be useful to you.

## What this repo is, and is not

**It is** a curated set of tools that stand on their own. Each one should make sense on a stranger's laptop, with no account, no network of ours, and no configuration beyond what its own `--help` describes.

**It is not** our infrastructure. The machinery that runs our fleet — coordination, session tooling, network plumbing — lives elsewhere and stays there. Nothing in this repo knows about our hosts, our addresses, or our internal services, and a gate in `.githooks/pre-commit` refuses commits that would change that.

## The tools

| tool | what it does |
|---|---|
| `chain` | run the steps of a procedure in order, stop at the first failure, and record what passed under which versions |
| `step` | the standard steps `chain` calls — parse, version, tests, drift, pushed, clean, exists, absent, push |
| `ver` | assert that every artefact in a directory declares the version it actually is |
| `licence-check` | does this repository say what is in it, and is what is in it compatible? |
| `sheet2md` | a spreadsheet to Markdown, for putting a table in a document |
| `win11-vm` | throwaway Windows VMs as copy-on-write overlays of one immutable base |

Each is a single file. `--help` describes it; `--version` prints `name/major.minor`.

## Status

**Released as-is.** These are working tools, used professionally, and offered without warranty or support commitment. Issues and pull requests are welcome and read; response times are not promised.

Every tool carries its own version (`--version`) and documents itself (`--help`). Where a tool has a test, it sits beside it.

## Licence

Apache License 2.0 — see [LICENSE](LICENSE). It carries an explicit patent grant and an explicit disclaimer of warranty, which is the honest framing for tools released as-is by a company that uses them itself.
