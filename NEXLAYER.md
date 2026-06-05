# Nexlayer — purrfectly-zen-astro

<!-- nexlayer:meta version=1 analyzed=2026-06-05T18:38:03Z repo=https://github.com/KatieHarris2397/purrfectly-zen-astro branch=main -->

## Project Summary
<!-- nexlayer:section agent-managed=project_summary -->
Purrfectly Zen is a cat-themed meditation and mindfulness web application featuring guided sessions and breathing techniques. It is a lightweight frontend project using Astro and React with no backend requirement.
<!-- nexlayer:end -->

## Technology Stack
<!-- nexlayer:section agent-managed=tech_stack -->
| Name | Kind | Version | Detected From |
|------|------|---------|---------------|
| Astro | framework | 5.16.9 | package.json |
| React | framework | 19.2.3 | package.json |
| Tailwind CSS | tool | 4.1.18 | package.json |
| TypeScript | language | 5.9.3 | package.json |
| Framer Motion | tool | 12.26.2 | package.json |
<!-- nexlayer:end -->

## Repository Structure
<!-- nexlayer:section agent-managed=structure_map -->
- src/ — Astro project source files including components and pages
- public/ — Static assets including images
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
- npm or pnpm

### Steps

1. `npm install` — Install project dependencies
2. `npm run dev` — Start development server on http://localhost:5000

<!-- nexlayer:end -->

## Nexlayer Deployment Plan
<!-- nexlayer:section user-editable=deployment_plan -->
### Pod Topology

| Pod | Image | Port | Role |
|-----|-------|------|------|
| web | mirror.gcr.io/library/node:22-alpine | 4321 | web |

### Deployment notes

- Application is a static/hybrid site with zero backend requirements (uses localStorage).
- Single pod deployment since there is no database or worker component.

<!-- nexlayer:end -->

## Build Notes
<!-- nexlayer:section user-editable=build_notes -->
<!-- Add notes for future builds here — preserved across re-analysis -->
<!-- nexlayer:end -->

## Nexlayer Configuration
<!-- nexlayer:section agent-managed=nexlayer_config -->
**Last deployed:** 2026-06-05T18:42:59Z  
**Live URL:** https://kitbear-studio-pure-eagle-purrfectly-zen-astro.cloud.nexlayer.ai  
**Runtime:** astro · **Port:** 4321  
**Deploy branch:** main  

```yaml
application:
  name: pure-eagle-purrfectly-zen-astro
  pods:
    - name: app
      image: "# filled by pipeline"
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
| 2026-06-05T18:38:03Z | analyzed | initial repo analysis |
| 2026-06-05T18:42:59Z | success | deployed https://kitbear-studio-pure-eagle-purrfectly-zen-astro.cloud.nexlayer.ai |
<!-- nexlayer:end -->
