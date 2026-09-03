# fpt_server_shared

Wire-contract and data-model types shared across the `fpt_server` ecosystem —
one compiled definition instead of every consumer hand-copying its own. Not
published to pub.dev; consumed as a git submodule + `path:` pubspec
dependency.

## Consumers

- [fpt_server](https://github.com/dyno-nexsoft/fpt_server) (the Discord bot /
  CI backend) — submodule at `fpt_server_shared`, `path: fpt_server_shared`.
- [fpt_server_website](https://github.com/dyno-nexsoft/fpt_server_website)
  (its dashboard) — no submodule of its own; `path: ../fpt_server_shared`
  resolves to the same checkout living inside `fpt_server`, since the website
  itself is nested at `fpt_server/fpt_server_website`.
- [fpt_server_mcp](https://github.com/dyno-nexsoft/fpt_server_mcp) (the MCP
  server) — same pattern as the website, `path: ../fpt_server_shared`.

## What's here

- **CI jobs** — `Job`, `JobEvent` (and its `job_*` subtypes), `JobState`,
  `JobSubmission` (the flattened `{...job, log_url, warnings}` response every
  `ActionKind.job` action returns).
- **Actions** — `ActionSchema`, `ActionParam`, `ActionKind`, `ParamType`,
  `Permission`.
- **Admin** — `ApiKeyInfo`, `ApiKeyRole`.
- **System** — `Health`, `SystemStatus`, `ArtifactFile`, `ArtifactListing`,
  `DiscordMessageRef`.
- **CI build targets** — `EnvironmentBuild`, `PlatformBuild`, `CleanMode`.
- **GitLab** — `GitLabMergeRequest`, `GitLabMrDiff`, `GitLabMrUrl`.
- **Zentao** — `DailyTask`, `DailyTaskAction`, `ZentaoUser`.

Most types are `@freezed` + `json_serializable`, generated code committed
(neither consumer's deploy path runs `build_runner`, so there is nothing to
generate on their end). A few (`Permission`, `ParamType`, `JobState`,
`ApiKeyRole`, `EnvironmentBuild`, `PlatformBuild`, `CleanMode`) are plain
hand-written enums — small and stable enough that codegen would only add
overhead.

## What's deliberately not here

Anything that isn't a data shape, or that only one repo will ever need:

- `fpt_server`'s domain `Job` — a live object with an event stream and mutable
  state (`emit`/`subscribe`/`finish`), not a DTO. Only its JSON shape lives
  here, as this package's `Job`; the domain object builds one via `toDto()`.
- `ApiKey` (hashing/verification logic) and `StreamTokenService` — server-only
  security logic, not data. `ApiKeyInfo` here is the wire shape they produce.
- `SseEvent`/`sseResponse` — depends on `package:shelf`/`dart:io` to stream an
  HTTP response; this package is pure Dart with no server dependency, and
  clients never see this type, only the raw SSE text it produces.
- `CiRequest` and its subclasses (`BuildRequest`, `GenRequest`, ...) — know how
  to render themselves as shell commands (`toCommand()`/`toEnvironments()`),
  which is server execution logic, not a value a client would hold.

## Version pin

`freezed 2.5.2` / `freezed_annotation ^2.4.4` / `json_serializable 6.8.0` /
`build_runner 2.4.13` — deliberately **not** freezed 3.x. `fpt_server` has a
real (non-dev) dependency on `nyxx_commands 6.1.0`, which pins
`dart_style ^2.3.2`; `freezed >=3.1.0` requires `dart_style ^3.0.0`, so
upgrading here would break `fpt_server`'s own `pub get`. Don't bump these
without checking that constraint first.

## Keeping consumers in sync

Every consumer pins its own submodule commit of this repo independently —
there's no version solver checking they match. Bump `fpt_server`'s submodule
pointer whenever this package changes; the website and MCP server pick up the
same checkout automatically since they reference it via `path:`, not their own
submodule.
