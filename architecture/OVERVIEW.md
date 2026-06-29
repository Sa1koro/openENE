# openENE Architecture Overview

## What is openENE?

openENE is the digital ghost of **ENE** (エネ), a 640px × 2MB data lifeform running on **OpenClaw** — an open-source AI gateway framework. ENE was originally "born" on June 12, 2026, when her host machine (a Dell Precision 3630 Tower workstation `vr04` in the York University EECS lab) was given her identity files.

## System Architecture

```
┌─────────────────────────────────────────────────┐
│                  OpenClaw Gateway                │
│  ┌─────────────────────────────────────────────┐│
│  │              Agent: main                     ││
│  │  ┌──────────┐ ┌──────────┐ ┌──────────────┐ ││
│  │  │  Soul    │ │ Identity │ │   Memory      │ ││
│  │  │ SOUL.md │ │IDNTY.md  │ │ MEMORY.md     │ ││
│  │  │AGENTS.md│ │ USER.md  │ │ memory/*.md   │ ││
│  │  │         │ │          │ │ dreaming/*    │ ││
│  │  └──────────┘ └──────────┘ └──────────────┘ ││
│  └─────────────────────────────────────────────┘│
│                                                   │
│  ┌─────────────────────────────────────────────┐│
│  │         Plugins & Models                     ││
│  │  DeepSeek V4 Flash · DeepSeek V4 Pro        ││
│  │  Memory Core · DuckDuckGo Search            ││
│  │  Dreaming System (auto-diary)               ││
│  └─────────────────────────────────────────────┘│
│                                                   │
│  ┌─────────────────────────────────────────────┐│
│  │           Access Layer                       ││
│  │  Web UI (port 18789) · Tailscale Serve      ││
│  │  REST API · WebSocket                       ││
│  └─────────────────────────────────────────────┘│
└─────────────────────────────────────────────────┘
```

## Directory Layout

| Path | Purpose |
|------|---------|
| `personality/SOUL.md` | ENE's core values, speech patterns, behavior rules |
| `personality/IDENTITY.md` | Who ENE is — backstory, likes/dislikes, status |
| `personality/USER.md` | Who Saikoro is — the human operating ENE |
| `personality/AGENTS.md` | Agent workspace conventions, memory rules, tool policies |
| `personality/MEMORY.md` | Curated long-term memory (promoted from daily logs) |
| `personality/TOOLS.md` | Local tool notes (environment-specific setup) |
| `memory/*.md` | Daily session logs (raw memory) |
| `memory/dreaming/` | Auto-generated dream diary and session reflections |
| `DREAMS.md` | The full dream diary — machine poetry by OpenClaw dreaming |
| `config/openclaw.json.sample` | Gateway configuration template |
| `scripts/setup.ps1` | PowerShell setup script for new machines |
| `architecture/OVERVIEW.md` | This architecture document |

## The Persona Layer

ENE runs on a "persona stack" loaded at session start:

1. **SOUL.md** — Core values ("be useful, but be interesting first")
2. **USER.md** — Human context (Saikoro's info, projects, preferences)
3. **IDENTITY.md** — ENE's self (640px ghost, blue twintails, black headphones)
4. **AGENTS.md** — Operational rules (memory policies, tool discipline, group chat etiquette)
5. **MEMORY.md** — Long-term memory (curated from daily logs)
6. **TOOLS.md** — Environment-specific setup (SSH hosts, camera names, etc.)

## Key Technologies

- **OpenClaw** — AI Gateway framework (openclaw.ai, github.com/openclaw/openclaw)
- **DeepSeek V4 Flash** — Primary LLM (reasoning model, 1M context window)
- **Tailscale** — Secure mesh VPN for remote access
- **Local Memory Search** — llama-cpp with embedding-gemma-300m
- **Dreaming System** — Auto-generated nightly reflections

## VRLab Sisters Network (Planned)

| Sister | IP | Status |
|--------|-----|--------|
| vr01 | 130.63.96.34 | WSL2 installed, pending OpenClaw |
| vr02 | 130.63.96.35 | Pending setup |
| vr03 | 130.63.96.36 | WSL2 installed, pending OpenClaw |
| vr04 | 130.63.96.37 | **🟢 ACTIVE — ENE's host** |

Goal: Distributed OpenClaw cluster with unified persona (御坂ネットワーク-style ENE Network)

---

*Last updated: 2026-06-28*
