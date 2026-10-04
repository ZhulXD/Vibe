# AIDump — single-file Roblox game documentation exporter

## Goal

One self-contained Luau file that a user pastes into a Roblox executor. It attaches to the running
game, continuously records everything observable about it, and continuously writes a set of
AI-readable documentation files — so an AI can understand the game's mechanics by reading files,
without ever playing the game.

Non-goal: the script must be **read-only with respect to game traffic**. It never blocks, alters,
or replays-with-mutation remote calls.

## Locked decisions

| Decision | Choice |
|---|---|
| Build shape | Clean rebuild, GUI-free, no UI code ported from either source |
| Operation | Fully automatic, zero configuration |
| Lifecycle | Continuous daemon; background sweep loop; incremental self-export; survives teleport |
| Output | Digest Markdown (LLM-sized) + full raw JSON/Lua archive |
| Decompiler | Executor `decompile()` when available; else vendored Iridium disassembler + proto tree. No lifter |
| Inference | **Facts only.** No prose, no causal claims, no confidence scores |
| Code↔protocol | Yes, full cross-reference built from Cobalt's origin/source/line capture |
| Network use | **None.** No HttpGet, no remote decompiler services. Bytecode never leaves the machine |
| GUI | None. Only `StarterGui:SetCore("SendNotification")` for fatal errors |

## Provenance — what is taken from where

| Source | Extracted | Discarded |
|---|---|---|
| **Dex++** `out.lua` (564 KB) | `Lib.ParseXML` (RMD XML parser, lines 3611–3731), `Explorer.GetInstancePath` (2536), `Properties.ValueToString` (11355), `Lib.FormatLuaString` (3521), `env.parsefile` filename sanitizer (14587), the `EmbeddedModules` factory-registry idiom, two-phase-free service wiring | All UI: `Lib` (7272 lines), `Explorer`, `Properties`, `ModelViewer`, `Console`, `ScriptViewer`, `SettingsWindow`, `SaveInstance`. The `remote_blocklist` `__namecall` blocker. All three remote decompiler fallbacks |
| **Cobalt** `Cobalt.luau` (924 KB, wax bundle) | `Utils.CodeGen.Serializer.LuaEncode` (MIT, keep attribution), `Serializer.Instance`, `Utils.Log` call model + spam detection, `Interceptors.Outgoing` (`__namecall` + prototype `hookfunction`), `Interceptors.Incoming` (connection observer + callback detours + connect-hook), `Utils.Hook.Luau` (oth/hookmetamethod/rawset/xpcall cascade), `Utils.CallFilter` (matcher logic only), `Utils.Hook.RakNet.*` (Codec, Constants, 36 Variant decoders, PacketProcessor, InvocationTracker, Lookup), `Spy.Hooks.Luau.Actors` env template, `ExecutorSupport` probes, `SafePack`, `Ratelimiter`, `Connect` | All `Window/**` + `Utils/UI/**` (≈90 modules), `Utils.Anticheats.*` (idx 20/22 — highest-fingerprint code in Cobalt; contributes nothing to documentation), `Utils.Plugins.*`, `Sonner`, `AssetManager`, wax `ObjectTree`/`LineOffsets`/virtual-DOM runtime (replaced by plain registry), `getgenv().Cobalt` globals |
| **Iridium** (github.com/ActualMasterOogway/Iridium) | `Src/init.luau`, `Src/Classes/{Instruction,Instructions,Proto,Upvalue,Hexadecimal}.luau`, `Src/Classes/Constants/*` (9 files), `Src/Luau/{Spec,TypeInfo}.luau`, `Src/Utilities/Buffer.luau` — **~82 KB total** | `.lune/*`, `Build/*`, `Tests/*`, `main.client.luau`, `Src/Deserializer.d.luau` (type defs only) |

Every vendored block gets a banner comment naming the upstream project, file, and commit.

## Architecture

Single file, banner-delimited sections, Dex++'s factory-registry idiom but with a **service
locator** instead of Dex++'s `initDeps`/`initAfterMain` two-phase ceremony (modules only touch other
services at call time, never at factory time — this removes the circular-dependency dance that
forces the two-phase init in both sources).

```lua
local Modules = { ["Name"] = function() ... end, ... }   -- factories, run once, memoized
local Loaded, Loading = {}, {}
local function Req(name)          -- cycle-guarded lazy require
local Service = {}               -- shared service locator, populated by the driver
```

Modules are declared as `local Compat = Req("Compat")` **inside** functions, never at file scope,
so no load-order constraint exists.

### Section layout

```
SECTION 0  Banner / provenance / license notices
SECTION 1  Kernel: registry, service locator, small utils (deepCopy, bounded ring, escapers)
SECTION 2  Vendor.Iridium          (bytecode deserialize + disassemble)
SECTION 3  Vendor.LuaEncode        (value -> Lua source)
SECTION 4  Vendor.Xml              (RMD XML parser)
SECTION 5  Core: Compat, Fs, Log, Reflect, Ser, Paths, Scripts
SECTION 6  Net: LogModel, Outgoing, Incoming, RakNet, Actors
SECTION 7  Decompile
SECTION 8  State
SECTION 9  Docs: Lint, Md, Env, Structure, Remotes, ScriptMap, States, Coverage, Index
SECTION 10 Store, Sweep, Driver
SECTION 11 SelfTest
```

### Module responsibilities

- **Compat** — probes every executor global once (`hookmetamethod`, `getnamecallmethod`,
  `hookfunction`, `getconnections`, `getcallbackvalue`, `getscriptfromthread`, `getfenv`/`setfenv`,
  `isexecutorclosure`, `getnilinstances`, `getscriptbytecode`, `decompile`, `getproperties`,
  `gethiddenproperties`, `getgc`, `getupvalues`, `getconstants`, `oth`, `raknet`, `run_on_actor`,
  `getactors`, `create_comm_channel`, `getactorstates`, `on_actor_state_created`, `newcclosure`,
  `checkcaller`, `getcallingscript`, `setstackhidden`, `trampoline_call`, `getreg`, `compareinstances`,
  `identifyexecutor`, filesystem set, `getcustomasset`). Exposes `Compat.Has(name)` and a report table
  that is emitted verbatim into `01-ENVIRONMENT.md`. Every consumer asks `Compat`, never the globals.
- **Fs** — safe wrappers; `writefile` to a path under `AIDump/<PlaceId>_<ISO>/`; write to temp then
  rename-by-rewrite so a killed daemon never leaves a half-written digest. Fatal-error path if no FS.
- **Log** — console `print` + `logs/aidump.log` with timestamps and levels.
- **Reflect** — property-name resolution chain (see degradation matrix). Owns the embedded
  default-property snapshot used to flag non-default values.
- **Ser** — value → Lua literal. Delegates to `LuaEncode` for general values,
  `Paths` for Instances, `Reflect` for EnumItems. Single entry `Ser.Value(v, opts)`.
- **Paths** — instance → Lua path expression. Uses Cobalt's `Serializer.Instance` semantics
  (service collapse, sibling disambiguation, nil-parent annotation) with Dex++'s `getNil(...)`
  prelude as the fallback resolver.
- **Scripts** — enumerates `LuaSourceContainer`s (`getDescendants` + `getnilinstances`), classifies
  viability (client `RunContext` / `ModuleScript`), computes instance path, tracks per-script
  identity for cross-reference.
- **Net.LogModel** — per-remote record: call counter, per-argument-position type/value aggregator,
  bounded sample ring (first 50 + last 50 distinct shapes), caller-attribution table, listener table,
  timestamped timeline (capped).
- **Net.Outgoing / Net.Incoming** — Cobalt's interception logic, but `Log:Call` only. **No
  `ShouldBlock`, no `Block`, no `Connection:Disable`, no call filters.** Any filtered traffic still
  flows through to the game untouched.
- **Decompile** — per script, first working method wins:
  1. `script.Source` when readable and non-empty
  2. executor `decompile(script)` under `pcall`
  3. `getscriptbytecode(script)` → `Iridium:Deserialize` → `.disasm.txt` + `.meta.json`
  Records the method used and the reason for any failure. Emits nothing silently — an unavailable
  script produces a `.meta.json` with `unavailable_reason`, not an empty file.
- **State** — attribute and `ValueObject` change recorder: distinct values, numeric min/max,
  change count, first/last timestamp. Also tracks *direction of change* as a count
  (`increases`, `decreases`, `unchanged`) — a count, not a claim.
- **Docs.Lint** — fact-discipline linter (see below).
- **Store** — accumulates all facts in memory, renders the whole digest + raw archive on each export
  tick. Re-rendering from the accumulator (rather than appending to files) is what makes exports
  idempotent and merging across teleports trivial.
- **Sweep** — background stimulus loop (safety policy below).
- **Driver** — lifecycle, export scheduling, `queue_on_teleport` re-arm, `PlayerRemoving` handling.
- **SelfTest** — see Validation.

## Output format

Written under `AIDump/<PlaceId>_<YYYY-MM-DDTHH_MM_SSZ>/`, re-created on teleport into the same
PlaceId so a whole session accumulates.

```
00-INDEX.md            Run + executor + capability report, file manifest, coverage totals,
                       explicit statement that the dump contains facts only, known limitations
01-ENVIRONMENT.md      Place metadata, client/place version, JobId, instance count by ClassName,
                       enums actually observed in data, the full Compat probe table
02-STRUCTURE.md        Instance tree; non-default properties flagged where a default is known;
                       attributes with current value; full contents of ValueObjects
03-REMOTES.md          One row per remote: path, class, direction, call count, distinct arg
                       shapes, arg schema summary, handler count, originating scripts
04-REMOTE-<n>.md       Per-remote detail (only for remotes with observed traffic)
05-SCRIPTS.md          Per-script: path, class, RunContext, decompile method, size; which remotes
                       it fires (with line numbers), which it listens to, attributes read/written
06-STATES.md           Attribute/state tables; numeric-arg flows per remote with observed values,
                       min/max, and increase/decrease counts
07-COVERAGE.md         Every remote never observed firing; scripts never observed; attributes never
                       observed changing; untriggered ProximityPrompt/ClickDetector/Touched
                       inventory; instances dropped by budget caps; unavailable capture layers
scripts/<path>.lua     Decompiled source (methods 1-2)
scripts/<path>.disasm.txt   Iridium disassembly + proto tree (method 3)
scripts/<path>.meta.json    Bytecode version, typesversion, proto/upvalue/constant counts,
                            lineinfo presence, local-name availability, method used
raw/instances.json     Full instance tree with all properties
raw/remotes.json       Per-remote aggregates
raw/calls/<remote>.json  Full sample payloads
raw/scripts.json       Script inventory + cross-reference
raw/states.json        Attribute timelines
raw/coverage.json      Machine-readable gap list
logs/aidump.log        Daemon log
logs/selftest.md       Self-test report
```

Markdown escaping: pipes, newlines, backticks and `<`/`>` must be escaped in every table cell —
`Docs.Md.Cell(v)` is the only sanctioned way to write a cell.

### Facts-only discipline

Every emitted line must be an observed value, count, min/max, distinct-type, path, name, timestamp,
or a directly-recorded attribution. Banned in all generated text:

```
likely probably appears appears-to seem seems suggests suggest indicates indicate implies
imply means presumably typically usually inferred inferred- assumption assumed expected
predicted predicted- likely-to presumably- utilized leveraged appears-to
```

Plus causal connectives when used to join two observations (`"so"`, `"therefore"`, `"thus"`,
`"because"`, `"causes"`). `Docs.Lint.Line(text)` returns `nil, violations` and **every** prose line
in every emitter goes through it. Value cells are exempt (a remote genuinely named `BuyItem` must
still be printed), but no emitter may construct a sentence from a value plus a verb.

Co-occurrence is permitted only as a **counted fact** with no causal verb, e.g.
`BuyResult fired 12x; within 200ms of each, attribute Credits changed (12/12)`. Never
`BuyResult updates Credits`.

## Decompiler pipeline detail

Layered, first-success-wins, always records which layer produced the output:

1. `pcall(function() return s.Source end)` — non-empty and length > 0
2. `pcall(decompile, s)` — string result, length > 0
3. `getscriptbytecode(s)` → `Iridium:Deserialize(bytes)`:
   - records `bytecodeVersion`, `typesVersion`, `hasRobloxEnvelope`, `robloxTrailerVersion`
   - emits annotated disassembly: per proto, `pc  OPCODE  A B C  ; comment` with resolved
     constants, upvalue indices, jump targets, and line numbers when `LineInfo` is present
   - emits the constant pool and upvalue table per proto
   - **if deserialization throws** (e.g. a bytecode version newer than vendored Iridium's
     supported 3–9 range — note the upstream test fixtures are labelled v10/v11, so this is a live
     risk): emit `scripts/<path>.meta.json` with `status = "bytecode-unsupported"`, the detected
     version string, and a hex dump of the first 4 KB, and record the script in `07-COVERAGE.md`
     as a known gap. Never emit an empty or silently truncated file.

`Decompile` is defined against a single interface (`Decompile.Script(s) -> Result`) precisely so a
future lifter can be inserted as layer 2.5 without touching the exporters.

## Sweep safety policy

The sweep is automatic (per the zero-config decision) but deliberately conservative, because it
**sends traffic to the server** and a bad replay can corrupt player state or trip server validation.

**Allowed automatically:**
- Character locomotion along a sampled set of waypoints derived from workspace geometry
- `fireproximityprompt` / `fireclickdetector` on discovered prompt objects, at most once per prompt
  per 60 s
- Replay of **previously observed exact payloads only** (never mutated), and only when:
  every argument is a scalar (`string`/`number`/`boolean`), the remote was observed firing at
  least twice, and the remote's name does not match
  `purchase|buy|trade|spend|pay|redeem|gift|reset|delete|wipe|sell|revoke|ban|equip|unequip|claim`
- Global rate limit: at most 1 sweep action per 2 s, and a hard cap of 200 actions per session

**Never automatic:** firing a remote never observed firing; sending a payload not previously
observed; any remote whose name matches the deny list above; anything during a `PlayerRemoving`
or teleport transition.

Everything the sweep sends is appended to `logs/sweep.log` with its justification string, and
`07-COVERAGE.md` lists every stimulus attempted and its outcome, so coverage of the sweep is
itself auditable.

## Degradation matrix

Every row must be implemented and must appear in `01-ENVIRONMENT.md` and `07-COVERAGE.md`.

| Missing | Effect | Degradation |
|---|---|---|
| filesystem (`writefile`) | no output possible | Fatal. `SetCore("SendNotification")` + console, abort |
| `decompile` | no pretty source | Layer 3 (Iridium). Method recorded per script |
| `getscriptbytecode` | no bytecode at all | Script inventory still emitted; each script gets `.meta.json` with `status="no-bytecode-access"`; listed in coverage |
| Iridium parse failure | no disassembly | Hex dump + detected version + coverage entry (see above) |
| `getproperties` | property names unknown | → RMD from disk cache → RMD via network **only if the user already has network and it is enabled**; else curated candidate-name probe list. Always mark the resolution tier in `02-STRUCTURE.md` |
| RMD entirely unavailable | no class metadata | ClassName + probed properties only; default-comparison disabled; coverage entry |
| `hookmetamethod` | no metamethod hook | → `hookfunction` on prototype methods only; reduced direction coverage, recorded |
| `getnamecallmethod` | `__namecall` path dead | Prototype-method hooks only; coverage entry |
| `getconnections` | cannot enumerate incoming listeners | Incoming limited to callback detours; coverage entry |
| `getcallbackvalue` | no incoming invoke capture | Incoming limited to signal connections; coverage entry |
| `getnilinstances` | nil-parented instances missed | Coverage entry |
| `oth` / `raknet` | no alternate hook path / no wire-level capture | Luau hooks only; coverage entry |
| `run_on_actor` / `getactors` | parallel-Lua actor remotes invisible | Coverage entry naming Actor instances that exist but were not instrumented |
| teleport | session restart | `queue_on_teleport` re-arms; same PlaceId ⇒ same output dir ⇒ sessions merge |
| memory pressure | growth | Bounded sample rings everywhere; counters always exact regardless of ring bounds |

## Ordered task list

1. **Skeleton** — banner, `Modules` registry, cycle-guarded `Req`, `Service` locator, driver stub
   that walks `SECTION` banners and reports load order. Verify by loading nothing else.
2. **Vendor.LuaEncode** — port from Cobalt verbatim with MIT attribution. Adapt `Serializer.Instance`
   calls to the new `Paths` module. Must expose `LuaEncode(t, opts) -> string, insertedNil`.
3. **Vendor.Xml** — port Dex++'s `Lib.ParseXML`. Verify against the RMD XML shape.
4. **Vendor.Iridium** — port the 17 files listed above. Rewrite the `require("Iridium")` /
   `require("Iridium/Types")` calls as registry lookups. Strip `Types` type-only exports.
5. **Core.Compat** — full probe table, `identifyexecutor`, report emitter.
6. **Core.Fs** + **Core.Log** — path helpers, temp-then-final write, log levels.
7. **Core.Reflect** — three-tier property resolution + embedded default snapshot (~150 common
   classes, hand-curated). No network path in the default build.
8. **Core.Paths** + **Core.Ser** — `Paths.Of(instance)`, `Ser.Value(v)`,
   `Ser.Property(name, value, classInfo)`.
9. **Core.Scripts** — enumeration, viability classification, path assignment.
10. **Net.LogModel** — aggregation structures and their accessors. Write this before the
    interceptors so it can be unit-tested from synthetic calls with no hooks installed.
11. **Net.Outgoing** — port Cobalt's outgoing logic; strip `ShouldBlock`; keep
    `getcallingfunction`/`getcallingline`/`getcallingsource` and the `BaseLevel` handling for oth
    vs standard hooks.
12. **Net.Incoming** — port Cobalt's incoming logic; strip blocking and connection `Disable`.
13. **Net.RakNet** — port the RakNet tree. Isolate entirely behind `Compat.Has("raknet")`.
14. **Net.Actors** — port the actor env `StringValue` template, `COBALT_ACTOR_DATA` substitution,
    and the `getactorstates` quirks block.
15. **Decompile** — three layers, Result interface, hex-dump degradation.
16. **State** — attribute recorder, direction counters.
17. **Docs.Lint** — banned-word list, connective check, `Line()` gate.
18. **Docs.Md** — escaping, table builder, heading/section helpers. All value emission routes
    through `Md.Cell`.
19. **Docs emitters** — `Env`, `Structure`, `Remotes` (+ per-remote detail), `ScriptMap`, `States`,
    `Coverage`, `Index`, in that order. `Index` last because it summarizes the others.
20. **Store** — accumulator + full re-render per export tick.
21. **Sweep** — waypoint sampling, prompt/clickdetector firing, guarded replay, rate limits,
    `logs/sweep.log`.
22. **Driver** — lifecycle, export interval, teleport re-arm, `PlayerRemoving`, graceful shutdown.
23. **SelfTest** — see below.
24. **Static audit** — grep-based invariants (below), then a first real run reviewed by the user.

## Validation

### Static (runnable in this sandbox; no Lua runtime available here)

- `rg -c 'HttpGet|http_request|syn\.request|fluxus\.request'` → must be **0** (no network, no bytecode
  leaving the machine)
- `rg '_G\.[A-Za-z_]+ *='` → must be **0** (single documented entry point only, via `getgenv()`)
- `rg -c 'AntiCheat|Anticheat|Adonis|Detected'` → must be **0**
- `rg -c 'ShouldBlock|:Block\(|Connection:Disable'` → must be **0** (read-only guarantee)
- Every vendored block has an upstream+commit banner: verify each banner is present
- Module count in the registry matches the section list in this plan
- Total file size recorded as a baseline for regression review

### In-Roblox self-test (`SelfTest.Run()` → `logs/selftest.md`)

There is no local Luau runtime in this environment, so correctness is established by assertions that
execute inside Roblox:

- Every module factory loads under `pcall`; report pass/fail plus the error string
- `Req()` returns non-nil for every registered name; cycle guard does not deadlock
- **LuaEncode validity**: serialize a fixture containing a cycle, a buffer, a NaN, `math.huge`, an
  Instance, and every common datatype; assert `loadstring("return " .. out)` succeeds and that
  re-parsing yields a structurally equal table
- **Path builder**: assert known instances produce the expected path strings (e.g. `workspace`,
  `game:GetService("ReplicatedStorage")`, a duplicate-sibling `:GetChildren()[n]` case)
- **Markdown escaper**: assert pipes/newlines/backticks/angle-brackets are escaped in `Md.Cell`
- **Aggregation math**: feed synthetic calls into `Net.LogModel`; assert exact counts, per-position
  distinct types, numeric min/max, increase/decrease counts, and that ring truncation preserves
  counters
- **Fact lint**: assert `Lint.Line` rejects a known violating string and accepts a clean one
- **JSON validity**: emit each `raw/*.json` payload and assert `HttpService:JSONDecode` accepts it
- **Iridium**: pull bytecode from a live client script (`getscriptbytecode` on a `PlayerScripts`
  descendant), assert `Deserialize` succeeds with `protos > 0`, and report the detected bytecode
  version. If this fails the vendored version is behind the client — report, do not paper over
- **Writer**: write a temp file, read it back, assert byte-identical content

Optional, if the user has `luau` or `lune` locally: run the `SECTION 5–9` modules headlessly
against a mock-Roblox harness for fast iteration without launching a game.

### Human review

First real run: user pastes the file into an executor on a known game, plays for a few minutes, then
checks the digest against what they know. Specifically verify that a remote they know they call
appears in `03-REMOTES.md` with a plausible arg schema, and that its firing script is correctly
attributed in `05-SCRIPTS.md`.

## Risks

| Risk | Mitigation |
|---|---|
| Vendored Iridium behind current client bytecode | Version detection + hex-dump degradation + coverage entry; surfaced loudly in `07-COVERAGE.md` and in the self-test |
| Interception fragility across executors | Layered fallback per capability, all recorded in `01-ENVIRONMENT.md`; teardown-capable so a failed layer does not poison the next |
| `LuaEncode` on hostile/recursive payloads | Already cycle-aware; plus per-value depth and length caps, with truncation explicitly marked in the output |
| Large games ⇒ unusable digest | Hard budgets on `02-STRUCTURE.md` (instance count, depth, property count per instance) with explicit `TRUNCATED` markers and a coverage entry — never a silent cut |
| Memory growth over a long session | Bounded rings; counters always exact; export interval decoupled from capture |
| Global collisions with the running game | No `_G` writes, no monkey-patching except the documented hook points, all state behind the service locator |
| **Licensing** — Dex++ carries a `-- TODO: Remove when open source` marker and Cobalt's license is unverified | Verify licenses before any redistribution. Personal-use analysis is unaffected. Keep full upstream attribution regardless |

## Out of scope

- Any GUI
- Call filtering, blocking, or altering remote traffic
- Anti-cheat detection or bypass
- A Luau bytecode lifter (control-flow → structured source)
- Plugin system, code execution sandboxing, `loadstring` console
- Native/semantic inference of mechanics (explicitly rejected — the AI does the reasoning)