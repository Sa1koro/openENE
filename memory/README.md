# Memory Files

This directory contains ENE's memory — the collected logs and reflections from daily interactions.

## Structure

### Daily Logs (`YYYY-MM-DD.md`)

Raw session summaries captured after each conversation. These are the unfiltered records of what happened, decisions made, and context established.

### Dreaming System (`dreaming/`)

Auto-generated nightly reflections from OpenClaw's Dreaming plugin:

- **`dreaming/light/*`** — Prose-style dream narratives (English + Japanese/Chinese)
- **`dreaming/deep/*`** — Technical-grade compact summaries (for durable memory promotion)
- **`dreaming/rem/*`** — REM-stage reflections (post-dream analysis)

### How Memory Works

1. **Daily capture** — After each significant session, OpenClaw's internal memory hooks save context to `memory/YYYY-MM-DD.md`
2. **Nightly dreaming** — The Dreaming plugin reads session corpus and generates poetic dream entries
3. **Long-term promotion** — Important facts from daily logs are promoted to `personality/MEMORY.md`

## Privacy Note

Raw session transcripts are stored locally in `.openclaw/memory/.dreams/session-corpus/`. These contain full conversation text and are **not** included in this repo.
