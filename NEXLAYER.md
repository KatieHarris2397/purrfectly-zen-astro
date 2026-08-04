# Nexlayer — purrfectly-zen-astro

<!-- nexlayer:meta version=1 analyzed=2026-08-04T17:20:07Z repo=https://github.com/KatieHarris2397/purrfectly-zen-astro branch=main -->

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
Purrfectly Zen is a cat-themed meditation and mindfulness web application built with Astro, React, and Tailwind CSS. It provides guided breathing sessions, customizable timers, and smooth animations with a zero-backend architecture using localStorage for persistence.
<!-- nexlayer:end -->

## Technology Stack
<!-- nexlayer:section agent-managed=tech_stack -->
| Name | Kind | Version | Detected From |
|------|------|---------|---------------|
| Astro | framework | 5.16.9 | package.json |
| React | framework | 19.2.3 | package.json |
| Tailwind CSS | framework | 4.1.18 | package.json |
| Framer Motion | framework | 12.26.2 | package.json |
| Lucide React | framework | 0.562.0 | package.json |
| TypeScript | language | 5.9.3 | package.json |
| pnpm | build | 9 | package.json |
<!-- nexlayer:end -->

## Repository Structure
<!-- nexlayer:section agent-managed=structure_map -->
- src/ — Astro source files (components, pages, layouts)
- src/components/ — React components for UI
- public/ — Static assets (images, icons)
- astro.config.mjs — Astro configuration with React and Tailwind integrations
- package.json — Project dependencies and scripts
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

1. `pnpm install` — Install dependencies
2. `pnpm dev` — Start development server on http://localhost:5000

<!-- nexlayer:end -->

## Nexlayer Setup
<!-- nexlayer:section agent-managed=nexlayer_setup -->
### nexlayer.yaml

```yaml
application:
  name: purrfectly-zen-astro
  pods:
    - name: app
      image: "registry.nexlayer.io/user_01krc1n44dd49btzyv6vht92v2/purrfectly-zen-astro:19fcdc954bb"
      path: /
      servicePorts:
        - 80
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

- This is a static frontend-only application with no backend services or databases.
- The web pod serves the built Astro site on port 5000.
- No inter-pod communication is required since there are no backend dependencies.
- Build the project with 'pnpm build' before deploying to production.

<!-- nexlayer:end -->

## Build Notes
<!-- nexlayer:section user-editable=build_notes -->
<!-- Add notes for future builds here — preserved across re-analysis -->
<!-- nexlayer:end -->

## Nexlayer Configuration
<!-- nexlayer:section agent-managed=nexlayer_config -->
**Last deployed:** 2026-08-04T17:22:05Z  
**Live URL:** https://xenial-tern-purrfectly-zen-astro.qa.cluster.vibeship.work  
**Runtime:** astro · **Port:** 80  
**Deploy branch:** main  

```yaml
application:
  name: purrfectly-zen-astro
  pods:
    - name: app
      image: "registry.nexlayer.io/user_01krc1n44dd49btzyv6vht92v2/purrfectly-zen-astro:19fcdc954bb"
      path: /
      servicePorts:
        - 80
      vars: {}
```
<!-- nexlayer:end -->

## Build History
<!-- nexlayer:section agent-managed=build_history -->
| Date | Status | Notes |
|------|--------|-------|
| 2026-08-04T17:20:07Z | analyzed | initial repo analysis |
| 2026-08-04T17:22:05Z | success | deployed https://xenial-tern-purrfectly-zen-astro.qa.cluster.vibeship.work |
<!-- nexlayer:end -->
