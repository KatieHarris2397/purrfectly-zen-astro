# Nexlayer working build fix

This file is the authoritative, pinned build solution for this repo. Nexlayer uses it verbatim on every run and will not override it. If a future build with this fix fails, Nexlayer appends/updates it rather than regenerating.

## Fixed Dockerfile

```dockerfile
FROM mirror.gcr.io/library/node:22-alpine AS builder

# Install pnpm 9.x (matches packageManager in package.json)
RUN npm install -g pnpm@9

WORKDIR /app

# Copy configuration files first to leverage cache
COPY package.json pnpm-lock.yaml .npmrc* ./

# Install dependencies with pnpm 9, allowing build scripts for native modules
# (sharp, esbuild, @parcel/watcher need their postinstall scripts to run)
# pnpm 9.x runs lifecycle scripts by default; add explicit approval via config
RUN pnpm config set enable-pre-post-scripts true && pnpm install --no-frozen-lockfile

# Copy the rest of the application
COPY . .

# Set environment variables to bypass common build hurdles
ENV NODE_ENV=production
ENV NODE_OPTIONS="--max-old-space-size=8192"

# Build the Astro project (static output)
RUN pnpm run build

# --- Runtime stage: serve static files with nginx ---
FROM mirror.gcr.io/library/nginx:alpine

# Copy built static site from builder stage
COPY --from=builder /app/dist /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]

```

## Fixed nexlayer.yaml

```yaml
application:
  name: purrfectly-zen-astro
  pods:
    - name: app
      image: "# filled by pipeline"
      path: /
      servicePorts:
        - 80
      vars: {}

```
