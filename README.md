# fpt_server_shared

Wire-contract types shared between [fpt_server](https://github.com/dyno-nexsoft/fpt_server)
(the backend) and [fpt_server_website](https://github.com/dyno-nexsoft/fpt_server_website)
(its dashboard), consumed by both as a git submodule + `path:` pubspec
dependency — not published to pub.dev.

Deliberately hand-written, no codegen: everything here is small enough (a
handful of enums and a five-field DTO) that a generator would only add a
dependency-version coupling between the two consumers for no real benefit.

## What's here

- `JobState` — a CI job's lifecycle state.
- `Permission` — minimum permission an action/principal needs.
- `ParamType` — an action parameter's declared type.
- `Health` — `GET /health`'s response shape.

## What's deliberately not here

`Job`, `JobEvent`, `ActionSchema`, `ArtifactListing`, `SystemStatus` — each
either carries behavior beyond a plain data shape (the server's `Job` is a
live domain object with an event stream, not a DTO) or composes multiple
different response shapes under one client-side model. Unifying those needs
its own design pass, not a rushed addition here.

## Keeping both consumers in sync

Both `fpt_server` and `fpt_server_website` pin their own submodule commit of
this repo independently — there's no version solver checking they match.
Bump both together whenever this package changes.
