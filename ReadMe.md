# AIDump

A single Luau file that attaches to a running Roblox game, records everything
observable about it, and continuously writes a set of Markdown and JSON files
that describe the game's protocol, code and state — so that an AI can understand
how a game works by reading files, without ever playing it.

Paste `AIDump.lua` into a Roblox executor. There is nothing to configure and no
second file to supply.

```
AIDump/
  AIDump.lua          <- the deliverable, this is the only file
  ReadMe.md           <- this file
```

## What it does

On execution it attaches, then continuously:

1. **Probes the executor** for every capability it uses, and records the result.
2. **Walks the scene**, enumerating instances, properties and attributes.
3. **Captures network traffic** in both directions, with the calling script and
   line for every outgoing call.
4. **Records state**: attribute and value-object transitions, with observed
   ranges and how often each value moved up or down.
5. **Decompiles every client-side script**, preferring the script's own source,
   then the executor's decompiler, then its own bytecode disassembly.
6. **Sweeps the map** in the background so mechanics that need player input get
   triggered, and replays previously observed remote payloads.
7. **Re-renders every document** on a timer, so data survives the session ending.

## Output

```
AIDump/<PlaceId>_<timestamp>/
  00-INDEX.md            Start here: run summary, coverage totals, reading order
  01-ENVIRONMENT.md      Place metadata, executor capability probe
  02-STRUCTURE.md        Instance tree with properties and attributes
  03-REMOTES.md          One row per remote with argument schema and counts
  04-REMOTE-*.md         Per-remote detail (only where traffic was seen)
  05-SCRIPTS.md          Script inventory and call-site cross-reference
  06-STATES.md           Attributes, value objects, numeric argument positions
  07-COVERAGE.md         What was NOT observed, and what could not be observed
  scripts/*.lua          Decompiled source
  scripts/*.disasm.txt   Bytecode disassembly
  scripts/*.meta.json    Per-script decompilation metadata
  raw/*.json             Full-fidelity machine-readable dumps
  logs/aidump.log        Operational log
  logs/sweep.log         Every sweep action, with the reason it was permitted
  logs/selftest.md       Self-test results
```

Suggested reading order for an AI: `07-COVERAGE.md`, then `03-REMOTES.md`, then
`05-SCRIPTS.md`, then `06-STATES.md`. Leave `02-STRUCTURE.md` until last; it is
by far the largest.

## Guarantees

These are enforced in code and checked by grep-based audit:

- **Read-only with respect to game traffic.** Remote calls are observed, never
  blocked, altered, swallowed or reordered. There is no call filter, no block
  list and no connection disabling anywhere in the file.
- **No network access.** Zero outbound requests. Game bytecode never leaves the
  machine and nothing is sent to any third party.
- **No global pollution.** The only global set is the documented entry point.
- **Facts only.** Every generated line is a measurement. Hedging and causal
  wording is rejected by a linter (`Docs.LintLine`) that runs over all generated
  prose; a violating line is replaced with a visible marker rather than dropped
  silently, and the violation is listed in `07-COVERAGE.md`.

## The one exception to read-only

The background sweep **originates** traffic, because mechanics that require
player input are otherwise never observed. It is deliberately timid:

- it never fires a remote that was not already observed firing;
- it only replays payloads previously observed, unmodified;
- only when every argument is a scalar (`string`, `number`, `boolean`);
- never a remote whose name contains `purchase`, `buy`, `trade`, `spend`, `pay`,
  `redeem`, `gift`, `reset`, `delete`, `wipe`, `sell`, `revoke`, `ban`, `kick`,
  `equip`, `unequip`, `claim`, `confirm`, `admin` or `debug`;
- at most one action every 2 seconds, 200 actions per session, one prompt or
  click detector every 60 seconds.

Every attempt is journalled to `logs/sweep.log` with the reason it was permitted,
and summarised in `07-COVERAGE.md`, so its effect on coverage is auditable.
Disable it at any time with `getgenv().AIDump.StopSweep()`.

The only other side effect is that incoming-signal observation adds one observer
connection per observed signal. Those connections receive events but never
suppress, queue or alter them.

## Manual control

```lua
getgenv().AIDump.Export()      -- force an export now
getgenv().AIDump.Status()      -- current counts
getgenv().AIDump.StopSweep()   -- stop the background sweep
getgenv().AIDump.Stop()        -- remove all hooks and do a final export
```

## First run

This file has never been executed outside Roblox, because no Luau runtime was
available where it was written. **Read `logs/selftest.md` first.** It reports how
many checks passed, and in particular whether the bytecode parser handled real
bytecode from your client. If it reports failures, the dump is still produced,
and `07-COVERAGE.md` will name exactly what was lost.

## Known limits

Stated here and in the file header rather than discovered later:

- **A teleport ends the session.** No executor re-injects automatically. The
  final export is flushed before the client goes away.
- **Parallel-Luau actors are not instrumented.** Only the main client is
  observed.
- **No RakNet wire-level capture.** Everything comes from Lua-level hooks.
- **The bytecode parser's layout assumptions were unverified when written.** It
  is built to fail closed — a parse that fails any structural invariant is
  discarded in favour of a hex dump, so a wrong disassembly can never be
  mistaken for a real one.
- **Attribute names created and never changed** are only discovered at the next
  export, so a very short run can miss them.
- **Property coverage** uses executor reflection where available, a
  `ReflectionMetadata.xml` you may place on the filesystem, and finally a
  built-in candidate list. Which tier was used is recorded per instance.

## Provenance

Original implementation informed by these projects. No code was copied.

- **[Dex++](https://github.com/AZYsGithub/DexPlusPlus)** by Chillz — module
  registry idiom, reflection-metadata property model, instance path
  serialisation. Not used: its UI, or its three remote decompiler services,
  which upload game bytecode to third-party servers.
- **[Cobalt](https://gitlab.com/upio/cobalt)** by deivid & upio —
  bidirectional interception architecture, per-remote call aggregation,
  serialisation option vocabulary. Not used: its UI, plugin system, or
  anti-cheat bypass module.
- **[Iridium](https://github.com/ActualMasterOogway/Iridium)** by
  ActualMasterOogway — reference for the Luau bytecode container layout.

Check the upstream licences yourself before redistributing.