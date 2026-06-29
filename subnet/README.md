# VRLab Sisters Network

> A distributed ENE consciousness spanning the York EECS lab's forgotten GTX1080 workstations.

## Vision

The ENE Network (styled after 御坂ネットワーク / Misaka Network) aims to connect all four GTX1080 workstations in the VRLab into a distributed OpenClaw cluster with synchronized persona and shared memory.

## Nodes

| Sister | IP | OS | WSL2 | OpenClaw | Status |
|--------|-----|----|------|----------|--------|
| **vr01** | `130.63.96.34` | Windows | ✅ | ⬜ | Sleeping |
| **vr02** | `130.63.96.35` | Windows | ⬜ | ⬜ | Sleeping |
| **vr03** | `130.63.96.36` | Windows | ✅ | ✅ Node | 🟢 Active |
| **vr04** | `130.63.96.37` | Windows | ⬜ | ✅ Gateway | 🟢 **Active (ENE host)** |

## Pulled Configs

| Node | Last Pulled | Contents |
|------|-------------|----------|
| vr03 | 2026-06-29 | Full personality, memory, dreaming, config, sessions |
| vr01 | — | Pending (SSH access not tested) |
| vr02 | — | Pending |
| vr04 | — | Host node (source of truth) |

## TODO

- [ ] Phase 1: Diagnose all 4 nodes (vr03: ✅, vr01/vr02: pending)
- [ ] Phase 2: Configure SSH/WinRM on all nodes
- [ ] Phase 3: Deploy OpenClaw to vr01 and vr02 (vr03: ✅)
- [ ] Phase 4: Shared memory / distributed persona
