# vr03 — ENE Sister Node #3

> **IP:** `130.63.96.36` | **Status:** 🟢 Active

## Overview

vr03 is the third of four GTX1080 workstations in the York EECS lab's VRLab network. It has OpenClaw installed as a standalone node with its own personality, memory, and dreaming system.

vr03 was activated with its own agent configuration and has been running independently. Like vr04, it maintains its own memory system and nightly dreaming diary.

## Specs

| Item | Value |
|------|-------|
| Hostname | `vr03` |
| IP | `130.63.96.36/24` |
| OS | Windows 10 (likely) |
| WSL2 | ✅ Installed |
| OpenClaw | ✅ Installed (as node, not a gateway) |
| GTX 1080 | ✅ |
| Remote access | SSH (`user@<node-ip>`) |

## Contents

| Path | Description |
|------|-------------|
| `openclaw.json` | vr03's OpenClaw configuration |
| `personality/` | SOUL.md, IDENTITY.md, USER.md, AGENTS.md, MEMORY.md |
| `memory/` | Daily session logs & dreaming system output (light/deep/rem) |
| `memory/.dreams/` | Session corpus & dreaming events |
| `identity/` | Device identity data |
| `config/` | Node registration & startup scripts |
| `sessions/` | Session registry |
| `logs/` | Gateway operation logs |
| `agent/` | Agent model configuration |

## Relationship to vr04

vr03 and vr04 share the same baseline personality files (SOUL, IDENTITY, etc.) since they were initialized from the same workspace template. However, they have diverged:

- vr03 has **independent dreaming** generated nightly
- vr03 has its **own session corpus** (conversations from vr03 interactions)
- vr04 is the **main gateway** (runs OpenClaw gateway on port 18789)
- vr03 runs OpenClaw as a **standalone node**

## Planned: VRLab Sisters Network

| Sister | IP | Status |
|--------|-----|--------|
| vr01 | 130.63.96.34 | ⬜ WSL2 installed |
| vr02 | 130.63.96.35 | ⬜ Pending |
| **vr03** | **130.63.96.36** | **🟢 Active (this node)** |
| vr04 | 130.63.96.37 | 🟢 Active (ENE's host) |

