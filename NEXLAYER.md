# Nexlayer — purrfectly-zen-astro

<!-- nexlayer:meta version=1 analyzed=2026-06-10T18:52:03Z repo=https://github.com/KatieHarris2397/purrfectly-zen-astro branch=main -->

> **For AI agents (Claude Code, Cursor, Gemini CLI, Copilot):**
> This file is the **project context** for this Nexlayer deployment — tech stack, env vars, secrets, live URL.
> For full platform detail (nexlayer.yaml schema, Dockerfile rules, CI/CD, task recipes) read **`nexlayer.skills`** in this repo.
>
> **Critical rules (full detail in `nexlayer.skills`):**
> - Inter-pod refs: `${podName:port}` only — never `localhost` or bare hostnames
> - Docker Hub images: prefix with `mirror.gcr.io/library/` — bare tags fail on the cluster
> - Secrets: set in the Nexlayer dashboard — never commit to `nexlayer.yaml` or Dockerfile
>
> **This file:** `agent-managed` sections update automatically. `user-editable` sections (Local Development Setup, Nexlayer Deployment Plan, Build Notes) are yours — preserved across re-analysis.

## Project Summary
<!-- nexlayer:section agent-managed=project_summary -->
Purrfectly Zen is a cat-themed mindfulness and meditation web application featuring guided breathing sessions and interactive timers, built as a lightweight client-side experience.
<!-- nexlayer:end -->

## Technology Stack
<!-- nexlayer:section agent-managed=tech_stack -->
| Name | Kind | Version | Detected From |
|------|------|---------|---------------|
| Astro | framework | 5.16.9 | package.json |
| React | framework | 19.2.3 | package.json |
| Tailwind CSS | framework | 4.1.18 | package.json |
| Framer Motion | tool | 12.26.2 | package.json |
| TypeScript | language | 5.9.3 | package.json |
| Node.js | language | >=20 | package.json |
<!-- nexlayer:end -->

## Repository Structure
<!-- nexlayer:section agent-managed=structure_map -->
- public/ — Static assets and images
- src/ — Astro components and React logic
- astro.config.mjs — Astro framework configuration
<!-- nexlayer:end -->

## External Services Required
<!-- nexlayer:section agent-managed=external_deps -->
_No external services detected._
<!-- nexlayer:end -->

## Local Development Setup
<!-- nexlayer:section user-editable=local_setup -->
### Prerequisites

- Node.js >= 20
- pnpm >= 9

### Steps

1. `pnpm install` — Install project dependencies
2. `pnpm run dev` — Start the Astro development server on http://localhost:5000

<!-- nexlayer:end -->

## Nexlayer Setup
<!-- nexlayer:section agent-managed=nexlayer_setup -->
### nexlayer.yaml

```yaml
application:
  name: pure-eagle-purrfectly-zen-astro
  pods:
    - name: app
      image: "registry.nexlayer.io/user_01kna6j8vrcfj9q0wjtq5qsq3n/purrfectly-zen-astro:19f709eb6ab"
      path: /
      servicePorts:
        - 4321
      vars: {}
```
<!-- nexlayer:end -->

## Nexlayer Deployment Plan
<!-- nexlayer:section user-editable=deployment_plan -->
### Pod Topology

| Pod | Image | Port | Role |
|-----|-------|------|------|
| web | mirror.gcr.io/library/node:22-alpine | 5000 | web |

### Deployment notes

- Application is zero-backend and uses localStorage for persistence, requiring only a single web pod.
- Web pod is configured for port 5000 as specified in the README.

<!-- nexlayer:end -->

## Build Notes
<!-- nexlayer:section user-editable=build_notes -->
<!-- Add notes for future builds here — preserved across re-analysis -->
<!-- nexlayer:end -->

## Nexlayer Configuration
<!-- nexlayer:section agent-managed=nexlayer_config -->
**Last deployed:** 2026-07-17T15:09:46Z  
**Live URL:** https://kitbear-studio-pure-eagle-purrfectly-zen-astro.cloud.nexlayer.ai  
**Runtime:**  · **Port:** auto-detected  
**Deploy branch:** main  

```yaml
application:
  name: pure-eagle-purrfectly-zen-astro
  pods:
    - name: app
      image: "registry.nexlayer.io/user_01kna6j8vrcfj9q0wjtq5qsq3n/purrfectly-zen-astro:19f709eb6ab"
      path: /
      servicePorts:
        - 4321
      vars: {}
```
<!-- nexlayer:end -->

## Build History
<!-- nexlayer:section agent-managed=build_history -->
| Date | Status | Notes |
|------|--------|-------|
| 2026-07-17T15:08:15Z | analyzed | initial repo analysis |
| 2026-07-17T15:09:46Z | success | deployed https://kitbear-studio-pure-eagle-purrfectly-zen-astro.cloud.nexlayer.ai |
<!-- nexlayer:end -->


